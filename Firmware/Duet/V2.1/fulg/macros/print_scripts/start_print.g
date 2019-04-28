M83  ; set extruder to relative mode
G21  ; set units to mm

T0  ; select tool 0

G29 S1 ; apply Z heightmap

G92 E0.0  ; reset extruder position
M220 S100 ; reset speed multiplier

; reset firmware retraction
M207 S5.0 F5000 T3200 Z0.4

G91
G1 Z5 F9000
G90

M98 P"/macros/print_scripts/goto_bucket.g"
M98 P"/macros/print_scripts/nozzle_wipe.g"

; final Z adjust (with hot nozzle)
M98 P"/macros/print_scripts/z_switch_probe.g"

M98 P"/macros/print_scripts/goto_bucket.g"
M98 P"/macros/print_scripts/nozzle_wipe.g"


