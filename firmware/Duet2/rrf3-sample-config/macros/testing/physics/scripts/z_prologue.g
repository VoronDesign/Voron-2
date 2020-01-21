;; Used for testing Z drive current, speed, acceleration, and jerk.
;; The script should finish with the nozzle on the Z-switch,
;; with a Z-height reading of ~0. If the Z-reading is higher,
;; the Z drive is skipping steps on upward acceleration or jerk,
;; i.e. when the gantry is moving down and switches to moving up.
;;
;; NOTE 1: Manually home and level before running this script,
;; then configure the drive settings you want to test.
;; e.g.:
;;   G28
;;   M98 P"/macros/drive/z_fullcurrent.g"
;;
;; NOTE 2: If you can audibly hear step skipping while this is running,
;; perform an emergency stop ("M112")
;; or risk using up the 50mm of headroom and crashing the nozzle.

;; reset the Z-probe coordinate to be 0 at the switch trigger point.
G91                             ; relative positioning
G1 Z10 F1200                    ; hop up to clear the switch
M98 P"/macros/moveto/mswitch_xy.g"
G90                             ; absolute positioning
G1 Z10 F1200                    ; since we're using only slow probing, move down first to save time
M98 P"/macros/zprobe/use_mslow.g"
G31 Z0                          ; override probe configuration to Z0 offset
G30                             ; z-probe as configured, overriding the previous Z home position

;; Move to initial position.
M98 P"/macros/moveto/center_xyz.g"
G90                     ; absolute positioning
G1 Z50 F99999           ; move to starting height
