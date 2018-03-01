; homez.g

G91				                                         ; Relative mode
G1 Z5 F600			                                   ; raise gantry 5mm
G90				                                         ; absolute mode
G1 X195 Y175 F6000		                             ; move to center of bed
G30 Z-99999			                                   ; single Z-probe at center of bed (adujst according to your bed position)
G1 Z10 				                                     ; raise gantry 10mm
