; Activate the mechanical probe in "slow" mode.
; Used to finely calibrate the nozzle height
; after using "fast" to quickly get down to approximate switch height.
;
; !!! This is the place to edit overall Z-height !!!

M558 P7 H5 F120 T6000
G31 P1000 X0 Y0 Z2.40
