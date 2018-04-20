;; Perform a square and diagonal move pattern around the current position.
;; These smaller moves shouldn't need to be adjusted for printer size.

G91             ; relative positioning

G1 X-25 Y-25

G1 X+50
G1       Y+50
G1 X-50
G1 X+50 Y-50
G1 X-50 Y+50

G1       Y-50
G1 X+50
G1       Y+50
G1 X-50 Y-50
G1 X+50 Y+50

G1 X-50
G1       Y-50
G1 X+50
G1 X-50 Y+50
G1 X+50 Y-50

G1       Y+50
G1 X-50
G1       Y-50
G1 X+50 Y+50
G1 X-25 Y-25
