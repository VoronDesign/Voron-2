;; Activate the mechanical probe in "slow" mode.
;; Used to finely calibrate the nozzle height
;; after using "fast" to quickly get down to approximate switch height.
;;
;; *ADJUST* this file for:
;;  Your mechanical switch pins ("M558 P*")
;;  Your Z-height tuning ("G31 Z*")
;;
;; !!! This is the only place to edit overall Z-height !!!

;M558 P7 C"e0stop" I0 H0.3 R0.1 F25 T99999 A5 S0.01 B1


M574 Z0 C"nil" ; no Z endstop switch, free up Z endstop input
M558 P5 C"zstop" I0 H0.3 R0.1 F25 T99999 A5 S0.01 B1
G31 P1000 X0 Y0 Z-0.46