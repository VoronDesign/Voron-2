; Set PID for PLA (90C) - Bed
M307 H0 A251.1 C952.9 D34.7 S0.70 V24.3 B0	; Set model parameters for heater 0 and use PID mode

; Set PID for PLA (215C) - Hotend
M307 H1 A511.0 C190.9 D8.3 S1.00 V24.2 B0	; Set model parameters for heater 1 and use PID mode

; Set Pressure Advance for PLA
M572 D0 S0.06     ;Pressure Advance