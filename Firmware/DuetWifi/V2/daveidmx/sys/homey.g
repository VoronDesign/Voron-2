G91 ; relative positioning
M913 X50 Y50 Z50 ; motor current percentage
G0 Z10 F6000
G1 Y260 F6000 S1
G1 Y-5 F6000
G1 Y10 F600 S1
G1 Y-1 F6000
G0 Z-10 F6000
M913 X100 Y100 Z100
G90 ; absolute positioning
