M913 Z100       ; set motor current percentage to 25%
;M906 Z1200      ; motor drive current

; Set reduced physics parameters to help prevent missed steps.
M203 Z3000      ; maximum speed (mm/min)
M201 Z300       ; maximum acceleration (mm/min/s)
M566 Z0         ; instantaneous speed change (mm/min)