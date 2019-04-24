G91
G1 Z5 F9000
G90

M98 P"/macros/print_scripts/goto_bucket.g"
M98 P"/macros/print_scripts/nozzle_wipe.g"

; final Z adjust (with hot nozzle)
M98 P"/macros/print_scripts/z_switch_probe.g"

G29 S1 ; apply Z heightmap

