# einsy + ramps combo

Instead of 2 ramps I use an [Einsy Rambo clone by Fystec](https://www.aliexpress.com/item/Einsy-Rambo-1-1a-Mainboard-For-Prusa-i3-MK3-Board-With-4-TMC2130-Stepper-Drivers-SPI/32885875002.html) and a ramps.
The mount is designed so the Einsy can be mounted both above (like the ramps half) or below the mount(like the arduino half).
The einsy is a little wider so you might not fit on a 200 spec build because of the PSU.
Using 24V with the einsy is highly recommended.

I added my Custom Klipper config as well, but be careful with the screen config, you will most likely need to change it as I'm not using a standard display.
Caution! I use LV8729 drivers for my Z axis, they have inverted enable (EN) pins, you have to reomve the "!" from if you are using different drivers like A4988, DRVs or TMCs.
I added control via the display menu for my custom LED lighting as well.
You will need to rename the config to "config.cfg"