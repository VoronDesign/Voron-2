;; In order to consolidate motor current and physics settings,
;; and to enable switching between full- and low-current profiles,
;; these motor settings live in this related set of macros.
;;
;; The "torture" files specify aggressive values for testing mechanics,
;; but are generally terrible for printing.
;;
;; *ADJUST* all values

M98 P"/macros/drive/z_fullcurrent.g"
M203 Z18000     ; maximum speed (mm/min)
M201 Z6000      ; maximum acceleration (mm/min/s)
M566 Z3600      ; instantaneous speed change (mm/min)
