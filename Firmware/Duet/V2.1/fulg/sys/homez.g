; homez.g
; called to home the Z axis

; Allow movements before homing
M564 H0

M98 P"/macros/print_scripts/z_current_low.g"
M98 P"/macros/print_scripts/speed_probing.g"

; Lift Z relatively to current position
G91
G1 Z10 F2000

; Back to absolute positioning
G90

; Coarse homing with the inductive probe
M98 P"/macros/probe_scripts/activate_z_probe.g"
M98 P"/macros/probe_scripts/goto_bed_center.g"
G30 Z-9999

; Restore high Z currents
M98 P"/macros/print_scripts/z_current_high.g"
M98 P"/macros/print_scripts/speed_printing.g"

; Note that homing Z does not set the final Z offset used for printing!
; You *must* probe Z with the Z switch before checking/calibrating the Z offset.

; Homing done, enforce limits
M564 S1 H1
