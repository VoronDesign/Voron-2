; homez.g
; called to home the Z axis

M913 X40 Y40 Z20		; Reduce motor currents in case of collision
G91				; Relative mode
G1 Z4 F6000			; Lower bed 4mm to ensure it is above the switch trigger height
G90				; Absolute mode
G1 X115 Y115 F6000		; Move to center of bed
G30 Z-99999			; Single Z-probe at center of bed
G1 Z10				; Set Z to 10mm 
M913 X100 Y100 Z100		; Restore motor currents
