;; system and network --------------------------------------

M550 Pvoron2    ; hostname
M552 S1         ; start network module (must have been configured first with M587)

M555 P2         ; set Marlin output mode

G21             ; millimeter units
G90             ; absolute tool coordinates
M83             ; relative extruder coordinates


;; geometry ------------------------------------------------

M667 S1                 ; corexy mode
M208 X0 Y0 Z0 S1        ; S1 = set axes minima
M208 X250 Y250 Z250 S0  ; S0 = set axes maxima
M574 X2 Y2 Z0 S0        ; endstops

M557 X25:225 Y25:225 S50    ; configure z probing grid for mesh compensation
                            ; (not used normally, but configures probing for the graphical bed report)

M98 P"/macros/zprobe/use_mfast.g"
M98 P"/macros/zprobe/use_ifast.g"


;; drive ---------------------------------------------------

;; Motor layout:
;;  E0 E1
;;  YB XA
;;  Z2 Z3
;;  Z0 Z1

M584 X0 Y1 Z5:6:7:8 E3:4:2                  ; motor bindings
M671 X-55:310:-55:310 Y0:0:330:330 S20    ; Z drive positions

M569 P0 S0      ; X motor direction
M569 P1 S0      ; Y motor direction
M569 P5 S0      ; Z-- motor direction
M569 P6 S1      ; Z+- motor direction
M569 P7 S1      ; Z-+ motor direction
M569 P8 S0      ; Z++ motor direction
M569 P3 S0      ; E0 motor direction
M569 P4 S0      ; E1 motor direction
M569 P2 S0      ; E2 motor direction
M84 S86400                          ; motor idle timeout
M906 I0                             ; motor idle current percentage
M350 X16 Y16 Z16 E16 I1             ; set microstepping
M92 X80 Y80 Z400 E560               ; set microsteps per mm for 1.8-degree steppers

;; velocity, acceleration, and current settings are in these macros
M98 P"/macros/drive/xy_fullcurrent.g"
M98 P"/macros/drive/z_fullcurrent.g"
M98 P"/macros/drive/e_fullcurrent.g"


;; firmware retraction -------------------------------------

;; To support changing toolheads and firmware retraction profiles,
;; the firmware retraction parameters are stored in
;; /macros/retraction/*.g
;; Running those scripts will write back to the /sys/restore_retraction.g file.
;; We run that file on startup, which enables retraction selection to be maintained across reboots.
M98 P"/sys/restore_retraction.g"


;; thermal -------------------------------------------------

;M912 P0 S-0.0                           ; adjust MCU thermistor offset

;; Sample thermistor values:
;; China thermistor (TL, Keenovo, etc.)
;;   R4700 T100000 B395
;; E3D thermistor
;;   R4700 T100000 B4725 C7.06E-8

M305 P0 R4700 T100000 B3950             ; bed thermistor
M143 H0 S120                            ; bed cutoff temp
M570 H0 T10 S180                        ; heater fault timeout

M305 P1 R4700 T100000 B4725 C7.06E-8    ; tool 0 thermistor
M143 H1 S280                            ; tool 0 temp cutoff
M570 H1 T10 S120                        ; heater fault timeout

;M305 P2 R4700 T100000 B3950             ; tool 1 thermistor
;M143 H2 S280                            ; tool 1 temp cutoff
;M570 H2 T10 S120                        ; heater fault timeout

;M305 P3 R4700 T100000 B3950             ; chamber thermistor
;M141 H3                                 ; bind chamber sensor

M305 P101 S"Duet Drivers"               ; name and enable display of Duet stepper drivers
M305 P102 S"Duex Drivers"               ; name and enable display of Duex stepper drivers

M106 P0 S0 ; C"Part" ; don't name part fan or it will show up twice in the UI
M106 P1 T40:70 H1:2 C"Tool"
M106 P2 T35:55 H100:101:102 B1.0 L0.2 C"Electronics"
M106 P3 S0 C"Chamber"
;M106 P8 B0 L0 S0.2 C"Lights"

;; Bed autotune
;; M303 H0 S100
;; Show parameters
;; M307 H0
M307 H0 A271.6 C790.8 D1.6 S1.00 V24.3 B0

;; To support changing toolheads, the tool heater parameters are stored in
;; /macros/heating/toolhead_*.g
;; Running those scripts will write back to the /sys/restore_tool_heater.g file.
;; We run that file on startup, which enables tool heater selection to be maintained across reboots.
M98 P"/sys/restore_tool_heater.g"


;; tools ---------------------------------------------------

M563 P0 D0 H1       ; bind tool 0 to drive and heater
G10 P0 X0 Y0 Z0     ; tool offset
G10 P0 S0 R0        ; tool active and standby temp
;M591 D0 P2 C3 S1    ; filament detector

;M563 P1 D1 H2      ; bind tool 1 to drive and heater
;G10 P1 X0 Y0 Z0    ; tool offset
;G10 P1 S0 R0       ; tool active and standby temp
;M591 D1 P2 C4 S1    ; filament detector

T0                  ; activate tool 0
