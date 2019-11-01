# Direct Drive Mount for BMG-M on 2.1 and 2.2
![example image](https://user-images.githubusercontent.com/3454741/67543958-79ce1b80-f6a8-11e9-998e-90cd94887999.png)

Note:
* Tested with 300mm 2.1 build only.
* 1.6 looks plausible too, ymmv.

## Why
* Direct drive is easy to print with.
* It looks sick.
* I couldn't get my bowden extruder to bridge well.  Pressure advance only gets you so far.

## BOM
* 5x m3x8 Socket head screws
* 1x m3x6 Socket head screw
* 2x m2x 6-10 socket head screw
* 4x m3 nuts
* [Bondtech BMG-m](https://www.bondtech.se/en/product/bmg-m-extruder/)
* [Bondtech BMG mount plate](https://www.bondtech.se/en/product/bmg-alu-mount/)
* [OMC 20mm pancake stepper](https://www.omc-stepperonline.com/nema-17-stepper-motor/nema-17-bipolare-1-8deg-13ncm-18-4oz-in-1a-3-5v-42x42x20mm-4-fili.html) but use it at like 0.6 amps instead.
* [Slice Mosquito](https://www.sliceengineering.com/collections/hotends/products/the-mosquito-hotend%E2%84%A2)
* Slice fan.  Use their fan or you're way on your own!
* Same neat little 40mm blower from the Voron BOM.


## STLs
File | Note
---- | ----
gumby_mount_mosquito.stl | Print solid.  No supports.  Print the v6 one if you're of the e3d persuasion.
fan_mount.stl | Print with vent face down.  No supports.

## Assembly
1. Hold the ALU plate to the plastic plate, mark your spot where the left carriage bolt head will be and drill your ALU plate.  Should be about 6mm diameter.  Size here is not critical, it just needs to clear your socket head bolt.  A stepped drill bit is awesome for this.
2. Bolt the ALU plate to the gumby_mount.  Your m3x6 goes on the bottom left hole.  That location has to be flush with the back or it interferes with the carriage.
3. If you have an M3 tap, tap the bottom holes on your hotend fan.
4. Bolt the plate to your carriage.  Sorry, the m3 nuts don't stay put very well and the space is too small for your fingers.
5. In whatever order you like, bolt the BMG-m to the stepper through the ALU plate, bolt the Mosquito to the BMG-m, bolt the hotend fan to the Mosquito under the BMG-m.
6. Bolt the fan_mount to the hotend fan. (m3x8)  Yo dawg I heard you liked fans...
7. Bolt the 40mm blower to the fan_mount. (m2's)
8. Wire to taste.
9. Set esteps to 415 per Bondtech, reset the X/Y location of your touch probe.
10. Print!

## Known Issues
* No doors.  They add weight and aid nothing.  You're on your own if you want them!
* This will offset your nozzle 15.4mm to the left.  You can move your bed over.
* Putting it together is a nuisance.
* You have to drill a hole in your Bondtech aluminum plate for the left Voron mount screw.  Just do it; it's only aluminum.
* It's DD so the tool head is a little heavier than the stock bowden.  The mass is distributed differently, so it's not a straightforward comparison but generally you'll want somewhat lower acceleration & jerk settings.  You can still print at high speeds but you need to consider mass direction changes.
