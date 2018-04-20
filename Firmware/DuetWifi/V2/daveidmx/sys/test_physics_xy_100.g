;; See comments in test_physics_xy_prologue.g

M98 P"test_physics_xy_prologue.g"

;; Set feedrate to maximum (clamped).
;; (This can't be in prologue because feedrate is preserved (push/pop) across macro calls.)
G1 F99999

;; Perform movement cycles
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"
M98 P"test_physics_xy_movecycle_10.g"

;; Probe to display results
M98 P"test_physics_xy_epilogue.g"
