;; Run heater tune
; M303 H1 S235
;; Report heater parameters
; M307 H1

;; Set heater parameters
M305 P1 R4700 T100000 B3950
M307 H1 A776.1 C297.4 D10.6 S1.00 V24.3 B0

;; Save heater selection to be recovered on reboot
M28 "/sys/restore_tool_heater.g"
M98 P"/macros/heating/toolhead_V6_copper_36W.g"
M29
