;; Activate the mechanical probe in "slow" mode.
;; Used to finely calibrate the nozzle height
;; after using "fast" to quickly get down to approximate switch height.
;;
;; *ADJUST* this file for:
;;  Your mechanical switch pins ("M558 P*")
;;  Your Z-height tuning ("G31 Z*")
;;
;; !!! This is the only place to edit overall Z-height !!!

M558 P7 I1 H5 R0.1 F120 T99999 A5 S0.01 B0
G31 P1000 X0 Y0 Z2.00
