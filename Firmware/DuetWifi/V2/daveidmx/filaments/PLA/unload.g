;; *ADJUST* filament unload temperature here
;;

M291 R"Unloading PLA" P"Waiting for nozzle unloading temperature..." S0 T0
G10 S180 R0                     ; Heat current tool (*ADJUST*)
M116                            ; Wait for temperature

M291 R"Unloading PLA" P"Waiting for filament to soften (or firm)..." S0 T0
G4 P10000                       ; Wait for additional delay for filament to cool or soften

M291 R"Unloading PLA" P"Retracting..." S0 T0
M98 P"/macros/filament/do_moves_for_unload.g"

M292                            ; Clear messages
G10 S0 R0                       ; Turn off tool heater
