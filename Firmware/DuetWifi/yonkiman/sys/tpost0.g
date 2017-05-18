; tpost0.g
; called after tool 0 has been selected

G1 E170 F6000		; Extrude fast
G1 E9	F500		; Extrude slower (8 instead of 10 so we don't create a filament trail)
G91			; Relative
G1 Z-2  F6000		; Raise bed
G90			; Absolute