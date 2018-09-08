; bed.g
; called to perform automatic bed compensation via G32

;M913 Z40			; Reduce Z motor current so if the Z sensor fails 
				; and there's a head crash there's less force

M561				; Clear any existing bed transform
G90				; Absolute mode

; Probe bed at these 5 points:
G30 P0 X28  Y28  H-0.05	Z-99999
G30 P1 X30  Y198 H+0.05	Z-99999
G30 P2 X198 Y198 H+0.05	Z-99999
G30 P3 X198 Y28  H-0.05	Z-99999
G30 P4 X115 Y115 Z-99999 S

G1 Z10				; Lower bed
G1 X0.0 Y0.0 F16000		; Home

;M913 Z100			; Restore Z motor current currents