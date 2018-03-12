; Clear bed transform
M561

; Home X and Y
G28 XY

; Reduce motor current to reduce crash damage
M913 X50 Y50 Z50

; Quickly go down to the bed plane with a single probe.
; Use the corner of the bed to reduce damage if the sensor fails to trigger.
G91 ; relative positioning
G0 Z10 F6000 S2
G90 ; absolute positioning
G0 X225 Y225 F6000
M98 Pset_zprobe_ifast.g
G30

; Switch to slow probing, and perform multi-pass 4-point gantry leveling.
M98 Pset_zprobe_islow.g

G30 P0 X75 Y75 Z-10000
G30 P1 X175 Y75 Z-10000
G30 P2 X175 Y175 Z-10000
G30 P3 X75 Y175 Z-10000 S

G30 P0 X75 Y75 Z-10000
G30 P1 X175 Y75 Z-10000
G30 P2 X175 Y175 Z-10000
G30 P3 X75 Y175 Z-10000 S

; Clear bed transform again
M561

; Restore motor currents and probe settings
M913 X100 Y100 Z100
M98 Pset_zprobe_ifast.g

; Perform mechanical Z-leveling
G28 Z

; And go to the center of the build volume to rest.
G0 X125 Y125 Z125 F6000
