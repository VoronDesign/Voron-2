G1 Z6.80 F12000			;lift nozzle 25mm
G1 X4.25 Y240.00 F12000		;move to nozzle scrubber

G91 				;relative positioning
G1 Z-3.50 Y+20.00 F9000		;move nozzle to end of brush and into bristles

G1 X+2.0 Y+60.00 F9000		;scrub forwards once
G1 X-2.0 Y-60.00 F9000		;scrub backwards once
G1 X+2.0 Y+60.00 F9000		;scrub forwards once
G1 X-2.0 Y-60.00 F9000		;scrub backwards once
G1 X+2.0 Y+60.00 F9000		;scrub forwards once
G1 X-2.0 Y-60.00 F9000		;scrub backwards once
G1 X+2.0 Y+60.00 F9000		;scrub forwards once
G1 X-2.0 Y-60.00 F9000		;scrub backwards once
G1 X+2.0 Y+60.00 F9000		;scrub forwards once
G1 X-2.0 Y-60.00 F9000		;scrub backwards once
G1 X+2.0 Y+60.00 F9000		;scrub forwards once
G1 X-2.0 Y-60.00 F9000		;scrub backwards once


G1 Z+10.00 F9000		;lift z 10mm

G90				;absolute positioning