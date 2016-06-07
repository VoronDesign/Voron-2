# How to build firmware for VORON

**NOTE:** Current approved version of Marlin to work with these files is **1.1.0-RC6**

We don't want to track yet another fork of Marlin here. Let them do their thing, and we'll stick with just the bits we care about.

## List of files and why they are here  

**Configuration.h**  
This is the main config. Starting with RC5, there are a lot of changes to this. I had to completely reset and populate this from scratch. They fixed several bugs in this release, a lot of which center around CoreXY. 

**dogm_bitmaps.h**  
MZBot logo on the LCD splash screen (totally optional, but looks cool)  

**pins.h**  
Addition of RAMPS_14_VORON motherboard selector for use in Configuration.h  

**pins_RAMPS_14_VORON.h**  
Basic RAMPs 1.4 pins layout with VORON specific re-assignments. This file contains only what is different from stock, with explanations

**ultralcd.cpp**   
Addition of "Lower Bed" option in the main menu. Drops the bed by 20mm. Useful when removing parts, or in emergencies.  
Also added a "Re-home Z" action under the setting for Z-probe offset in Control->Motion menu. It re-homes Z (G28 Z0), and lowers the nozzle to Z0.0 This allows you to easilty dial in the nozzle offset. Tweak the value, rehome Z, rinse, repeat until perfect. Don't forget to heat up your nozzle first ;)

## Getting the firmware and grafting on the changes

1. Grab the latest supported release from Marlin GihHub. Current version we're working with is [RC6](https://github.com/MarlinFirmware/Marlin/tree/1.1.0-RC6)
2. Copy these file to the Marlin folder, overwriting exsisting files files
3. Build, upload, enjoy
