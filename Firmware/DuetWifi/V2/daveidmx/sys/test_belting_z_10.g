;; This test script is designed to exercise a wide range of fast movement
;; in the Z direction. This can help reveal problems with belt alignment.
;; Don't run this unattended!
;; It might cause your belts to pop off.

M98 P"moveto_center_xyz.g"

G1 F99999               ; Set feedrate to maximum (clamped)

M98 P"test_belting_z_movecycle_10.g"

M98 P"moveto_center_xyz.g"
