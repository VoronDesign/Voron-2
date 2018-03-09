; probe z height
M913 Z50 ; motor current percentage
G91 ; relative positioning
G0 Z10 F6000
G90 ; absolute positioning
;G0 X249 Y220 F6000
G0 X244 Y216 F6000

M98 Pset_zprobe_mfast.g
G30
G0 Z5 F6000
M98 Pset_zprobe_mslow.g
G30

G0 Z20 F6000
G0 X125 Y125 F6000
M913 Z100

M98 Pset_zprobe_ifast.g
