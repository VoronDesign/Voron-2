;; Macro to be called manually from the slicer code at the end of a print

M98 P"homing_zhop_up.g"
M98 P"moveto_park_xy.g"
M400                    ; wait for moves to complete

M140 R45                ; set bed standby temperature to magic PEI part removal temp
M144                    ; set bed to standby

M107                    ; fan off


;; Option 1: Turn off tool heaters
G10 P0 R-273.15 S-273.15
G10 P1 R-273.15 S-273.15


;; Option 2: Disable tools, switching them back to standby temperature.
;; NOTE this requires you to have a suitable standby temparature set,
;; and for your gcode to have not overwritten it.
;T-1                     ; deactivate current tool
