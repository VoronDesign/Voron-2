;; Reusable script for unloading filament.
;; Assume that the correct tool is active
;; and that the nozzle has been held at unloading temperature
;; for long enough to soften the nozzle contents.
;; (e.g ~170C for ABS)

M83                     ; set extruder relative
G1 E-16 F600            ; retract the length of the heatbreak
G4 P10000               ; wait a moment for filament to cool
G1 E-10 F600            ; approximate length of nozzle plug
G1 E-700 F9000          ; retract through bowden (*ADJUST* to bowden length, or to taste)
G1 E-25 F600            ; and back to near the hobbed gear
M400                    ; wait for moves to complete
M84 E                   ; turn off extruder motor to allow manual jog
