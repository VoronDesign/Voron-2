; homeall.g
; called to home all axes

G91				; Relative
;M913 X50 Y50 Z40		; Reduce motor currents in case of collision
G1 Z4 F6000			; Lower bed 4mm
G1 X-235 Y-215 F2000 S1		; Coarse home X and Y
G1 X-235 S1			; Coarse X in case Y homed first
G1 Y-215 S1			; Coarse Y in case X homed first
G1 X2 Y2 F2000			; Move away from the endstops
G1 X-235 F360 S1		; Fine home X
G1 Y-215 F360 S1		; Fine home Y
G90				; Absolute
G1 X115 Y115 F6000		; Move to center of bed
G30 Z-99999			; Single Z-probe at center of bed
G1 Z10				; Set Z to 10mm (i.e. lower bed 10mm)
M913 X100 Y100 Z100		; Restore motor currents if they were lowered