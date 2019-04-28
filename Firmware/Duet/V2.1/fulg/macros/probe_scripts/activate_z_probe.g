; Select inductive Probe PL-08N2

; P4:       connected to Zmin SIG and GND
; I0:       P4 expects NC, PL-08N2 is also NC
; T18000:   Move to probe points at 300mm/s
; F120:     Probing Speed: 2mm/s
; H5:       Dive height: 5mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; B1:       Turn off heaters while probing

M400
M558 P8 I0 T18000 F120 H5 A10 S0.01 B0 R0.2
G31 T8 P500 X0 Y25 Z3.15 ; inductive probe offset, not critical, only used for coarse homing
G4 P200
