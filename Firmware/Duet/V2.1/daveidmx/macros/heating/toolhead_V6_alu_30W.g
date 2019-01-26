;; Run heater tune
; M303 H1 S235
;; Report heater parameters
; M307 H1

;; Set heater parameters
M305 P1 R4700 T100000 B4725 C7.06E-8 
M307 H1 A524.0 C214.6 D5.1 S1.00 V24.4 B0

;; Save heater selection to be recovered on reboot
M28 "/sys/restore_tool_heater.g"
M98 P"/macros/heating/toolhead_V6_alu_30W.g"
M29
