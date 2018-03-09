M561 ; clear bed transform

G28 XY

M913 X50 Y50 Z50 ; motor current percentage


; go to center of bed near bed plane
G91 ; relative positioning
G0 Z10 F6000
G90 ; absolute positioning
G0 X125 Y125 F6000

; switch to inductive probe and move to bed plane
M98 Pset_zprobe_ifast.g
G30

M98 Pset_zprobe_islow.g

G30 P0 X75 Y75 Z-10000
G30 P1 X175 Y75 Z-10000
G30 P2 X175 Y175 Z-10000
G30 P3 X75 Y175 Z-10000 S

G30 P0 X75 Y75 Z-10000
G30 P1 X175 Y75 Z-10000
G30 P2 X175 Y175 Z-10000
G30 P3 X75 Y175 Z-10000 S

M913 X100 Y100 Z100

M561 ; clear bed transform again
G28 Z
