; tfree0.g
; called when tool 0 is freed

M83			; Make sure extruder is in relative mode
G1 E-10 F6000		; Retract filament as soon as possible
G91			; Relative
G1 Z2 F6000		; Then lower bed
G90			; Absolute
G1 X220 Y220 F18000	; Then get the hell away from the print
G4 P3000		; Pause to cool the retracted filament (may need to lower to account for above movement)
G1 E10 F6000		; Pack the filament to eliminate the tail
G1 E-180 F6000		; Yank the filament past the Y adapter and into its Bowden tube
