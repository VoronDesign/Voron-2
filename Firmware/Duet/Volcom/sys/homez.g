; homez.g
; called to home the Z axis
;

; Lift Z relatively to current position
G91
G1 Z5 F2000 S2

; Back to absolute positioning
G90

; Go to z switch and home z axis
M98 P"/macros/probe_scripts/activate_z_switch.g"	; Activate Z Switch
M98 P"/macros/probe_scripts/goto_z_switch.g"		; Go To Z Switch	

G30 Z-99999						; Probe Z Switch

G0 Z5

M98 P"/macros/probe_scripts/goto_nozzle_scrubber_and_scrub.g"		; Scrub Nozzle

; Go to z switch and home z axis
M98 P"/macros/probe_scripts/activate_z_switch.g"	; Activate Z Switch
M98 P"/macros/probe_scripts/goto_z_switch.g"		; Go To Z Switch	

G30 Z-99999						; Probe Z Switch

G0 Z20

M98 P"/macros/probe_scripts/activate_z_probe.g"		; Activate Z Probe