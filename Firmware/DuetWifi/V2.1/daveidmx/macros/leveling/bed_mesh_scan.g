;; This script will perform a repeatable G29 scan, allow DWC to display the results,
;; and then remove the mapping and reset leveling to the mechanical zero.
;; 
;; In order to perform a G29 bed mesh scan with the result values centered on Z0,
;; first we need to re-home the Z-axis based on the inductive probe height.
;; Note that when performing the scan, we need to use the same inductive probe speed
;; as was used for leveling (i.e. islow).
;; Since the inductive probe has a slight delay in triggering based on distance,
;; when probing fast vs. slow it will generate different trigger heights.
;; If instead we "G29" with the opposite probe configuration vs. the "/macros/homing/homezi",
;; the resultant height map would be offset from 0 by the difference in
;; Z activation characteristics. (This script avoids that problem.)
;;
;; The resultant heightmap should be displayed by DWC automatically.
;; If it is not, you can view it by selecting "Show Mesh Grid Heightmap"
;; under the dropdown by "Auto Bed Compensation".

G29 S2                          ; remove any bed mesh compensation currently in play
M98 P"/macros/homing/homezi.g"                 ; switch the Z coordinate space to use inductive Z0
M98 P"/macros/zprobe/use_islow.g"       ; switch back to slow probing to match the /macros/homing/homezi call
G29                             ; perform mesh scan as configured, saving to heightmap.csv
G92 S2                          ; and deactivate compenastion, because we don't want to print with it
M98 P"/macros/homing/homezm.g"                 ; re-home using the mechanical switch
