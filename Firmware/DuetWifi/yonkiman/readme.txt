Config files for DuetWifi controller for Voron CoreXY V1.5.  This includes many files for filament switching with a Y adapter above the hot end.  For typical monofilament Vorons, these are the only files you will need to modify:

bed.g		- coordinates for bed leveling - this is not working 100% in my system and 
			- I'm currently manually leveling my bed.
cancel.g	- optional, for filament switching but doesn't hurt to have for all configs
config.g	- The main configuration file 
homeall.g, homex.g, homey.g, homez.g	- homing files
pause.g
resume.g

Once I get filament switching working reliably, I will document those gcode files.

The macro directory is mostly debugging macros - examine the gcode to see what each does.