# Off The Shelf Drag Chains for 2.1
Note: Tested with 300mm 2.1 build only.

## Why
* Drag chains with a snap open side are a joy to work on.
* It looks awesome.
* Looming up wires makes them harder to access.
* I hate tape chains.

## BOM
* Some M3 screws
* A few M5 screws that are a couple millimeters longer than the M5's on the gantry.  You'll figure it out.
* [3x Openbuilds 10x15mm 18mm radius Drag Chains](https://openbuildspartstore.com/drag-chain-cable-carrier/)
* All these stls

## STLs
File | Note
---- | ----
x_carriage_frame_right_remodeled | Parametrically driven remodel of the right toolhead without the wire tray.  The through-screws are modeled like the original stl, but they seem pretty tight from my printer.  YMMV, you might need a tap or just start working out more.
x_carriage_dragchain_anchorpoint | You screw your drag chain's floppy end to this side.
x_carriage_wire_cover | Cosmetic wire wrangler interfacing the drag chain to the X carriage.  Mounts with a short M3 screw.
xy_drag_chain_bridge | You screw your drag chain's floppy end to this side.  Wires go through it and up into the Y chain.
a_corner_wire_guide | Covers your wires around the A corner.  Keeps them from chafing against the rail and frame, while keeping them tidily away from the belt.  Also, you screw your drag chain's floppy end to this side.
lower_drag_chain_mount | Mounts to the rear lower frame.  You'll need to cut an L shaped slot into your bottom panel.  Also a great spot to run your bed and heater wires down through.  Move this on the rail until you get a little tension on your Z chain.  That'll keep it tight and it will look awesome.

## Known Issues
* I haven't accounted for the toolhead doors yet.
* X carriage screws are a little tight.  Probably "won't fix."
* A corner guide could be a little wider in critical places without interfering mechanically with the printer.  All my wires fit, but yours might not.
