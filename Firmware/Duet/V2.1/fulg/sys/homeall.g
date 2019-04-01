; homeall.g
; called to home all axes

; Allow movements before homing
M564 H0

; Relative positioning
G91

; Lift Z
M98 P"/macros/print_scripts/z_current_low.g"
G1 Z10 F2000 S2
M98 P"/macros/print_scripts/z_current_high.g"

; Lower AB currents
M98 P"/macros/print_scripts/xy_current_low.g"

; Coarse home X or Y
G1 X600 Y600 F2400 S1

; Coarse home X
G1 X600 S1

; Coarse home Y
G1 Y600 S1

; Move away from the endstops
G1 X-5 Y-5 F9000

; Fine home X
G1 X600 F360 S1

; Fine home Y
G1 Y600 S1

; Restore high AB currents
M98 P"/macros/print_scripts/xy_current_high.g"

; Absolute positioning
G90

; Coarse homing with the inductive probe
M98 P"/macros/print_scripts/z_current_low.g"
M98 P"/macros/probe_scripts/activate_z_probe.g"
M98 P"/macros/probe_scripts/goto_bed_center.g"
G30 Z-9999

;G1 Z10 F2000 S2

; Activate the z switch
;M98 P"/macros/probe_scripts/activate_z_switch.g"

; Go to Z switch and home the Z axis
;M98 P"/macros/print_scripts/z_current_low.g"
;M98 P"/macros/probe_scripts/goto_z_switch.g"
;G30 Z-99999

M98 P"/macros/print_scripts/z_current_high.g"

; Raise the gantry
;G1 Z5 F2000

; Homing done, enforce limits
M564 S1 H1
