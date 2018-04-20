Hello, and welcome to my configuration!

If you're new here:

1) This configuration works for my printer. Don't assume it'll work for yours out-of-the-box. Know and understand things before running them blindly.

2) The Duet Getting Started wiki is your friend:
    https://duet3d.dozuki.com/c/Getting_Started
    https://duet3d.dozuki.com/Wiki/Step_by_step_guide

If you want to base your configuration off of mine, here are some /sys files you'll want to edit right away:

*  All settings in config.g.
*  All other files as marked to *ADJUST*:
**  drive_*.g for drive current and physics
***  "fullcurrent" files are used for normal printing.
***  "downcurrent" files are used for slow homing moves to reduce the impact of crash damage. You can opt out of the "downcurrent" profiles by uncommenting a couple lines as descibed in those files.
**  filament_do_moves_for_*.g for bowden length
**  homing_probe_zlevel.g for the leveling probe points
**  homing_probe_x.g for the X dimension
**  homing_probe_y.g for the Y dimension
**  moveto_*.g based on your dimensions
**  retract_clean.g for your retraction settings with pressure advance
**  retract_quiet.g for your retraction settings without pressure advance
**  zprobe_use_i*.g for your inductive probe pins
**  zprobe_use_m*.g for your mechanical switch pins, and to tune Z-height
***  NOTE: zprobe_use_mslow.g is the only place you need to tune your Z-height.

Bonus files for the test scripts:
**  test_belting_xy_point_*.g based on your bed dimensions
**  test_belting_z_movecycle_1.g for your Z dimension
**  drive_*_torture.g

Known Issues:
* Filament unload doesn't work reliably yet.
