;; For homing Y, perform a double-tap to locate the endstop.
;; First move fast to save time, then move slow for precision.
;;
;; *ADJUST* based on your Y size as indicated below

G91                             ; relative positioning
M98 P"/macros/drive/xy_downcurrent.g"
G1 Y310 F6000 H1                ; +Y probe move, fast (*ADJUST* to 10mm more than your Y size)
M98 P"/macros/drive/xy_fullcurrent.g"
G91
G1 H2 Y2 F6000                    ; back off from the endstop
G1 H1 Y3 F60                  ; +Y probe move, slow
G1 H5 Y5 F6000                    ; back off from the endstop
