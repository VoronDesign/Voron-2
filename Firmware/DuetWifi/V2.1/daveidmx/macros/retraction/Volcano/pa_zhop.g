;; Pressure Advance can make seams really pretty.
;; It's super noisy though, so I don't use it all the time.
;; This file enables it.
;;
;;   https://duet3d.com/wiki/Pressure_advance
;;
;; *ADJUST* based on your retraction tuning WITH pressure advance

M207 S6.0 R0.0 F6000 Z0.50
M572 D0:1 S0.25

;; Save retraction selection to be recovered on reboot
M28 "/sys/restore_retraction.g"
M98 P"/macros/retraction/volcano/pa_zhop.g"
M29
