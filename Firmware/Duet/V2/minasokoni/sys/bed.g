; bed.g

M561                                  ; clear any bed transform
G28                                   ; home

; --- probe the bed at 4 points ---
G30 P0 X96 Y131 H0 Z-99999
G30 P1 X96 Y272 H0 Z-99999
G30 P2 X252 Y272 H0 Z-99999
G30 P3 X252 Y131 H0 Z-99999 S4

G1 X195 Y175 F6000		                ; Move to center of bed (adujst according to your bed position)
G30 Z-99999			                      ; Single Z-probe at center of bed
G1 Z10 				                        ; Set Z to 10mm

M561                                  ; clear any bed transform
