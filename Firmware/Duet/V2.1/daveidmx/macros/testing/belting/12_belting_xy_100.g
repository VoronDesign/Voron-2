;; This test script is designed to exercise a wide range of fast movement
;; in the XY directions. This can help reveal problems with belt alignment.
;; Don't run this unattended!
;; It might cause your belts to pop off.

M98 P"/macros/moveto/center_xyz.g"

G0 F99999               ; Set feedrate to maximum (clamped)

M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"
M98 P"/macros/testing/belting/scripts/xy_movecycle_10.g"

M98 P"/macros/moveto/center_xyz.g"
