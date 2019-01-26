;; Perform a square and diagonal move pattern around the current position.
;; These smaller moves shouldn't need to be adjusted for printer size.

G91             ; relative positioning

G0 X-25 Y-25

G0 X+50
G0       Y+50
G0 X-50
G0 X+50 Y-50
G0 X-50 Y+50

G0       Y-50
G0 X+50
G0       Y+50
G0 X-50 Y-50
G0 X+50 Y+50

G0 X-50
G0       Y-50
G0 X+50
G0 X-50 Y+50
G0 X+50 Y-50

G0       Y+50
G0 X-50
G0       Y-50
G0 X+50 Y+50
G0 X-25 Y-25
