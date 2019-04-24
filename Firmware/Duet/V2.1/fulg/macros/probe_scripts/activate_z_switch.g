; Select mechanic plunger switch

; P7:       connected to Z endstop SIG and GND
; I0:       P7 expects NC, switch is wired NC
; T18000:   Move to probe points at 300mm/s
; F300:     Probing Speed: 5mm/s
; H5:       Dive height: 5mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; B1:       Turn off heaters while probing

M400
M558 P7 I0 F420 H5 T18000 A10 S0.01 B0 R0.2
G31 T7 P500 X0 Y0 Z2.915 ; Set parameters for z switch (more negative = higher nozzle)
G4 P200
