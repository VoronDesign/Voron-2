; Reduce motor current to reduce crash damage
M913 Z50

; Move the toolhead directly above the mechanical switch.
G91 ; relative positioning
G1 Z10 F6000 S2
G90 ; absolute positioning
G1 X244 Y215 F6000

; Perform a single fast-probe to quickly get down to switch level
M98 Pset_zprobe_mfast.g
G30

; And a slow probe for precision
M98 Pset_zprobe_mslow.g
G30

; Restore motor currents and probe settings
M913 Z100
M98 Pset_zprobe_ifast.g
G90 ; absolute positioning
