; homeall.g
; called to home all axes

G91							; Relative

G1 Z5 F2000 S2						; Lower bed 15mm
G1 X-300 Y-300 F2000 S1					; Coarse home X and Y
G1 X-300 S1						; Coarse X in case Y homed first
G1 Y-300 S1						; Coarse Y in case X homed first
G1 X5 Y5 F2000						; Move away from the endstops
G1 X-300 F360 S1					; Fine home X
G1 Y-300 F360 S1					; Fine home Y

M98 P"/macros/print_scripts/xy_current_high.g"		; Restore motor currents
G90							; Absolute positioning

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