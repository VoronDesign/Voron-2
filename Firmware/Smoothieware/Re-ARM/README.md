# VORON on Re-ARM

Here is a sample config to get you started on a Re-ARM board combined with a RAMPS 1.4 shield.

Tested with Smoothie edge-6ce309b (Jan 2 2017, 23:50:04).

At a minimum you will have to edit `extruder.hotend.steps_per_mm` to match your extruder setup, but everything else should just drop in.

## Homing warning

Smoothie does not support Z safe homing like Marlin, so be careful with `G28` if your probe is outside the bed area when XY are homed. From the documentation you are supposed to handle the Zmin homing yourself (i.e. `G28 XY`, `G1 X100 Y100`, `G28 Z`), or home to Zmax.

## RAMPS cooling fan

Smoothie does not support automatically turning on and off the RAMPS cooling fan like on Marlin, you need to do this yourself with your startup Gcode. The sample config uses `M106.1` and `M107.1` to turn on and off the RAMPS fan, feel free to change this.

## Connecting the RepRapDiscount LCD

The RRD LCD panel needs to be powered from 5V, but the VCC pin on EXP1 is at 3.3V. You should have received a replacement cable with your Re-ARM board to swap out your existing EXP1 cable. This new cable breaks out the 5V pin to a separate connector, and can be plugged into the 5V pin of J3 or J12 on the Re-ARM board itself. Use the [published Re-ARM pinout](http://panucattdevices.freshdesk.com/helpdesk/attachments/1047536701) as a reference as the individual pins are not identified on the board.

## Connecting 5V devices to SERVO pins (BLTouch)

An unfortunate side-effect of the Re-ARM board is that VCC is at 3.3V, not 5V. An easy way to solve this on RAMPS is to remove the 5V/PS-ON jumper (next to the AUX port) completely and connect the middle (shared) pin to a 5V source like J3 or J12 on Re-ARM. This will allow servos and other 5V devices to work as they would on a real Arduino + RAMPS combo.
