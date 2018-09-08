;; For homing X, perform a double-tap to locate the endstop.
;; First move fast to save time, then move slow for precision.
;;
;; *ADJUST* based on your X size as indicated below

G91                             ; relative positioning
M98 P"/macros/drive/xy_downcurrent.g"
G1 X260 F6000 S1                ; +X probe move, fast. (*ADJUST* to 10mm larger than your X size)
M98 P"/macros/drive/xy_fullcurrent.g"
G1 X-5 F6000                    ; back off from the endstop
G1 X10 F120 S1                  ; +X probe move, slow
G1 X-1 F6000                    ; back off from the endstop
