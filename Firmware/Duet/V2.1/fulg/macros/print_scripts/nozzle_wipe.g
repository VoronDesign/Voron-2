; assumes we are homed
M98 P"/macros/print_scripts/goto_bucket.g"

G1 Z4

G91 ; relative
G1 X+5 F20000
G1 Y-50
G1 Y+50
G1 X-5
G1 Y-50
G1 Y+50

G1 X+10 Y-5
G1 X-10 Y-5
G1 X+10 Y-5
G1 X-10 Y-5
G1 X+10 Y-5
G1 X-10 Y-5
G1 X+10 Y-5
G1 X-10 Y-5
G1 X+10 Y-5
G1 X-10 Y-5

G1 X+10

G1 X+10 Y+5
G1 X-10 Y+5
G1 X+10 Y+5
G1 X-10 Y+5
G1 X+10 Y+5
G1 X-10 Y+5
G1 X+10 Y+5
G1 X-10 Y+5
G1 X+10 Y+5
G1 X-10 Y+5

G1 Z10

G90 ; absolute

M98 P"/macros/print_scripts/goto_bucket.g"