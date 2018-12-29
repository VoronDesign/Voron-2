;; For homing Z, perform a double-tap using the mechanical switch.

M98 P"/macros/moveto/mswitch_xy.g"

M98 P"/macros/drive/z_downcurrent.g"

M98 P"/macros/zprobe/use_mfast.g"
G30                             ; z-probe as configured

M98 P"/macros/drive/z_fullcurrent.g"

M98 P"/macros/zprobe/use_mslow.g"
G30                             ; z-probe as configured

M98 P"/macros/zprobe/use_ifast.g"       ; restore default probe settings
