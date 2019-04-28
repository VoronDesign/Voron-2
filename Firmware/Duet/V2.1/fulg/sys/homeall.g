; homeall.g
; called to home all axes

; Allow movements before homing
M564 H0

; Relative positioning
G91

; Lift Z
M98 P"/macros/print_scripts/z_current_low.g"
G1 Z10 F2000
M98 P"/macros/print_scripts/z_current_high.g"

; Lower AB currents
M98 P"/macros/print_scripts/xy_current_low.g"

; Coarse home X or Y
G1 X600 Y600 F2400 H1

; Coarse home X
G1 X600 H1

; Coarse home Y
G1 Y600 H1

; Move away from the endstops
G1 X-5 Y-5 F9000

; Fine home X
G1 X600 F360 H1

; Fine home Y
G1 Y600 H1

; Restore high AB currents
M98 P"/macros/print_scripts/xy_current_high.g"

; Absolute positioning
G90

; Coarse homing with the inductive probe
M98 P"/macros/print_scripts/z_current_low.g"
M98 P"/macros/probe_scripts/activate_z_probe.g"
M98 P"/macros/probe_scripts/goto_bed_center.g"
G30 Z-9999

; Note that homing Z does not set the final Z offset used for printing!
; You *must* probe Z with the Z switch before checking/calibrating the Z offset.

; Restore high Z currents
M98 P"/macros/print_scripts/z_current_high.g"

; Homing done, enforce limits
M564 S1 H1
