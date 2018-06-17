Hello, and welcome to my configuration!

If you're new here:

1) This configuration works for my printer. Don't assume it'll work for yours out-of-the-box. Know and understand things before running them blindly.

2) The Duet Getting Started wiki is your friend:
    https://duet3d.dozuki.com/c/Getting_Started
    https://duet3d.dozuki.com/Wiki/Step_by_step_guide

If you want to base your configuration off of mine, here are some files you'll want to edit right away:

*  All settings in config.g.
*  All other files as marked to *ADJUST*:
**  /macros/drive/*.g for drive current and physics
***  "fullcurrent" files are used for normal printing.
***  "downcurrent" files are used for slow homing moves to reduce the impact of crash damage. You can opt out of the "downcurrent" profiles by uncommenting a couple lines as descibed in those files.
**  /macros/filament/do_moves_for_*.g for bowden length
**  /macros/homing/scripts/probe_zlevel.g for the leveling probe points
**  /macros/homing/scripts/probe_x.g for the X dimension
**  /macros/homing/scripts/probe_y.g for the Y dimension
**  /macros/moveto/*.g based on your dimensions
**  /macros/retraction/*.g for your retraction settings
**  /macros/zprobe/use_i*.g for your inductive probe pins
**  /macros/zprobe/use_m*.g for your mechanical switch pins, and to tune Z-height
***  NOTE: /macros/zprobe/use_mslow.g is the only place you need to tune your Z-height.

Bonus files for the test scripts:
**  /macros/testing/belting/scripts/xy_point_*.g based on your bed dimensions
**  /macros/testing/belting/scripts/z_movecycle_1.g for your Z dimension
**  /macros/drive/*_torture.g

Known Issues:
* Filament unload doesn't work reliably yet.
