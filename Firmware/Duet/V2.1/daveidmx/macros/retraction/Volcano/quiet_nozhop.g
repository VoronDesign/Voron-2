;; Pressure Advance can make seams really pretty.
;; It's super noisy though, so I don't use it all the time.
;; This file configures simple retraction instead.
;;
;; *ADJUST* based on your retraction tuning WITHOUT pressure advance

M207 S8.0 R0.0 F6000 Z0.00
M572 D0:1 S0.00

;; Save retraction selection to be recovered on reboot
M28 "/sys/restore_retraction.g"
M98 P"/macros/retraction/volcano/quiet_nozhop.g"
M29
