; Activate the inductive probe in "fast" mode.
; Used to quickly get down to bed level.
; Follow this up with a slow probe to finely calibrate levels.
; NOTE: Probing with Z0 is a safe value on my printer,
; so this file never has to change.
; If you want to tune the Z-value, do so in the "slow" file.

M558 P4 I1 H5 F1800 T6000
G31 P1000 X0 Y20 Z0
