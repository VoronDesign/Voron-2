# How to build firmware for VORON

**NOTE:** Current approved version of Marlin to work with these files is **1.1.0-RC8**

We don't want to track yet another fork of Marlin here. Let them do their thing, and we'll stick with just the bits we care about.

## List of files and why they are here  

**Configuration.h**  
Main config. **NOTE:** If using V1.5 hardware, uncomment the this line `#define VORON_NOZZLE_PROBE`

**_Bootscreen.h**  
LCD splash screen

**pins.h**  
Addition of RAMPS_VORON motherboard selector for use in Configuration.h  

**pins_RAMPS_VORON.h**  
Basic RAMPs 1.4 pins layout with VORON specific re-assignments. This file contains only what is different from stock, with explanations

**ultralcd.cpp**   
Addition of "Lower Bed" option in the main menu. Drops the bed by 20mm. Useful when removing parts, or in emergencies.  
Also added a "Re-home Z" action under the setting for Z-probe offset in Control->Motion menu. It re-homes Z (G28 Z0), and lowers the nozzle to Z0.0 This allows you to easilty dial in the nozzle offset. Tweak the value, rehome Z, rinse, repeat until perfect. If using V1.5 hardware, you can dial this in with a cold (and clean) nozzle.

## Getting the firmware and grafting on the changes

1. Grab the latest supported release from Marlin GihHub. Current version we're working with is [RC8](https://github.com/MarlinFirmware/Marlin/tree/1.1.0-RC8)
2. Copy these file to the Marlin folder, overwriting exsisting files files
3. Build, upload, enjoy
