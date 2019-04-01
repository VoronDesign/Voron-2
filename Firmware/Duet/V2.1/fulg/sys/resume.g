; resume.g
; called before a print from SD card is resumed

M83            ; relative extruder moves
G1 E2 F3600    ; Extrude some stock to counter oozing
G1 R1 Z5 F6000 ; go to 5mm above position of the last print move
G1 R1          ; go back to the last print move
G1 E4 F3600    ; extrude 4mm of filament
