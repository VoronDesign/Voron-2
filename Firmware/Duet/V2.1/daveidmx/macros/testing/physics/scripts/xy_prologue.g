;; Used for testing XY drive current, speed, acceleration, and jerk.
;; This script should finish with the head at the X/Y center of the bed,
;; with a prompt for the user to measure in comparison to the baseline.
;;
;; (Ideally this would operate the same as Z,
;; where the script would finish with the head at the X/Y home position
;; with X and Y values matching your configured X/Y bed max size.
;; Not sure how to do that yet, though.)
;;
;; NOTE: If you can audibly hear step skipping while this is running,
;; perform an emergency stop ("M112")
;; or risk using up the X/Y headroom and crashing into the sides.

;; Since we can't yet accurately re-measure the X/Y position at the end,
;; allow the user the chance to do so now.

M98 P"/macros/moveto/center_xyz.g"
M98 P"/macros/drive/z_downcurrent.g"
M98 P"/macros/zprobe/use_ifast.g"
G30 S-1                         ; move down to bed level and stop
M98 P"/macros/drive/z_fullcurrent.g"

;; Give the user a chance to mark the current position.
M291 R"X/Y Physics Test" P"Mark or measure the current X/Y position if desired." S2 Z1
M98 P"/macros/moveto/center_xyz.g"
