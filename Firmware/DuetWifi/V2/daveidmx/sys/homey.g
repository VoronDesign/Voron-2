; Reduce motor current to reduce crash damage
M913 X50 Y50 Z50

; Z-hop to avoid the build plate
G91 ; relative positioning
G0 Z10 F6000 S2

; Double-tap (fast/slow) home the axis.
G1 Y260 F6000 S1
G1 Y-5 F6000
G1 Y10 F600 S1
G1 Y-1 F6000

; Restore Z-position and motor currents
G0 Z-10 F6000 S2
G90 ; absolute positioning
M913 X100 Y100 Z100
