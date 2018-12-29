# VORON on Smoothieware

Smoothieware can be used on multiple boards, these are sample configs that should help you get started with a particular board. As usual for Smoothie, just copy the appropriate config.txt on the SD card of the controller and reset it for the changes to take effect.

## Things to note:

Smoothie does not currently support using a Z probe as an endstop, so the Z offset currently has to be set in your start Gcode, similar to this:

```
G1 Z5       ; lower bed plate 5mm
G28         ; home X and Y (because there is no Z endstop)
G32         ; probe bed and enable autolevel
G30 Z1.85   ; set Z probe offset
```