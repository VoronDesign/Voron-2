;; Activate the mechanical probe in "fast" mode.
;; Used to quickly get down to switch level.
;; Follow this up with a slow probe to finely calibrate the height.
;; NOTE: Probing with Z0 is a safe value on my printer,
;; so this file never has to change.
;; Tune the Z-value in the "slow" file.
;;
;; *ADJUST* this file for:
;;  Your mechanical switch pins ("M558 P*")

;M558 P7 C"e0stop" I0 H0.7 R0.1 F1200 T99999 A1 B1

M574 Z0 C"nil" ; no Z endstop switch, free up Z endstop input
M558 P5 C"zstop" I0 H0.7 R0.1 F1200 T99999 A1 B1
