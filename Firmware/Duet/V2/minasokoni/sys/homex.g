; X axis homing file

G91                                                 ; relative positioning
G1 Z5.0 F6000                                       ; raise gantry 5mm
G1 X350 F6000 S1	                                  ; move up to 350mm in the +X direction, stopping if the homing switch is triggered
