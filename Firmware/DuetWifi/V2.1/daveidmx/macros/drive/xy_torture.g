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
M203 X60000 Y60000      ; maximum speed (mm/min)
M201 X6000 Y6000        ; maximum acceleration (mm/min/s)
M566 X1200 Y1200        ; instantaneous speed change (mm/min)
