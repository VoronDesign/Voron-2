;; Move to a safe and convenient parking location.
;; Useful for when a print is finished.
;; By moving only on X and Y and not Z,
;; it's a safer way to get out of the way no matter how tall your print is.
;; (Unfortunately it's not quite as convenient for short prints as also moving way up in Z.)
;;
;; *ADJUST* these coordinates based on your build volume

G90                             ; absolute positioning
G1 X150 Y270 F6000              ; move to center rear of build space
