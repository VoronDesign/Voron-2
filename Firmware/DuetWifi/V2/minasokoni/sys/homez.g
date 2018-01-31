; homez.g

M558 P7 H5 I0 F120 R0 T12000                       ; settings for Nozzle Probe using Z endstop connector
G31 P500 X0 Y0 Z4.4                                ; set Z probe trigger value, offsets and trigger height
G91                                                ; relitive positioning
G0 Z10 F9000                                       ; move gantry up 10mm
G90                                                ; absolute positioning
G0 X342 Y270 F10000                                ; move nozzle to nozzle switch
G30                                                ; set Z home for printing
G1 Z20 F9000                                       ; move gantry up 20mm
G1 X185 Y185 F9000                                 ; move to center of bed
