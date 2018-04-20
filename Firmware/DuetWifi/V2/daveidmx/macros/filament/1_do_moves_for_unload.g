;; Convenience macro to make this script be a button on the UI.
;;
;; Useful when you need to run filament load/unload moves and are already at the correct temp.
;;
;; NOTE you still need to have the tool selected before running this macro or you'll get errors.

M98 P"filament_do_moves_for_unload.g"
