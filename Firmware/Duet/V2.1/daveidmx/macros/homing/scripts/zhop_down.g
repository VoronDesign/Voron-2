;; Undo any Z-up move performed during X/Y homing
;; so we don't keep creeping up the Z-axis.
;; There is a possibility of crashing here
;; if the nozzle was previously off the bed and has now been moved over it.

M98 P"/macros/drive/z_downcurrent.g"
G91                             ; relative positioning
G0 Z-15 F1800 S2                ; unhomed move down
M98 P"/macros/drive/z_fullcurrent.g"
