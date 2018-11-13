; Load filament

G28 X	; home x
G28 Y	; home y

M109 S235  ; set print head temperature and wait

G1 Z15 F12000			;lift nozzle to 15mm
G1 X2.25 Y255.00 F12000		;move to purge bucket

G1 E500 F1200
G1 E400 F300
M84 P3 E0:1		; turn extruder motors off so the user can feed by hand

M109 S190  ; set print head temperature and wait

M98 P"/macros/probe_scripts/goto_nozzle_scrubber_and_scrub.g"		; Scrub Nozzle

G1 Z15 F12000			;lift nozzle to 15mm

M98 P"/macros/probe_scripts/goto_z_switch.g"				; Move to Z Home


	

