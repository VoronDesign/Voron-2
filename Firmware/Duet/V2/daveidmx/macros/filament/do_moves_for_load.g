;; Re-usable script for feeding and priming filament.
;; Assume the temperature is correct for melting,
;; and the filament is pre-fed just until it's fed through hobbed gear.

M83                     ; set extruder relative
G1 E10 F600             ; this should reach the tip of the bowden
G1 E20 F600             ; feed the first 20mm slowly to make sure we're feeding
G1 E730 F3600           ; feed through the rest of the bowden (*ADJUST* to bowden length minus 20mm)
G1 E16 F300             ; slow down for heatbreak
G1 E50 F150             ; fill and stabilize nozzle
G4 P3000                ; wait for pressure and ooze
G10                     ; retract as configured
M400                    ; wait for moves to complete
M84 E                   ; turn off extruder motor to allow manual jog
