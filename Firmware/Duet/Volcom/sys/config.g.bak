; Communication and general
M111 S0                            		; Debug off
M550 PVORON_V2002				; Machine name and Netbios name (can be anything you like)
;M551 P8190                   			; Machine password (used for FTP)

;*** If you have more than one Duet on your network, they must all have different MAC addresses, so change the last digits
M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0xED		; MAC Address

;*** Networking - Enable for both WiFi and Ethernet boards.
M552 S1						; Turn network on

M586 P1 S1					; Activate FTP

G21	 		; Work in millimeters
G90 			; Send absolute coordinates...
M83 			; ...but relative extruder moves
M555 P2			; Set firmware compatibility to look like Marlin
M667 S1 		; Select CoreXY mode
M208 X0 Y0 Z0 S1	; Set axis minima to match endstop location.  Corner of bed is X0, Y0.
M208 X350 Y350 Z300 S0	; Set axis maxima to end of safe travel.  Corner of bed is X350, Y350.

; G29 Mesh
M557 X55:295 Y30:270 S30	; S30 for high density, S40 for testing

; Extruder 0 - Filament Switch
;M581 E1 S1 T1 C1	;disabled for now

; Emergency Stop Switch - E2 Endstop
M581 E2 S1 T0 C0	

; Endstops
M574 X1 Y1 Z0 S1
	; X1 Y1 sets endstops for low end 
	; Z0 because Z endstop is handled in Zprobe setup
	; S1 for active-high endstops. My switches are wired to be NC - Normally Closed.

; Inductive Leveling Sensor	
M98 P"/macros/probe_scripts/activate_z_probe.g" 	; activate the Z probe
M98 P"/macros/probe_scripts/activate_z_switch.g" 	; activate the Z switch

; Z-Axis Stepper Leveling Configuration
M584 X0 Y1 Z5:6:7:8				; 4 motors; duex 5, 6, 7, 8
M671 X410:410:-60:-60 Y360:-10:360:-10 S20	; belts in all 4 corners

; Driver Configuration
M569 P0 S0	; X Motor goes backwards
M569 P1 S0	; Y Motor goes backwards
M569 P3 S1	; Extruder Motor 0 goes forwards (BMG)
;M569 P3 S0	; Extruder Motor 0 goes backwards (Mobius 2)
M569 P5 S0	; Z1 goes backwards
M569 P6 S1	; Z2 goes forwards
M569 P7 S1	; Z3 goes forwards
M569 P8 S0	; Z4 goes backwards

M92 X160 Y160 Z400				; Steps per mm
M92 E415					; Steps per mm (BMG) (1.8deg)
;M92 E564					; Steps per mm (Mobius 2) (1.8deg)	
M350 E16 I1					; Configure microstepping with interpolation
M350 X16 Y16 Z16 I1				; Configure microstepping with interpolation
M203 X18000 Y18000 E9000 Z4000 	 		; Set maximum speeds (mm/min) for 2.1 only (300mm/s max)
M201 X3000 Y3000 E6000 Z500 			; Set accelerations (mm/s^2)
M566 X900 Y900 E1200 Z150 			; Set maximum instantaneous speed changes (mm/min)
M98 P"/macros/print_scripts/xy_current_high.g"	; Set XY Motor Currents
M98 P"/macros/print_scripts/e_current_high.g"	; Set Extruder Motor Currents
M98 P"/macros/print_scripts/z_current_high.g"	; Set Z Motor Currents (must come after extruder, because on the extruder headers)
M84 S0	 					; Set idle timeout, never time out

; Bed Heater (H0)
M143 H0 S107.5					; Set maximum heater temperature to 105C
M305 P0 T100000 B3950 C0.0 R4700		; Set thermistor + ADC parameters for heater 0
M98 P"/macros/PID/ABS_PID.g"			; Set model parameters for heater 0 and use PID mode?

; Hot End Heater (H1)
M143 H1 S350					; Set maximum heater temperature to 350C
;M305 P1 T100000 B4725 C7.06e-8 R4700		; Set thermistor + ADC parameters for heater 1 (E3D Sensor Only)
M305 P1 T100000 B3950 C0.0 R4700		; Set thermistor + ADC parameters for heater 1 (Chinese Bullshit Sensor Only)
M570 H1 P20 T20
M98 P"/macros/PID/ABS_PID.g"			; Set model parameters for heater 1 and use PID mode

; Chamber Temperature/Heater
M141 H3 					;enable chamber heater on heater output 3
M305 P3 R4700 T100000 B3950 			;Set thermistor + ADC parameters for heater 3

; Tool/Extruder 0
M563 P0 D0 H1		; Tool 0 uses Drive 0 and Heater 1
G10 P0 X0 Y0 Z0 	; Set Tool 0 axis offsets
G10 P0 R0 S0 		; Set Tool 0's initial active and standby temperatures to 0C
T0			; select Tool/Extruder 0 by default

; Fans
M106 P0 S0 I0 F500 H-1		; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S215 I0 F50 H1 T50 	; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Enable config-override.g
;M501

; Allow Movement of Axis that have not been homed
M564 H0