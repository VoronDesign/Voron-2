; Configuration file for Duet WiFi (firmware version 1.21 or newer)
; executed by the firmware on start-up

; General preferences
M111 S0 ; Debugging off
G21     ; Work in millimetres
G90     ; Send absolute coordinates...
M83     ; ...but relative extruder moves
M555 P2 ; Set firmware compatibility to look like Marlin
M575 P1 B57600 S1 ; Comms parameters for PanelDue
M564 S1 H1 ; Forbid axis movements when not homed

; General setup
M667 S1                ; Select CoreXY mode
M208 X-10 Y0 Z0 S1     ; Set axis minima
M208 X314 Y309 Z275 S0 ; Set axis maxima

; Endstops
M574 X2 Y2 Z0 S1 ; Set active high for x and y, no Z endstop

; Zprobe
M98 P"/macros/probe_scripts/activate_z_probe.g"

; --- drive map ---
;    _______
;   | 6 | 7 |
;   | ----- |
;   | 5 | 8 |
;    -------
;     front

; Drive directions
M569 P0 S1 ; A          ; todo, fix the wiring... A & B should be the same
M569 P1 S0 ; B
M569 P3 S1 ; Extruder #1
M569 P4 S0 ; Extruder #2
M569 P5 S0 ; Z1
M569 P6 S1 ; Z2
M569 P7 S0 ; Z3
M569 P8 S1 ; Z4

; Motor mapping and steps per mm
M584 X0 Y1 Z5:6:7:8 E3:4
M350 X16 Y16 Z16 E16:16 I1 ; Configure microstepping with interpolation
;M350 Z16 I0 ; disable Z interpolation
M92 X160 Y160 Z400 E560:560 ; Set steps per mm

; Accelerations and speed
M98 P"/macros/print_scripts/speed_printing.g"

; Firmware retract
M207 S4 F9000 T6000 Z0.5 		; Set Firmware Retraction

; Drive currents
M98 P"/macros/print_scripts/xy_current_high.g"	; XY (AB) currents high
M98 P"/macros/print_scripts/z_current_high.g"   ; Z currents high
M906 E1000                                      ; E current
M906 I30                                        ; idle current percentage
M84 S120                                        ; Set idle timeout

; Bed Heater
M305 P0 R4700 T100000 B3950                     ; Set thermistor + ADC parameters for heater 0
M307 H0 A90.0 C700.0 D10.0 S1.00 B1             ; Bang-bang bed
;M307 H0 A297.3 C955.5 D1.2 S1.00 V24.6 B0       ; PID bed
M143 H0 S120                                    ; Set temperature limit for bed heater to 120C

; Hotend #1 Heater
;M305 P1 R4700 T100000 B4725 C0.0000000706       ; Set thermistor + ADC parameters for heater 1
;M307 H1 A454.1 C235.9 D4.5 S1.00 B0             ; 104GT2 PID, 30W heater
M305 P1 X200                                    ; 1st nozzle is PT100, first channel
;M307 H1 A568.8 C203.2 D4.0 S1.00 V24.5 B0       ; E3D V6 + PT100 PID, 30W heater
;M307 H1 A365.9 C236.7 D4.9 S1.00 V24.5 B0       ; E3D Volcano + PT100 PID, 30W heater
M143 H1 S300                                    ; Set temperature limit for heater 1 to 300C

; Hotend #2 Heater
;M305 P2 R4700 T100000 B4725 C0.0000000706       ; Set thermistor + ADC parameters for heater 2
;M307 H2 A454.1 C235.9 D4.5 S1.00 B0             ; 104GT2 PID, 30W heater
;M307 H2 A568.8 C203.2 D4.0 S1.00 V24.5 B0       ; PT100 PID, 30W heater
M305 P2 X201                                    ; PT100, second channel
M143 H2 S300                                    ; Set temperature limit for heater 2 to 300C

M305 S"Bed plate" P103 X3 R4700 T100000 B3950   ; Set thermistor for MIC6 plate
M305 S"Ambient" P104 X405 T21                   ; Set DHT21 for chamber temp
M305 S"Humidity [%]" P105 X455 T21              ; Set DHT21 for chamber humidity

; disable unused heaters (so they are hidden on the PanelDue)
M307 H2 A-1 C-1 D-1
M307 H3 A-1 C-1 D-1
M307 H4 A-1 C-1 D-1
M307 H5 A-1 C-1 D-1
M307 H6 A-1 C-1 D-1
M307 H7 A-1 C-1 D-1

; Tools
M563 P0 D0 H1 F4 ; Define tool 0, use fan #4 for M106
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0    ; Set initial tool 0 active and standby temperatures to 0C

; Network
M550 PVoron V2.015 ; Set machine name
M552 S1            ; Enable network
M586 P0 S1         ; Enable HTTP
M586 P1 S1         ; Enable FTP
M586 P2 S0         ; Disable Telnet

; Fans
M106 P3 S1 I0 F20 H1 T50 ; Hotend fan, 20 Hz, turns on if temperature sensor 1 reaches 50 degrees
M106 P4 S0 I0 F250 H-1   ; Part cooling fan 250 hz, no thermostatic control
;M106 P5 T45:65 F50 H100:101:102 ; Electronics bay fan, turn on gradually if MCU is over 45C or any TMC driver is over temp

; Bed
M671 X-65:-65:365:365 Y-20:380:380:-20 S20 ; Define z belt locations (Front_Left, Back_Left, Back_Right, Front_Right)
;M557 X20:280 Y10:290 S40                   ; Define mesh grid
M557 X25:275 Y40:290 S50                   ; Define mesh grid

; Pressure advance
;M572 D0 S0.3

M501  ; load config-override.g
T0    ; select tool 0