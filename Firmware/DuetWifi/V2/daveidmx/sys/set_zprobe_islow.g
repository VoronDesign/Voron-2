; Activate the inductive probe in "slow" mode.
; Used to finely calibrate levels
; after using "fast" to quickly get down to approximate bed height.
; Follow this up with a slow probe to finely calibrate the height.
;
; Optionally tune the Z-offset in this file.
; (Inductive probing will be followed by a mechanical probe, so this is not required to be perfect here.)

M558 P4 I1 H5 R0.1 F120 T6000 A5 S0.02
G31 P1000 X0 Y20 Z0
