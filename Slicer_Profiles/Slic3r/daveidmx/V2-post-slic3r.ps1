# Slic3r postprocessing script for RRF 2.0 (Duet)
#
# Configure it by putting the path to the .cmd file
# under "Print Settings" --> "Output options" --> "Post-processing scripts"
#
# What it does:
#
# * Insert a "T0" activation line if one doesn't exist before temperature setting commands
#
# * Rewrite all M104/M140/M109/M190 temperature commands into "G10" temperature commands
#   so that they do not override Duet's standby temperatures.
#   If you edit the print_end.g to disable the "option 1: turn off tool heaters" behavior
#   and instead use "option 2: disable tools and set standby",
#   then manually set a standby temperature before starting the print,
#   when the print is finished it will hold your standby temps. (e.g. 170C hotend, 45C bed)


Param(
    [string]$gcodeFileName
)

Set-StrictMode -Version 'Latest'
$ErrorActionPreference = 'Stop'

$gcodeFileName = [System.IO.Path]::GetFullPath($gcodeFileName)
[string]$tempFileName = "$gcodeFileName~"

$currentTool = '-1'
$printEnded = $false

$reader = [System.IO.File]::OpenText($gcodeFileName)
$writer = [System.IO.File]::CreateText($tempFileName)

$toolRegex = New-Object System.Text.RegularExpressions.Regex '^T(\d+)'
$toolTempRegex = New-Object System.Text.RegularExpressions.Regex '^(M104|M109) S(\d+)'
$bedTempRegex = New-Object System.Text.RegularExpressions.Regex '^(M140|M190) S(\d+)'
$printEndRegex = New-Object System.Text.RegularExpressions.Regex '^M98 P"print_end.g"'

for ($line = $reader.ReadLine(); $line -ne $null; $line = $reader.ReadLine())
{
    $toolMatch = $toolRegex.Match($line)
    if ($toolMatch.Success)
    {
        $currentTool = $toolMatch.Groups[1].Value
        $writer.WriteLine($line)
        continue
    }

    $printEndMatch = $printEndRegex.Match($line)
    if ($printEndMatch.Success)
    {
        $printEnded = $true
        $writer.WriteLine($line)
        continue
    }

    $toolTempMatch = $toolTempRegex.Match($line)
    $bedTempMatch = $bedTempRegex.Match($line)

    if ($printEnded -and ($toolTempMatch.Success -or $bedTempMatch.Success))
    {
        # Don't allow Slic3r to change temperatures after the print_end.g script has run
        $writer.WriteLine("; $line ; postprocess: omitted temperature control line after print_end.g macro")
        continue
    }

    if ($toolTempMatch.Success)
    {
        if ($currentTool -eq '-1')
        {
            # No tool is selected. Activate T0 first.
            $writer.WriteLine('T0 ; postprocess: added default tool activation')
            $currentTool = '0'
        }

        # Change an M104 or M109 tool temp command into a G10 tool temp command. This will preserve the tool's standby temperature.
        $writer.WriteLine("G10 S$($toolTempMatch.Groups[2].Value) ; postprocess: $line")

        if ($toolTempMatch.Groups[1].Value -eq 'M109')
        {
            # M109 is "set and wait". Add an "M116 PX" to wait for temp on this tool.
            $writer.WriteLine("M116 P$($currentTool) ; postprocess: wait for M109 temp")
        }

        continue
    }

    $writer.WriteLine($line)
}

$reader.Dispose()
$writer.Dispose()

[System.IO.File]::Replace($tempFileName, $gcodeFileName, [nullstring]::Value)
