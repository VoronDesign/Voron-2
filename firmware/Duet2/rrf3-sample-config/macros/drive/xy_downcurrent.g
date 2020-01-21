;; In order to consolidate motor current and physics settings,
;; and to enable switching between full- and low-current profiles,
;; these motor settings live in this related set of macros.
;;
;; The "downcurrent" files specify slower, gentler values
;; used for some parts of homing.
;; This can help to reduce damage in the case of a crash
;; due to misalignment, misconfiguration,
;; or sensors otherwise not triggering.
;;
;; *ADJUST* all values, or disable as described


;; To disable downcurrent X/Y moves, uncomment these lines.
;M98 P"/macros/drive/xy_fullcurrent.g"
;M99     ; exit macro without changing anything else


;; Choose either an M913 percentage or an M906 absolute current value.
;M913 X67 Y67        ; set operating current percentage
M906 X900 Y900    ; set absolute motor drive current

;; Set reduced physics parameters to help prevent missed steps.
M203 X4500 Y4500    ; maximum speed (mm/min)
M201 X900 Y900      ; maximum acceleration (mm/min/s)
M566 X100 Y100      ; instantaneous speed change (mm/min)
