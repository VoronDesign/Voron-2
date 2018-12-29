;; See comments in /macros/testing/physics/scripts/xy_prologue.g

M98 P"/macros/testing/physics/scripts/xy_prologue.g"

;; Set feedrate to maximum (clamped).
;; (This can't be in prologue because feedrate is preserved (push/pop) across macro calls.)
G0 F99999

;; Perform movement cycles
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/physics/scripts/xy_movecycle_10.g"

;; Probe to display results
M98 P"/macros/testing/physics/scripts/xy_epilogue.g"
