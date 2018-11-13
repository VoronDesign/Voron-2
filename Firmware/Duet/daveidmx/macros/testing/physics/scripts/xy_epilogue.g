;; I would love for this to work the same as the Z version.
;; I want to be able to move out to the endstop switches and stop,
;; then let the user read off the values for comparison.
;; This would be similar to a homing move "G1 X+999 S1",
;; however the S1 parameter also causes the coordinate to be
;; immediately reset when triggered. (Feature request time!)

;; Move down to bed level so the user can measure position.
M98 P"/macros/drive/z_downcurrent.g"
M98 P"/macros/zprobe/use_ifast.g"
G30 S-1                         ; move down to bed level and stop
M98 P"/macros/drive/z_fullcurrent.g"

M291 R"X/Y Physics Test" P"Moves complete. Compare the nozzle X/Y position if desired." S2 Z1
