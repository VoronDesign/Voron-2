; X axis homing file

;M913 X40 Y40 Z20	; Reduce motor currents in case of collision

G91			; relative mode
G1 Z4.0 F6000		; lower bed to avoid dragging nozzle over the bed
G1 X-240 F2000 S1	; move up to 240mm in the -X direction, stopping if the homing switch is triggered
G1 X2 F2000		; move slowly  2mm in the +X direction
G1 X-10 F 360 S1	; move slowly 10mm in the -X direction, stopping at the homing switch

G90			; absolute mode
G1 X0 F2000		; Move head to 0 (corner of bed)
G91			; relative mode
G1 Z-4.0 F6000		; raise bed back to original height
G90			; absolute mode

;M913 X100 Y100 Z100	; Restore motor currents

