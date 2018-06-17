;; Perform an up-down cycle near the current position.
;; These small moves do not need to be adjusted based on printer size.

G91             ; relative positioning
G0 Z+25
G0 Z-25
