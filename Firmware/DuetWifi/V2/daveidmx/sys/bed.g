M561                            ; clear bed transform

;; Home X and Y
M98 P"homing_zhop_up.g"
M98 P"homing_probe_x.g"
M98 P"homing_probe_y.g"

;; Quickly find approximate bed level
M98 P"homing_probe_zi.g"

;; Switch to slow probing, and perform multi-pass gantry leveling.
M98 P"zprobe_use_islow.g"
M98 P"homing_probe_zlevel.g"
M98 P"homing_probe_zlevel.g"
M98 P"zprobe_use_ifast.g"       ; restore default probe settings

;; Perform mechanical Z-height adjustment,
;; but do it via homeall to correct X and Y after gantry leveling.
G28
