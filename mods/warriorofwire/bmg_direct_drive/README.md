# Direct Drive Mount for BMG-M on 2.1 and 2.2
![example image](https://user-images.githubusercontent.com/3454741/67543958-79ce1b80-f6a8-11e9-998e-90cd94887999.png)

Note:
* Tested with 300mm 2.1 build only.
* 1.6 looks plausible too, ymmv.

## Why
* Direct drive is easy to print with.
* It looks sick.
* Math shows that bowden tubes present a non-fixed length of filament depending on bend state. (pressure advance can never be perfect until it models ptfe deflection in real-time)
* I couldn't get my bowden extruder to bridge worth a dang.

## BOM
* 3x m3x8 Socket head screws
* 1x m3x6 Socket head screw
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
gumby_mount.stl | Print solid.  No supports.
fan_mount.stl | Print with vent face down.  No supports.

## Known Issues
* Putting it together is a nuisance.
* You have to drill a hole in your Bondtech aluminum plate for the left Voron mount screw.  Just do it; it's only aluminum.
