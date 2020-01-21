;; system and network --------------------------------------

M550 PVoron 2.2	; hostname
M552 S1			; start network module (must have been configured first with M587)
M586 P2 S1 R23 T0	; enable telnet
M586 P1 S1 R20 T0	; enable ftp
M555 P2			; set Marlin output mode

G21			; millimeter units
G90			; absolute tool coordinates
M83			; relative extruder coordinates


;; geometry ------------------------------------------------

M667 S1                 ; corexy mode
M208 X0 Y0 Z-3 S1	; S1 = set axes minima
M208 X302 Y301 Z270 S0  ; S0 = set axes maxima
M574 X2 Y2 Z0 S1        ; endstops

M557 X10:290 Y25:285 S20    ; configure z probing grid for mesh compensation

M98 P"/macros/zprobe/use_mfast.g"
M98 P"/macros/zprobe/use_ifast.g"


;; drive ---------------------------------------------------

;; Motor layout:
;;  E0 E1
;;  YB XA
;;  Z2 Z3
;;  Z0 Z1

M584 X0 Y2 Z5:6:8:9 E4				; motor bindings
M671 X-65:365:-65:365 Y-10:-10:375:375 S20	; Z leadscrews positions

M569 P0 S1      ; X motor direction
M569 P1 S1      ; Y motor direction
M569 P5 S1      ; Z-- motor direction
M569 P6 S0      ; Z+- motor direction
M569 P8 S0      ; Z++ motor direction
M569 P9 S1      ; Z++ motor direction
M569 P4 S0      ; E0 motor direction

M84 S3600                           ; motor idle timeout
M906 I50                            ; motor idle current percentage
M350 X16 Y16 Z16 E16 I1             ; set microstepping
M92 X160 Y160 Z400 E1120           ; set microsteps per mm for 0.9-degree steppers

;; velocity, acceleration, and current settings are in these macros
M98 P"/macros/drive/xy_fullcurrent.g"
M98 P"/macros/drive/z_fullcurrent.g"
M98 P"/macros/drive/e_fullcurrent.g"


;; firmware retraction -------------------------------------

;; Choose one as your default:
M98 P"/macros/retraction/quiet_nozhop.g
;M98 P"/macros/retraction/quiet_zhop.g
;M98 P"/macros/retraction/pa_nozhop.g"
;M98 P"/macros/retraction/pa_zhop.g"

;; thermal -------------------------------------------------

;Bed
M308 S0 P"bedtemp" Y"thermistor" R4700 T100000 B3950 ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"bedheat" T0                           ; create bed heater output on out0 and map it to sensor 0
M143 H0 S120                                 ; set temperature limit for heater 0 to 120C
;M307 H0 B0 S1.00                             ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0   

;HotEnd
M308 S1 P"spi.cs1" Y"rtdmax31865"              ; configure sensor 1 as thermocouple via CS pin spi.cs1
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M143 H1 S315                                  ; set temperature limit for heater 1 to 275C
;M307 H1 B0 S1.00                               ; disable bang-bang mode for the nozzle heater and set PWM limit

;Chamber 
M308 S2 P"e1temp" Y"thermistor" R4700 T100000 B4138 A"Chamber"		;Chamber fan
M950 H2 C"exp.heater4" T2						;Chamber Assigned to unused Heater port to show on front page
M141 H2									;Assign as chamber heater

;; M303 H1 S235 ; run autotune
;; M500 to save autotune results to config-override.g,
;; then move the heater config lines from config-override.g here.
;; (Delete them from config-override.g, or you will be confused when changing this file doesn't work.)

;PID Settings
M307 H2 B1 S0.01 V23.7							;PID for chamber set to reduce chance of faults with no heater
M307 H0 A301.0 C845.3 D1.4 S1.00 V23.6 B0		
;M307 H1 A482.6 C291.7 D5.5 S1.00 V23.6 B0 ;V6
M307 H1 A395.7 C171.7 D2.3 S1.00 V23.6 B0 ; Mosquito w/ sock

;Misc
M912 P0 S-8 ;MCU tempurature sensor correction


;; fans -------------------------------------------------
;Parts
M950 F0 C"fan0" Q500
M106 P0 S0 F300                ; part fan

;Hot End
M950 F1 C"fan1" Q500
M106 P1 T60 H1           ; hotend fan PWMED DOWN

;Board cooling
M950 F3 C"duex.fan3" Q500
;M106 P3 T40:50 L180 X255 F60 B1.5 H100:101:102		; On when MCU temp (vh 100) reaches 45C
M106 P3 S255


;; tools ---------------------------------------------------

M563 P0 D0 H1       ; bind tool 0 to drive and heater
G10 P0 X0 Y0 Z0     ; tool offset
G10 P0 S0 R0        ; tool active and standby temp

T0                  ; activate tool 0


;; filament sensor ---------------------------------------
;M591 D0 P3 C3 S0 R75:125 L24.8 E3.0 ; Duet3D rotating magnet sensor for extruder drive 0 is connected to E0 endstop input, enabled, sensitivity 24.8mm.rev, 85% to 115% tolerance, 3mm detection length


;; led Lighting---------------------------------------------------
M950 P7 C"exp.heater7" Q3000
;M307 H7 A-1 C-1 D-1
M42 P7 S0.85	;top led

;M307 H6 A-1 C-1 D-1
M950 P6 C"exp.heater6" Q3000
M42 P6 S0.99   ;gantry led