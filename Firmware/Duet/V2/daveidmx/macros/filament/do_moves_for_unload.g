;; Reusable script for unloading filament.
;; Assume that the correct tool is active
;; and that the nozzle has been held at unloading temperature
;; for long enough to soften the nozzle contents.
;;
;; WARNING: I don't like this unload script,
;; specifically the first few moves before the bowden retract.
;; I haven't found a good set of retraction moves that is
;; slow enough to consistently break free of the nozzle
;; without grinding in the extruder, and still fast enough
;; not to leave strings which could litter the heatbreak.


M83                     ; set extruder relative
G1 E-10 F300            ; approximate length of nozzle plug
G4 P10000               ; wait a moment for filament to cool
G1 E-16 F300            ; length of the heatbreak
G1 E-20 F600            ; additional distance to retract slowly before speeding up
G1 E-730 F1800          ; retract through bowden (*ADJUST* to bowden length minus 20mm, or to taste)
G1 E-10 F600            ; and back to near the hobbed gear
M400                    ; wait for moves to complete
M84 E                   ; turn off extruder motor to allow manual jog
