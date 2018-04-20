;; For homing Z, perform a double-tap using the mechanical switch.

M98 P"moveto_mswitch_xy.g"

M98 P"drive_z_downcurrent.g"

M98 P"zprobe_use_mfast.g"
G30                             ; z-probe as configured

M98 P"drive_z_fullcurrent.g"

M98 P"zprobe_use_mslow.g"
G30                             ; z-probe as configured

M98 P"zprobe_use_ifast.g"       ; restore default probe settings
