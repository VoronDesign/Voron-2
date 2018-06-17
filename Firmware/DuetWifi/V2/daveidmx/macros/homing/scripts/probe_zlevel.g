;; Perform one pass at gantry leveling.
;; (The inductive probe should be activated.)
;;
;; *ADJUST* X/Y coordinates based on your bed dimensions
;; *ADJUST* H-values if your probe consistently triggers at different offsets per point
;; i.e. if "level" leaves you with a consistent gantry tilt.

G30 P0 X050 Y050 Z-10000 H+0.00
G30 P1 X200 Y050 Z-10000 H+0.00
G30 P2 X200 Y200 Z-10000 H+0.00
G30 P3 X050 Y200 Z-10000 H+0.00 S
