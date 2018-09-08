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

M558 P4 H6 I1 F500 T18000 A5 S0.025 B1              ; PL-08N sensor multi-probe settings
G31 P200 X0 Y20 Z1.43                               ; PL-08N sensor - PEI sheet
M557 X60:310 Y60:310 S50                       			; S25 for high density, S50 for testing

; --- z-axis stepper leveling configuration ---
M584 X0 Y1 E3 Z5:6:7:8                              ; four motors, at 5, 6, 7, and 8
M671 X-60:-60:410:410 Y-10:360:360:-10 S20          ; Z belts at 4 corners

; --- drive map ---
;    _______
;   | 6 | 7 |
;   | ----- |
;   | 5 | 8 |
;    -------
;     front

; --- drives ---
M569 P0 S1	; X
M569 P1 S1	; Y
M569 P2 S0	; Z
M569 P3 S1	; E0
M569 P4 S1	; E1
; -- duex --
M569 P5 S0  ; Z5
M569 P6 S1	; Z6
M569 P7 S0	; Z7
M569 P8 S1	; Z8



M350 X16 Y16 Z16 E16 I1			                        ; microstepping with interpolation (I1)
M92  X80 Y80 Z160 E302		                          ; steps per mm - with mobius extruder
M566 X1000 Y1000 Z100 E500		                      ; maximum instantaneous speed changes (mm/min) (jerk)
M203 X18000 Y18000 Z1000 E9000		                  ; maximum speeds (mm/min)
M201 X3000 Y3000 Z500 E3000		                      ; accelerations
M906 X1300 Y1300 Z1300 E1000 I40		                ; motor currents (mA) and motor idle factor in per cent
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
M586 P0 S1                                          ; enable HTTP
M586 P1 S1                                          ; enable FTP
M586 P2 S0                                          ; disable Telnet

; --- fans ---
M106 P0 S255 I0 F10 H1 T50                          ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S255 I0 F10 H1 T50                          ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned off

; --- RGB leds - White ---
; M106 P3 S1 ; V+
; M106 P4 S1 ; R-
; M106 P5 S1 ; G-
; M106 P6 S1 ; B-
