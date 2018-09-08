; Configuration file for Duet WiFi; executed by the firmware on start-up

; Network
;*** If you have more than one Duet on your network, they must all have different MAC addresses, so change the last digits
;M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0xED ; MAC Address
M550 PVoron V1.5	; Machine name
M551 Preprap		; Password ('reprap' means "no password")
M552 P192.168.1.110 S1	; Enable network at address (in theory - my router is
			; still assigning it 192.168.1.170...)
			; Use P0.0.0.0 to let router assign address via DHCP

G21	 		; Work in millimeters
G90 			; Send absolute coordinates...
M83 			; ...but relative extruder moves
M555 P2			; Set firmware compatibility to look like Marlin

M667 S1 		; Select CoreXY mode
M208 X-4 Y-3 Z0 S1	; Set axis minima to match endstop location.  Corner of bed is X0, Y0.
M208 X234 Y232 Z225 S0	; Set axis maxima to end of safe travel.  Corner of bed is X231, X231.

; Endstops
M574 X1 Y1 Z0 S1
	; X1 Y1 sets endstops for low end 
	; Z0 because Z endstop is handled in Zprobe setup
	; S1 for active-high endstops. My switches are wired to be NC - Normally Closed.
	
M558 P5 X0 Y0 Z1 H3 I0 F120 T18000
	; P5: Set Z probe type to P5.  P5 uses the In and Gnd pins of the "Z PROBE" input (Duet 0.8.5 and Duet WiFi)
	; Z1: Use probe for homing Z axis in addition to bed leveling.
	; H3: Start probing from 3mm under tip (smaller is faster, larger is safer)
	; I0: Do not invert Z-probe signal (could have omitted this parameter)
	; F120: Probing feed rate.  Slower is more accurate.  Want to run some repeatability tests to see if we can speed it up.
	; T18000: Waste no time getting to next probe point.
	; --------------------
	; Note: Apparently Probe type P4 works as well.  
	; P4 uses the "E0 STOP" input instead of the "Z PROBE" input, 
	; Which is a bit cleaner since it uses the same 3 pin connector as other endstops.
	; Maybe I'll change that someday.

G31 Z-0.6 	; Offset probe height error from bed pushing probe into switch
		; (this G31 line must come *after* M558 line)
		; If nozzle is printing too low,  make this value more negative (i.e. -0.4 --> -0.5)
		; If nozzle is printing too high, make this value more positive (i.e. -0.4 --> -0.3)
		; My Z probe is not working consistently so I'm not sure what a typical value would be

; Driver Configuration
M569 P0 S0	; X Motor goes backwards
M569 P1 S1	; Y Motor goes forwards
M569 P2 S0	; Z Motor goes backwards
M569 P3 S1	; Extruder Motor 1 goes forwards
M569 P4 S0	; Extruder Motor 0 goes backwards

M350 X16    Y16    Z16    E16	I1	; 1/16 Microstepping with interpolation (I1)
M92  X80.0  Y80    Z400   E596		; Steps per mm
M566 X1000  Y1000  Z100   E500		; Maximum instantaneous speed changes (mm/min) (jerk)
M203 X18000 Y18000 Z1000  E9000		; Maximum speeds (mm/min)
M201 X3000  Y3000  Z500   E3000		; Accelerations (mm/s^2)
M906 X1700  Y1700  Z1700  E1700 I30	; Motor currents (mA) and motor idle factor in per cent
M84 S120 				; Set idle timeout

; Let's try firmware retraction
M207 S7.0 R0.0 F6000 T6000 Z2.0		; Snnn positive length to retract, in mm 
					; Rnnn positive or negative additional length to un-retract, in mm
					; Fnnn retraction feedrate, in mm/min
					; Tnnn feedrate for un-retraction if different from retraction, mm/min
					; Znnn additional zlift/hop

; ...and Pressure Advance
;M572 D0 S0.1
;M572 D1 S0.1

; Bed Heater (H0)
M143 H0 S125					; Set maximum heater temperature to 125C
M305 P0 T100000 B4092 C0.0 R4700		; Set thermistor + ADC parameters for heater 0

; Here I record the results of all my 'M303 H0 S120' autotunes for the bed
; 	Heater 0 model: gain 241.4, time constant 867.3, dead time 8.0, max PWM 1.00, mode: PID
; 	Heater 0 model: gain 242.4, time constant 907.5, dead time 6.0, max PWM 1.00, mode: PID
; Then set the M307 parameters with a rough average
M307 H0 A242 C885 D7.0 B0 			; Set model parameters for heater 0 and use PID mode?

; Hot End Heater (H1) (settings are for my E3D Lite 6 with silent (i.e. CFM) 40mm fan)
M143 H1 S245					; Set maximum heater temperature to 245C
M305 P1 T100000 B4725 C7.06e-8 R4700		; Set thermistor + ADC parameters for heater 1

; Here I record the results of all my 'M303 H1 S240' autotunes ********* FOR E3D Lite6 **********
	; Heater 1 model: gain 548.7, time constant 248.3, dead time 6.5, max PWM 1.00, mode: PID
	; 
	; 
; Then I set the M307 parameters with a rough average
M307 H1 A550.0 C250.0 D6.5 B0 			; Set model parameters for heater 1 and use PID mode

; Extruders
; I have a dual extruder, single hotend setup.  I use this Y adapter and some gcode to switch filaments:
; https://www.seemecnc.com/products/2-into-1-dual-filament-feed-adapter-fitting-only

; Tool/Extruder 0
M563 P0 D0 H1		; Tool 0 uses Drive 0 and Heater 1
G10 P0 X0 Y0 Z0 	; Set Tool 0 axis offsets
G10 P0 R0 S0 		; Set Tool 0's initial active and standby temperatures to 0C

; Tool/Extruder 1	
M563 P1 D1 H1		; Tool 1 uses Drive 1 and Heater 1
G10 P1 X0 Y0 Z0 	; Set Tool 1 axis offsets
G10 P1 R0 S0 		; Set Tool 1's initial active and standby temperatures to 0C

T0			; select Tool/Extruder 0 by default

; Fans
M106 P0 S0 I0 F500 H-1		; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S0 I0 F500 H1 T45 	; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S0 I0 F500 H1 T45 	; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on


; ******************************* STORAGE FOR E3D V6 **************************************

; Hot End Heater (H1) (settings are for my E3D V6 with silent (i.e. CFM) 40mm fan)
;M143 H1 S290					; Set maximum heater temperature to 290C
;M305 P1 T100000 B4725 C7.06e-8 R4700		; Set thermistor + ADC parameters for heater 1
;
; Here I record the results of all my 'M303 H1 S280' autotunes *********** FOR E3D V6 ***********
	; Heater 1 model: gain 449.7, time constant 198.2, dead time 4.5, max PWM 1.00, mode: PID
	; Heater 1 model: gain 431.7, time constant 188.1, dead time 4.5, max PWM 1.00, mode: PID
	; Heater 1 model: gain 453.0, time constant 202.4, dead time 4.0, max PWM 1.00, mode: PID
; Then I set the M307 parameters with a rough average
;M307 H1 A445.0 C195.0 D4.3 B0 			; Set model parameters for heater 1 and use PID mode