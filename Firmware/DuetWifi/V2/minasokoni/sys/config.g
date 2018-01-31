; Configuration file for Duet WiFi (firmware version 1.20 or newer)
; executed by the firmware on start-up

; --- general preferences ---
M111 S0                                            ; debugging off
G21                                                ; work in millimetres
G90                                                ; send absolute coordinates
M83                                                ; relative extruder moves
M555 P2                                            ; set firmware compatibility to look like Marlin

M667 S1                                            ; select CoreXY mode
M208 X0 Y0 Z0 S1                                   ; set axis minima to end of safe travel.
M208 X350 Y350 Z350 S0                             ; set axis maxima to match endstop location.

; --- endstops ---
M574 X2 Y2 Z0 S1

M558 P4 I1 X0 Y0 Z1 H5 F500 T18000
G31 P1000 X0 Y20 Z-0.25                             ; PL-08N sensor - pei sheet
M557 X60:310 Y60:310 S50                       			; S25 for high density, S50 for testing

; --- z-axis stepper leveling configuration ---
M584 X0 Y1 E3 Z2:5:6:7 															; four motors, at 2, 5, 6, and 7
M671 X-60:-60:410:410 Y-10:65:65:-10 S40 						; Z belts at 4 corners

; --- drive map ---
;    _______
;   | 5 | 6 |
;   | ----- |
;   | 2 | 7 |
;    -------
;     front

; --- drives ---
M569 P0 S1																					; X Motor goes forwards
M569 P1 S1																					; Y Motor goes forwards
M569 P2 S0																					; Z Motor goes backwards - Z2
M569 P3 S1																					; E0 Motor goes forwards
M569 P4 S1																					; E1 Motor goes forwards
; duex
M569 P5 S1																					; E5 Motor goes forwards - Z5
M569 P6 S0																					; E6 Motor goes backwards - Z6
M569 P7 S1																					; E7 Motor goes forwards - Z7



M350 X16 Y16 Z16 E16 I1			                        ; microstepping with interpolation (I1)
M92  X80 Y80 Z160 E302		                          ; steps per mm ;E608 - Voron Extruder, E415 Bondtech BMG
M566 X1000 Y1000 Z100 E500		                      ; maximum instantaneous speed changes (mm/min) (jerk)
M203 X18000 Y18000 Z1000 E9000		                  ; maximum speeds (mm/min)
M201 X3000 Y3000 Z500 E3000		                      ; accelerations
M906 X1200 Y1200 Z1200 E800 I40		                  ; motor currents (mA) and motor idle factor in per cent
M84 S60 				                                    ; set idle timeout

; --- firmware retraction ---
M207 S7.0 R0.0 F6000 T6000 Z1.0		                  ; [ Snnn positive length to retract, in mm ]
					                                          ; [ Rnnn positive or negative additional length to un-retract, in mm ]
					                                          ; [ Fnnn retraction feedrate, in mm/min ]
					                                          ; [ Tnnn feedrate for un-retraction if different from retraction, mm/min ]
					                                          ; [ Znnn additional zlift/hop ]

; --- heaters ---
M305 P0 T100000 B4138 C0 R4700                      ; set thermistor + ADC parameters for heater 0
M143 H0 S120                                        ; set temperature limit for heater 0 to 120C
M305 P1 T100000 B4138 C0 R4700                      ; set thermistor + ADC parameters for heater 1
M143 H1 S280                                        ; set temperature limit for heater 1 to 280C

; --- tools ---
M563 P0 D0 H1                                       ; define tool 0
G10 P0 X0 Y0 Z0                                     ; set tool 0 axis offsets
G10 P0 R0 S0                                        ; set initial tool 0 active and standby temperatures to 0C

; --- network ---
M550 PVoron 2                                       ; set machine name
M552 S1                                             ; enable network
M587 S"Skynet" P"9675309jenny"                      ; configure access point. You can delete this line once connected
M586 P0 S1                                          ; enable HTTP
M586 P1 S1                                          ; enable FTP
M586 P2 S0                                          ; disable Telnet

; --- fans ---
M106 P0 S0 I0 F500 H-1                              ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S0 I0 F500 H-1                              ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned off

; --- leds ---
M106 P3 S1                                          ; set fan 3 value for our LED to on.
