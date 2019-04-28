; ### Marlin K-Factor Calibration Pattern ###
; (manually patched to work on RRF)
; -------------------------------------------
;
; Created: Sat Apr 27 2019 10:37:24 GMT-0400 (Eastern Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 205 °C
; Bed Temperature = 70 °C
; Retraction Distance = 1 mm
; Layer Height = 0.3 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 300 mm
; Bed Size Y = 300 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 5400 mm/min
; Movement Speed = 18000 mm/min
; Retract Speed = 4800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis = 900
; Jerk Y-axis = 900
; Jerk Z-axis = 60
; Jerk Extruder = 500
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 1
; Factor Stepping = 0.05
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = true
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S205 ; set nozzle temperature but do not wait
M190 S70 ; set bed temperature and wait
M109 S205 ; block waiting for nozzle temp

G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X150 Y150 F18000 ; move to start
G1 Z0.3 F1200 ; move to layer height
;
; prime nozzle
;
G1 X101 Y87.5 F18000 ; move to start
G1 X101 Y212.5 E18.7088 F1800 ; print line
G1 X101.72 Y212.5 F18000 ; move to start
G1 X101.72 Y87.5 E18.7088 F1800 ; print line
G10 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X111 Y87.5 F18000 ; move to start
M572 D0 S0 ; set K-factor
G11 ; un-retract
G1 X131 Y87.5 E1.1974 F1200 ; print line
G1 X171 Y87.5 E2.3947 F5400 ; print line
G1 X191 Y87.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y92.5 F18000 ; move to start
M572 D0 S0.05 ; set K-factor
G11 ; un-retract
G1 X131 Y92.5 E1.1974 F1200 ; print line
G1 X171 Y92.5 E2.3947 F5400 ; print line
G1 X191 Y92.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y97.5 F18000 ; move to start
M572 D0 S0.1 ; set K-factor
G11 ; un-retract
G1 X131 Y97.5 E1.1974 F1200 ; print line
G1 X171 Y97.5 E2.3947 F5400 ; print line
G1 X191 Y97.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y102.5 F18000 ; move to start
M572 D0 S0.15 ; set K-factor
G11 ; un-retract
G1 X131 Y102.5 E1.1974 F1200 ; print line
G1 X171 Y102.5 E2.3947 F5400 ; print line
G1 X191 Y102.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y107.5 F18000 ; move to start
M572 D0 S0.2 ; set K-factor
G11 ; un-retract
G1 X131 Y107.5 E1.1974 F1200 ; print line
G1 X171 Y107.5 E2.3947 F5400 ; print line
G1 X191 Y107.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y112.5 F18000 ; move to start
M572 D0 S0.25 ; set K-factor
G11 ; un-retract
G1 X131 Y112.5 E1.1974 F1200 ; print line
G1 X171 Y112.5 E2.3947 F5400 ; print line
G1 X191 Y112.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y117.5 F18000 ; move to start
M572 D0 S0.3 ; set K-factor
G11 ; un-retract
G1 X131 Y117.5 E1.1974 F1200 ; print line
G1 X171 Y117.5 E2.3947 F5400 ; print line
G1 X191 Y117.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y122.5 F18000 ; move to start
M572 D0 S0.35 ; set K-factor
G11 ; un-retract
G1 X131 Y122.5 E1.1974 F1200 ; print line
G1 X171 Y122.5 E2.3947 F5400 ; print line
G1 X191 Y122.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y127.5 F18000 ; move to start
M572 D0 S0.4 ; set K-factor
G11 ; un-retract
G1 X131 Y127.5 E1.1974 F1200 ; print line
G1 X171 Y127.5 E2.3947 F5400 ; print line
G1 X191 Y127.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y132.5 F18000 ; move to start
M572 D0 S0.45 ; set K-factor
G11 ; un-retract
G1 X131 Y132.5 E1.1974 F1200 ; print line
G1 X171 Y132.5 E2.3947 F5400 ; print line
G1 X191 Y132.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y137.5 F18000 ; move to start
M572 D0 S0.5 ; set K-factor
G11 ; un-retract
G1 X131 Y137.5 E1.1974 F1200 ; print line
G1 X171 Y137.5 E2.3947 F5400 ; print line
G1 X191 Y137.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y142.5 F18000 ; move to start
M572 D0 S0.55 ; set K-factor
G11 ; un-retract
G1 X131 Y142.5 E1.1974 F1200 ; print line
G1 X171 Y142.5 E2.3947 F5400 ; print line
G1 X191 Y142.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y147.5 F18000 ; move to start
M572 D0 S0.6 ; set K-factor
G11 ; un-retract
G1 X131 Y147.5 E1.1974 F1200 ; print line
G1 X171 Y147.5 E2.3947 F5400 ; print line
G1 X191 Y147.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y152.5 F18000 ; move to start
M572 D0 S0.65 ; set K-factor
G11 ; un-retract
G1 X131 Y152.5 E1.1974 F1200 ; print line
G1 X171 Y152.5 E2.3947 F5400 ; print line
G1 X191 Y152.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y157.5 F18000 ; move to start
M572 D0 S0.7 ; set K-factor
G11 ; un-retract
G1 X131 Y157.5 E1.1974 F1200 ; print line
G1 X171 Y157.5 E2.3947 F5400 ; print line
G1 X191 Y157.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y162.5 F18000 ; move to start
M572 D0 S0.75 ; set K-factor
G11 ; un-retract
G1 X131 Y162.5 E1.1974 F1200 ; print line
G1 X171 Y162.5 E2.3947 F5400 ; print line
G1 X191 Y162.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y167.5 F18000 ; move to start
M572 D0 S0.8 ; set K-factor
G11 ; un-retract
G1 X131 Y167.5 E1.1974 F1200 ; print line
G1 X171 Y167.5 E2.3947 F5400 ; print line
G1 X191 Y167.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y172.5 F18000 ; move to start
M572 D0 S0.85 ; set K-factor
G11 ; un-retract
G1 X131 Y172.5 E1.1974 F1200 ; print line
G1 X171 Y172.5 E2.3947 F5400 ; print line
G1 X191 Y172.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y177.5 F18000 ; move to start
M572 D0 S0.9 ; set K-factor
G11 ; un-retract
G1 X131 Y177.5 E1.1974 F1200 ; print line
G1 X171 Y177.5 E2.3947 F5400 ; print line
G1 X191 Y177.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y182.5 F18000 ; move to start
M572 D0 S0.95 ; set K-factor
G11 ; un-retract
G1 X131 Y182.5 E1.1974 F1200 ; print line
G1 X171 Y182.5 E2.3947 F5400 ; print line
G1 X191 Y182.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X111 Y187.5 F18000 ; move to start
;
; mark the test area for reference
;
M572 D0 S0 ; set K-factor 0
G1 X131 Y192.5 F18000 ; move to start
G11 ; un-retract
G1 X131 Y212.5 E1.1974 F1200 ; print line
G10 ; retract
G1 X171 Y192.5 F18000 ; move to start
G11 ; un-retract
G1 X171 Y212.5 E1.1974 F1200 ; print line
G10 ; retract

;
; print K-values
;
G1 X193 Y85.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y85.5 E0.1197 F1200 ; 0
G1 X195 Y87.5 E0.1197 F1200 ; 0
G1 X195 Y89.5 E0.1197 F1200 ; 0
G1 X193 Y89.5 E0.1197 F1200 ; 0
G1 X193 Y87.5 E0.1197 F1200 ; 0
G1 X193 Y85.5 E0.1197 F1200 ; 0
G10 ; retract

G1 X193 Y95.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y95.5 E0.1197 F1200 ; 0
G1 X195 Y97.5 E0.1197 F1200 ; 0
G1 X195 Y99.5 E0.1197 F1200 ; 0
G1 X193 Y99.5 E0.1197 F1200 ; 0
G1 X193 Y97.5 E0.1197 F1200 ; 0
G1 X193 Y95.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y95.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y95.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y95.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y97.5 E0.1197 F1200 ; 1
G1 X197 Y99.5 E0.1197 F1200 ; 1
G10 ; retract

G1 X193 Y105.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y105.5 E0.1197 F1200 ; 0
G1 X195 Y107.5 E0.1197 F1200 ; 0
G1 X195 Y109.5 E0.1197 F1200 ; 0
G1 X193 Y109.5 E0.1197 F1200 ; 0
G1 X193 Y107.5 E0.1197 F1200 ; 0
G1 X193 Y105.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y105.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y105.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y105.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y107.5 F18000 ; move to start
G1 X197 Y109.5 F18000 ; move to start
G1 X199 Y109.5 E0.1197 F1200 ; 2
G1 X199 Y107.5 E0.1197 F1200 ; 2
G1 X197 Y107.5 E0.1197 F1200 ; 2
G1 X197 Y105.5 E0.1197 F1200 ; 2
G1 X199 Y105.5 E0.1197 F1200 ; 2
G10 ; retract

G1 X193 Y115.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y115.5 E0.1197 F1200 ; 0
G1 X195 Y117.5 E0.1197 F1200 ; 0
G1 X195 Y119.5 E0.1197 F1200 ; 0
G1 X193 Y119.5 E0.1197 F1200 ; 0
G1 X193 Y117.5 E0.1197 F1200 ; 0
G1 X193 Y115.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y115.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y115.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y115.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y117.5 F18000 ; move to start
G1 X197 Y119.5 F18000 ; move to start
G1 X199 Y119.5 E0.1197 F1200 ; 3
G1 X199 Y117.5 E0.1197 F1200 ; 3
G1 X199 Y115.5 E0.1197 F1200 ; 3
G1 X197 Y115.5 E0.1197 F1200 ; 3
G1 X197 Y117.5 F18000 ; move to start
G1 X199 Y117.5 E0.1197 F1200 ; 3
G10 ; retract

G1 X193 Y125.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y125.5 E0.1197 F1200 ; 0
G1 X195 Y127.5 E0.1197 F1200 ; 0
G1 X195 Y129.5 E0.1197 F1200 ; 0
G1 X193 Y129.5 E0.1197 F1200 ; 0
G1 X193 Y127.5 E0.1197 F1200 ; 0
G1 X193 Y125.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y125.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y125.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y125.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y127.5 F18000 ; move to start
G1 X197 Y129.5 F18000 ; move to start
G1 X197 Y127.5 E0.1197 F1200 ; 4
G1 X199 Y127.5 E0.1197 F1200 ; 4
G1 X199 Y129.5 F18000 ; move to start
G1 X199 Y127.5 E0.1197 F1200 ; 4
G1 X199 Y125.5 E0.1197 F1200 ; 4
G10 ; retract

G1 X193 Y135.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y135.5 E0.1197 F1200 ; 0
G1 X195 Y137.5 E0.1197 F1200 ; 0
G1 X195 Y139.5 E0.1197 F1200 ; 0
G1 X193 Y139.5 E0.1197 F1200 ; 0
G1 X193 Y137.5 E0.1197 F1200 ; 0
G1 X193 Y135.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y135.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y135.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y135.5 F18000 ; move to start
G11 ; un-retract
G1 X199 Y135.5 E0.1197 F1200 ; 5
G1 X199 Y137.5 E0.1197 F1200 ; 5
G1 X197 Y137.5 E0.1197 F1200 ; 5
G1 X197 Y139.5 E0.1197 F1200 ; 5
G1 X199 Y139.5 E0.1197 F1200 ; 5
G10 ; retract

G1 X193 Y145.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y145.5 E0.1197 F1200 ; 0
G1 X195 Y147.5 E0.1197 F1200 ; 0
G1 X195 Y149.5 E0.1197 F1200 ; 0
G1 X193 Y149.5 E0.1197 F1200 ; 0
G1 X193 Y147.5 E0.1197 F1200 ; 0
G1 X193 Y145.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y145.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y145.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y145.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y147.5 F18000 ; move to start
G1 X199 Y147.5 E0.1197 F1200 ; 6
G1 X199 Y145.5 E0.1197 F1200 ; 6
G1 X197 Y145.5 E0.1197 F1200 ; 6
G1 X197 Y147.5 E0.1197 F1200 ; 6
G1 X197 Y149.5 E0.1197 F1200 ; 6
G1 X199 Y149.5 E0.1197 F1200 ; 6
G10 ; retract

G1 X193 Y155.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y155.5 E0.1197 F1200 ; 0
G1 X195 Y157.5 E0.1197 F1200 ; 0
G1 X195 Y159.5 E0.1197 F1200 ; 0
G1 X193 Y159.5 E0.1197 F1200 ; 0
G1 X193 Y157.5 E0.1197 F1200 ; 0
G1 X193 Y155.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y155.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y155.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y155.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y157.5 F18000 ; move to start
G1 X197 Y159.5 F18000 ; move to start
G1 X199 Y159.5 E0.1197 F1200 ; 7
G1 X199 Y157.5 E0.1197 F1200 ; 7
G1 X199 Y155.5 E0.1197 F1200 ; 7
G10 ; retract

G1 X193 Y165.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y165.5 E0.1197 F1200 ; 0
G1 X195 Y167.5 E0.1197 F1200 ; 0
G1 X195 Y169.5 E0.1197 F1200 ; 0
G1 X193 Y169.5 E0.1197 F1200 ; 0
G1 X193 Y167.5 E0.1197 F1200 ; 0
G1 X193 Y165.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y165.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y165.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y165.5 F18000 ; move to start
G11 ; un-retract
G1 X197 Y167.5 F18000 ; move to start
G1 X199 Y167.5 E0.1197 F1200 ; 8
G1 X199 Y165.5 E0.1197 F1200 ; 8
G1 X197 Y165.5 E0.1197 F1200 ; 8
G1 X197 Y167.5 E0.1197 F1200 ; 8
G1 X197 Y169.5 E0.1197 F1200 ; 8
G1 X199 Y169.5 E0.1197 F1200 ; 8
G1 X199 Y167.5 E0.1197 F1200 ; 8
G10 ; retract

G1 X193 Y175.5 F18000 ; move to start

G11 ; un-retract
G1 X195 Y175.5 E0.1197 F1200 ; 0
G1 X195 Y177.5 E0.1197 F1200 ; 0
G1 X195 Y179.5 E0.1197 F1200 ; 0
G1 X193 Y179.5 E0.1197 F1200 ; 0
G1 X193 Y177.5 E0.1197 F1200 ; 0
G1 X193 Y175.5 E0.1197 F1200 ; 0
G10 ; retract
G1 X196 Y175.5 F18000 ; move to start
G11 ; un-retract
G1 X196 Y175.9 E0.0239 F1200 ; dot
G10 ; retract
G1 X197 Y175.5 F18000 ; move to start
G11 ; un-retract
G1 X199 Y175.5 E0.1197 F1200 ; 9
G1 X199 Y177.5 E0.1197 F1200 ; 9
G1 X197 Y177.5 E0.1197 F1200 ; 9
G1 X197 Y179.5 E0.1197 F1200 ; 9
G1 X199 Y179.5 E0.1197 F1200 ; 9
G1 X199 Y177.5 E0.1197 F1200 ; 9
G10 ; retract

;
; finish
;
M104 S0 ; turn off hotend
M140 S0 ; turn off bed
G1 Z30 X300 Y300 F18000 ; move away from the print

;