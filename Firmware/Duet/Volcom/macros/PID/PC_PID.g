; Set PID for PC (100C) - Bed
M307 H0 A251.1 C952.9 D34.7 S1.00 V24.3 B0	; Set model parameters for heater 0 and use PID mode

; Set PID for PC (260C) - Hotend
M307 H1 A555.3 C205.1 D7.9 S1.00 V24.2 B0	; Set model parameters for heater 1 and use PID mode\

; Set Pressure Advance for PC
M572 D0 S0.06     ;Pressure Advance