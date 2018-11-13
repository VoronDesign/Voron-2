;; Do a Z-probe to the mechanical switch, but in "stop but do not adjust" mode.
;; The final Z-reading indicates how much slippage occurred.
M98 P"/macros/moveto/mswitch_xy.g"
G30 S-1                         ;; single z-probe and stop
