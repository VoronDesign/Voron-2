; do a single probe on the Z switch, finalizing the Z height
M98 P"/macros/print_scripts/z_current_low.g"
M98 P"/macros/probe_scripts/activate_z_switch.g"
M98 P"/macros/probe_scripts/goto_z_switch.g"
G30 Z-99999
M98 P"/macros/print_scripts/z_current_high.g"

; Keep the switch probe active so all Z future offsets are relative to it.
; Switching the active probe type in RRF changes the Z offset!