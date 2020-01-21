;; The inductive equivalent to the mechanical script.
;; Not frequently used since my inductive probe settings aren't calibrated to nozzle height.
;; Mostly useful for zeroing inductive height before a G29 bed map.

M98 P"/macros/moveto/iswitch_safexy.g"

M98 P"/macros/drive/z_downcurrent.g"

M98 P"/macros/zprobe/use_ifast.g"
G30                             ; z-probe as configured
M98 P"/macros/drive/z_fullcurrent.g"
G90 
G1 Z1 F99999
M98 P"/macros/zprobe/use_islow.g"
G30                             ; z-probe as configured

M98 P"/macros/zprobe/use_ifast.g"       ; restore default probe settings