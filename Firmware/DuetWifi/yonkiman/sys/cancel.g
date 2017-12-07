; cancel.g
; called when a print from SD card is paused

; This file is only here because if there is no cancel.g file, and canceling a print
; without a cancel.g will release the active tool (Tool 0 or Tool 1) which will turn 
; off the heater and cause issues with the filament swapping scripts.
