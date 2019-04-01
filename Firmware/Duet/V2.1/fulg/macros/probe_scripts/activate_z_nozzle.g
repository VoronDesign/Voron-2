; Select external nozzle probe

; P4:       connected to E0-stop SIG and GND
; I1:       P4 expects NC, nozzle disc is NO
; T18000:   Move to probe points at 300mm/s
; F120:     Probing Speed: 2mm/s
; H5:       Dive height: 5mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; B1:       Turn off heaters while probing

M400
M558 P4 I1 T18000 F120 H5 A10 S0.01 B0 R0.2
G31 T4 P500 X0 Y0 Z1.165 ;Z1.095 ; 
G4 P200
