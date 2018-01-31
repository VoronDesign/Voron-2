; Y axis homing file

G91			                                           ; relative mode
G1 Y350 F6000 S1	                                 ; move up to 350mm in the +Y direction, stopping if the homing switch is triggered
G1 Y348 F6000		                                   ; move slowly  2mm in the -Y direction
