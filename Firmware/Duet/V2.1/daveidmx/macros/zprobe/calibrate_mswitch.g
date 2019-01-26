;; Used to calibrate the Z offset for the mechanical Z endstop.
;; First it does a multi-tap probing pass with the Z offset overridden the paper thickness,
;; then it gives you the opportunity to manually adjust Z with a sheet of paper.

M291 R"Mechanical Z endstop calibration" P"This will help calibrate the Z endstop offset. Make sure you have homed and leveled." S3

M98 P"/macros/homing/scripts/zhop_up.g"
M98 P"/macros/moveto/mswitch_xy.g"

M98 P"/macros/drive/z_downcurrent.g"
M98 P"/macros/zprobe/use_mfast.g"
G30         ; z-probe as configured

M98 P"/macros/drive/z_fullcurrent.g"
M98 P"/macros/zprobe/use_mslow.g"
G31 Z-0.1   ; override probe Z offset configuration to 0, offset by the thickness of the sheet of paper
G30         ; z-probe as configured

M564 S0         ; disable axis limits
G0 X0 Y0 F9999  ; move to bed center, assuming (0, 0) is bed center

M291 R"Mechanical Z endstop calibration" P"Adjust the Z height until a piece of paper just barely slides under the nozzle." Z1 S3

M564 S1                             ; re-enable axis limits
M98 P"/macros/zprobe/use_ifast.g"   ; restore default probe settings

M291 R"Mechanical Z endstop calibration" P"Edit the Z parameter in /macros/zprobe/use_mslow.g to be -1 times the current Z position." S2
