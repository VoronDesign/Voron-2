;; There's nothing special about the center,
;; but it's a convenient place to go
;; to give the user access to both the bed and the X-carriage.
;;
;; *ADJUST* these coordinates based on your build volume

G90                             ; absolute positioning
G1 X0 Y0 Z125 F99999        ; move to a centerpoint
