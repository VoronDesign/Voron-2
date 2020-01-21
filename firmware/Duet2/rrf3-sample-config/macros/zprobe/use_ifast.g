;; Activate the inductive probe in "fast" mode.
;; Used to quickly get down to bed level.
;; Follow this up with a slow probe to finely calibrate levels.
;;
;; NOTE: This probe Z offset is associated with the carriage and not the nozzle.
;; Leave the Z-offset at Z0 because it does not indicate nozzle level.
;; Only adjust it if "/macros/homing/homezi.g" (or the inductive z-homing macro)
;; calibrates Z zero to be unsafe (i.e. below bed level)
;; and match the value in both the fast and slow files.
;;
;; NOTE: Be aware that the inductive probe will trigger at different heights
;; when probing at different speeds.
;; The rest of these configuration scripts take that into account,
;; so don't use differing Z offsets to try to compensate.
;;
;; *ADJUST* this file for:
;;  Your inductive probe pins ("M558 P*")

M558 P5 C"zprobe.in" I1 A3 H12 R0.1 F800 T99999 A1 B1
G31 P1000 X0 Y25 Z0
