; pause.g
; called when a print from SD card is paused

M83		; relative extruder moves
G1 E-10 F3600	; retract 10mm of filament
G91 	`	; relative positioning
G1 Z10 F360 	; lift Z by 100mm
G90		; absolute positioning
G1 X0 Y0 F6000	; go to X=0 Y=0
