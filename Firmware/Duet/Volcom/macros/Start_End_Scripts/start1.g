M104 S0 ;cancel set temp
G21  ; set units to mm
G90  ; use absolute coordinates
T0  ; select tool 0
G29 S2 ; clear height map and disable mesh bed compensation
G92 E0.0  ; reset e count
M220 S100 ; reset speed multiplier
M290 R0 S0 ; reset baby stepping