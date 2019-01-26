;; if the bed is too far out-of-whack for the default dive height,
;; first run /macros/leveling/coarse_level.g

M561                            ; clear bed transform

;; Home X and Y
M98 P"/macros/homing/scripts/zhop_up.g"
M98 P"/macros/homing/scripts/probe_x.g"
M98 P"/macros/homing/scripts/probe_y.g"

;; Quickly find approximate bed level
M98 P"/macros/homing/scripts/probe_zi.g"

;; Switch to slow probing, and perform multi-pass gantry leveling.
M98 P"/macros/zprobe/use_islow.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/zprobe/use_ifast.g"       ; restore default probe settings

;; Perform mechanical Z-height adjustment,
;; but do it via homeall to correct X and Y after gantry leveling.
G28
