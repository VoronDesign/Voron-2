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
;; Note that if current is too low or acceleration/jerk is too high,
;; steps can be dropped when doing a z-home, which can cause the gantry to come out of level.
;; On the other hand, if max speed is too high or acceleration is too low,
;; the gantry can fail to stop in time before crashing into the plate.
;;
;; *ADJUST* all values, or disable as descibed


;; To disable downcurrent Z moves, uncomment these lines.
;M98 P"/macros/drive/z_fullcurrent.g"
;M99     ; exit macro without changing anything else


;; Choose either an M913 percentage or an M906 absolute current value.
;M913 Z50        ; set operating current percentage
M906 Z600       ; set absolute motor drive current

;; Set reduced physics parameters to help prevent missed steps.
M203 Z3000      ; maximum speed (mm/min)
M201 Z400       ; maximum acceleration (mm/min/s)
M566 Z0         ; instantaneous speed change (mm/min)
