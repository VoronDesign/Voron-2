; Activate the mechanical probe in "fast" mode.
; Used to quickly get down to switch level.
; Follow this up with a slow probe to finely calibrate the height.
; NOTE: Probing with Z0 is a safe value on my printer,
; so this file never has to change.
; Tune the Z-value in the "slow" file.

M558 P7 H5 F1800 T6000
G31 P1000 X0 Y0 Z0
