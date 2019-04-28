; Select Piezo bed sensor probe

; P4 C5:    connected to E2-stop SIG and GND
; I1:       P4 expects NC, PrecisionPiezo board is NO
; T18000:   Move to probe points at 300mm/s
; F300:     Probing Speed: 5mm/s
; H5:       Dive height: 5mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; R1:       Wait 1 second before each probe attempt
; B1:       Turn off heaters while probing

M400
M558 P4 C5 I1 T18000 F300 H5 A10 S0.01 B0 R1.0
G31 T4 P500 X0 Y0 Z-0.18 ; piezo probe offset
G4 P200
