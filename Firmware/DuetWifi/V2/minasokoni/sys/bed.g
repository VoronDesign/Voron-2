; bed.g

M561                                  ; clear any bed transform
G28 XY                                ; home XY (homex.g, homey.g)
G91                                   ; relitive positioning
G0 Z10                                ; move gantry up 10mm
G90                                   ; absolute positioning
G1 X185 Y185 F9000                    ; move to center of bed (350,350)
G30                                   ; set Z home for gantry leveling routine

; --- probe the bed at 4 points ---
G30 P0 X96 Y131 H0 Z-99999
G30 P1 X96 Y272 H0 Z-99999
G30 P2 X253 Y272 H0 Z-99999
G30 P3 X253 Y131 H0 Z-99999 S4

M561                                  ; clear any bed transform
G28 Z                                 ; home Z (homez.g)

; --- switch back to inductive Z probe ---
M558 P4 I1 X0 Y0 Z1 H5 F500 T18000
G31 P1000 X0 Y20 Z-0.85
