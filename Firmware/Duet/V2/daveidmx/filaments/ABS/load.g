;; *ADJUST* filament load temperature here
;;

M291 R"Loading ABS" P"Waiting for nozzle loading temperature..." S0 T0
G10 S235 R170                   ; Heat current tool and set standby temperature (*ADJUST*)
M116                            ; Wait for temperature

M291 R"Loading ABS" P"Feeding and priming..." S0 T0
M98 P"/macros/filament/do_moves_for_load.g"

M292                            ; Clear messages
