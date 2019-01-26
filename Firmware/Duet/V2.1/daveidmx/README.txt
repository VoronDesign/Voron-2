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
***  "downcurrent" files are used for slow homing moves to reduce the impact of crash damage.
     You can opt out of the "downcurrent" profiles by uncommenting a couple lines as descibed in those files.
**  /macros/filament/do_moves_for_*.g for bowden length
**  /macros/heating/toolhead_*.g for your tool heater parameters.
***  NOTE: If you add or rename the profile scripts, also update the script name inside the script itself. This is to support recovering the selection across reboots to make it easy to switch toolheads.
**  /macros/homing/scripts/probe_zlevel.g for the leveling probe points
**  /macros/homing/scripts/probe_x.g for the X dimension
**  /macros/homing/scripts/probe_y.g for the Y dimension
**  /macros/moveto/*.g based on your dimensions
**  /macros/retraction/*.g for your retraction settings
***  NOTE: If you add or rename the profile scripts, also update the script name inside the script itself. This is to support recovering the selection across reboots to make it easy to switch toolheads and retraction profiles.
**  /macros/zprobe/use_i*.g for your inductive probe pins
**  /macros/zprobe/use_m*.g for your mechanical switch pins, and to tune Z-height
***  NOTE: /macros/zprobe/use_mslow.g is the only place you need to tune your Z-height.

Bonus files for the test scripts:
**  /macros/testing/belting/scripts/xy_point_*.g based on your bed dimensions
**  /macros/testing/belting/scripts/z_movecycle_1.g for your Z dimension
**  /macros/drive/*_torture.g

Changes:

* Default probe connectors have changed. The inductive probe has been moved from E0 to Zprobe to free up E0 for a filament detector.
* Added bindings for filament sensors. (Disabled by default.)
* Added bindings for chamber fan (enabled by default) and chamber thermistor and lights (disbled by default).
* Changed drive parameters for V2.1.
* Changed some other default settings to better match spec.

* Fix some fan and temp bugs in the /macros/heating/preheat_*.g scripts.
* Fix filament sensor configuration. (It wasn't turned on!)
* Make toolhead heater and firmware retraction profile selections sticky across reboots to support changing toolheads.
* Add retraction profiles for Volcano.
* Increased motor default idle timeout to 24 hours.

* IMPORTANT: Changed origin coordinates to be at bed center.
* Move toolhead thermistor parameters to the heating/toolhead_* scripts, because they change when you swap toolheads.
* Turn off extruder in print_end.g
* Set the tool to standby temperature (via deselection) when pausing.
* Added a heatbreak thermistor setting.
* Add calibrate_mswitch.g script to help calibrate the mechanical Z offset.
* Add coarse_level.g script to level the gantry for when the default dive height is too small.

* Changing Z endstop configuration for FSR.
* No longer turning off heaters during Z probing. It turns out it's both unnecessary and actually detrimental due to the temperature delta.
