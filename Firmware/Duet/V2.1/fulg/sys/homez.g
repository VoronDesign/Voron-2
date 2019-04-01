; homez.g
; called to home the Z axis

; Allow movements before homing
M564 H0

M98 P"/macros/print_scripts/z_current_low.g"
M98 P"/macros/print_scripts/speed_probing.g"

; Lift Z relatively to current position
G91
G1 Z10 F2000 S2

; Back to absolute positioning
G90

; Coarse homing with the inductive probe
M98 P"/macros/probe_scripts/activate_z_probe.g"
M98 P"/macros/probe_scripts/goto_bed_center.g"
G30 Z-9999

;G1 Z10 F2000 S2

; Activate the mechanical switch
;M98 P"/macros/probe_scripts/activate_z_switch.g"

; Go to mechanical switch and home the Z axis
;M98 P"/macros/probe_scripts/goto_z_switch.g"
;M98 P"/macros/probe_scripts/goto_bed_center.g"
;G4 P200 ; wait
;G30 Z-99999
M98 P"/macros/print_scripts/z_current_high.g"
M98 P"/macros/print_scripts/speed_printing.g"

; Lift Z
;G91
;G1 Z5 F2000
;G90

; Homing done, enforce limits
M564 S1 H1
