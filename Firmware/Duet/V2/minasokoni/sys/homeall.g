; homeall.g

G1 Z5 F2000			                   ; raise gantry 5mm
G1 X350 Y350 F3000 S1		           ; coarse home X and Y
G90				                         ; absolute
G1 X195 Y175 F6000		             ; move to center of bed (adujst according to your bed position)
G30 Z-99999			                   ; single Z-probe at center of bed
G1 Z10 				                     ; raise gantry 10mm
