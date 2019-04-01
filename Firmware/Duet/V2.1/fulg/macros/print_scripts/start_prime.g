G1 X275 Y5 Z10 F4000 ; move to priming spot
G1 Z10.0 F900  ; move up
G1 E40.0 F200  ; prime extruder
G1 X25 Y5 F4000  ; move back
G1 Z0.2 F1000  ; move down to begin wipe
G1 X110 E4.0 F300  ; wipe print head (extrude material while we do this)
G92 E0.0  ; reset e count
G10 ; F6000
G1 Z0.200 F1500
