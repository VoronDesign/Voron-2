;; See comments in test_physics_z_prologue.g

M98 P"test_physics_z_prologue.g"

;; Set feedrate to maximum (clamped).
;; (This can't be in prologue because feedrate is preserved (push/pop) across macro calls.)
G1 F99999

;; Perform movement cycles
M98 P"test_physics_z_movecycle_100.g"

;; Probe to display results
M98 P"test_physics_z_epilogue.g"
