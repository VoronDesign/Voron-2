;; Activate the mechanical probe in "fast" mode.
;; Used to quickly get down to switch level.
;; Follow this up with a slow probe to finely calibrate the height.
;; NOTE: Probing with Z0 is a safe value on my printer,
;; so this file never has to change.
;; Tune the Z-value in the "slow" file.
;;
;; *ADJUST* this file for:
;;  Your mechanical switch pins ("M558 P*")

M558 P7 I1 H5 R0.1 F600 T99999 A1 B0
G31 P1000 X0 Y0 Z0
