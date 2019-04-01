G28 ; home all axes

M83  ; set extruder to relative mode
G21  ; set units to mm

T0  ; select tool 0

G92 E0.0  ; reset extruder position
M220 S100 ; reset speed multiplier

; Relative positioning
G91

; Lift Z relative to current position
M98 P"/macros/print_scripts/z_current_low.g"
G1 Z3 F9000
M98 P"/macros/print_scripts/z_current_high.g"

; Absolute positioning
G90

; Move XY to preheat position
M98 P"/macros/print_scripts/xy_current_low.g"
M98 P"/macros/probe_scripts/goto_bed_center.g"
M98 P"/macros/print_scripts/xy_current_high.g"

M207 S5.0 F5000 T3200 Z0.4  ; setup firmware retraction