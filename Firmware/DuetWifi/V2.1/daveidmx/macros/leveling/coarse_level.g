;; like bed.g, but performs a coarse leveling pass first,
;; for when the gantry is too far out-of-whack for the normal dive height
M561                            ; clear bed transform

;; Home X and Y
M98 P"/macros/homing/scripts/zhop_up.g"
M98 P"/macros/homing/scripts/probe_x.g"
M98 P"/macros/homing/scripts/probe_y.g"

;; Quickly find approximate bed level
M98 P"/macros/homing/scripts/probe_zi.g"

;; Run one pass with the fast probe and its higher dive height to correct for major skew.
;; This is a concession for overall successfulness,
;; but due to the lower precision this first pass will throw the gantry slightly out-of-level
;; if it was already true.
M98 P"/macros/homing/scripts/probe_zlevel.g"

;; Switch to slow probing, and perform multi-pass gantry leveling.
M98 P"/macros/zprobe/use_islow.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/homing/scripts/probe_zlevel.g"
M98 P"/macros/zprobe/use_ifast.g"       ; restore default probe settings

;; Perform mechanical Z-height adjustment,
;; but do it via homeall to correct X and Y after gantry leveling.
G28
