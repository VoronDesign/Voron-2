; bed.g
; called to perform automatic bed compensation via G32
; setup for quad belt gantry

M561				; Clear any existing bed transform
G28                       	; home

M98 P"/macros/probe_scripts/activate_z_probe.g" ;activate inductive z-probe

; Probe bed at these 4 points:
G30 P0 X65 Y40 H0 Z-99999
G30 P1 X65 Y260 H0 Z-99999
G30 P2 X285 Y260 H0 Z-99999
G30 P3 X285 Y40 H0 Z-99999	S4

M561				; Clear any existing bed transform
G28 Z				; Home Z Axis

M98 P"/macros/probe_scripts/activate_z_probe.g"		;activate inductive z-probe