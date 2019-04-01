;G32 ; home & level gantry
;G28 X
G91
G1 Z5 F9000
G90
M98 P"/macros/print_scripts/z_switch_probe.g"

M561
;G29 S1 ; apply Z heightmap

M98 P"/macros/print_scripts/goto_bucket.g"
;M98 P"/macros/probe_scripts/goto_bed_center.g"