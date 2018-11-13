;; For homing Y, perform a double-tap to locate the endstop.
;; First move fast to save time, then move slow for precision.
;;
;; *ADJUST* based on your Y size as indicated below

G91                             ; relative positioning
M98 P"/macros/drive/xy_downcurrent.g"
G1 Y260 F6000 S1                ; +Y probe move, fast (*ADJUST* to 10mm more than your Y size)
M98 P"/macros/drive/xy_fullcurrent.g"
G1 Y-5 F6000                    ; back off from the endstop
G1 Y10 F120 S1                  ; +Y probe move, slow
G1 Y-1 F6000                    ; back off from the endstop
