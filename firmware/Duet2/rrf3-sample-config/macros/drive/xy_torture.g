;; In order to consolidate motor current and physics settings,
;; and to enable switching between full- and low-current profiles,
;; these motor settings live in this related set of macros.
;;
;; The "torture" files specify aggressive physics values
;; on top of the "fullcurrent" configuration.
;; This is useful for mechanical testing, but terrible for printing.
;;
;; *ADJUST* all values

M98 P"/macros/drive/xy_fullcurrent.g"
M203 X50000 Y50000      ; maximum speed (mm/min)
M201 X5000 Y5000        ; maximum acceleration (mm/min/s)
M566 X2000 Y2000        ; instantaneous speed change (mm/min)
