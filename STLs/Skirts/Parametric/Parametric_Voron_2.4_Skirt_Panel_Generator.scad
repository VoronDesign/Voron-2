// Parametric_Voron_2.4_Skirt_Panel_Generator.scad
// © 2026
// File licensed under the GNU General Public License v3.0
// https://choosealicense.com/licenses/gpl-3.0
// Author: Jonathan W. Arndt

//parameters
$fn=90;
ol = 216.1;     //overall length (mm)
od = 66;        //overall depth (mm)
oh = 20;        //overall height (mm)
nl = ol+4;      //overlall length of negative opjects (mm)
sw = 3;         //starting wall thickness
hd = 24.5;      //hex diameter
hh = oh*1.25;   //hex height
hw = 3;         //hex wall thickness
hr = 2;         //hex rounding factor
htx = 55;       //hex area depth
hty = ol-sw-sw; //hex area length
shx = 20;       //alignment of hex mesh length
shy = -3;       //alignment of hex mesh depth
closed_hex=true;
cx=1;          //closed hex value (1)=closed (-1)=open

main();

module main(){
    difference(){
        union(){
            //main body
            cube([ol,od,oh]);
            //t-slot location boss
            translate([ol*0.384,od*1,oh*.35]){
                rotate([90,270,270]){
                    tslot();
                }
            }
            
            //t-slot location boss
            translate([ol*0.833,od,7]){
                rotate([90,270,270]){
                    tslot();
                }
            }
        }
        //negative honecomb mesh
        translate([sw,od*0.091,(oh*1.25)+(cx)]){
            rotate([180,0,90]){
                honeycomb();
            }
        }
        //negative cylinder for top of opening
        toptube();
        //negative cylinder for bottom of opening
        bottomtube();
        //negative cube for center of opening
        negcenter();
        //negative cube for top of opening
        negbottom();        
        //cutout for bottom lip
        translate([ol+2,0,0]){
            rotate([90,270,270]){
                bottomlip();
            }
        }
        
        //top mount hole
        translate([ol*0.106,od*0.939,oh*0.5]){
            rotate([90,0,0]){
                mount_hole(1.7,10);
            }
        }
        //top mount hole
        translate([ol*0.889,od*0.939,oh*0.5]){
            rotate([90,0,0]){
                mount_hole(1.7,10);
            }
        }
        //screw head cutout for top mount
        translate([ol*0.106,od*0.924,oh*0.5]){
            rotate([90,0,0]){
                mount_hole(4,4);
            }
        }
        //screw head cutout for top mount
        translate([ol*0.889,od*0.924,oh*0.5]){
            rotate([90,0,0]){
                mount_hole(4,4);
            }
        }
        //mount hole for bottom cover
        translate([ol/2,0,oh*0.226]){
            rotate([90,0,0]){
                panel_mount();
            }
        }
    }
}


module hex(){
    // Parameters
    total_diameter = 24.5;
    height = 24;
    rounding_radius = 2; // Adjust for more/less rounding
    smoothness = 60;     // Smoothness of the rounded corners

    // 3D Extrusion
    linear_extrude(height = height) {
        offset(r = rounding_radius, $fn = smoothness) {
            // Adjusting diameter so the final result is exactly 24.5mm
            circle(d = total_diameter - (rounding_radius * 2), $fn = 6);
        }
    }
}

module honeycomb() {
    // Parameters
    diameter = hd;
    height = hh;
    wall = sw;
    rounding_r = hr;

    // Target Area
    target_x = htx;
    target_y = hty;

    // --- ALIGNMENT CONTROLS ---
    // Change these values to shift the pattern inside the box
    shift_x = shx; 
    shift_y = shy; 

    // --- MATH ---
    width_flats = diameter * cos(30); 
    pitch_x = width_flats + wall; 
    pitch_y = (diameter * 0.75) + (wall * cos(30)); 
    grid_size = max(target_x, target_y) * 1.5;

    intersection() {
        // The Clipping Box
        cube([target_x, target_y, height]);

        // The Honeycomb Mesh
        rotate([0, 0, 90])
        translate([-grid_size/2 + shift_x, -grid_size/2 + shift_y, 0]) 
        union() {
            for (r = [0 : ceil(grid_size / pitch_y)]) {
                for (c = [0 : ceil(grid_size / pitch_x)]) {
                    x_offset = (r % 2) * (pitch_x / 2);
                    
                    translate([c * pitch_x + x_offset, r * pitch_y, 0])
                    linear_extrude(height = height) {
                        offset(r = rounding_r, $fn = 40) {
                            rotate([0, 0, 30]) 
                            circle(d = diameter - (rounding_r * 2), $fn = 6);
                        }
                    }
                }
            }
        }
    }
}


module toptube(){
    translate([-1,66-18-5,18+7]){
        rotate([0,90,0]){
            cylinder(220,18,18);
        }}
}

module bottomtube(){
    translate([-1,12+6,12+7]){
        rotate([0,90,0]){
            cylinder(220,12,12);
        }}
}

module negcenter(){
    yoff=12+6;
    yend=66-18-5;
    h=yend-yoff;
    translate([-1,od*.273,oh*1.1]){
        rotate([180,0,90]){
            cube([h,nl,oh*.75]);
        }
    }
}

module negbottom(){
    translate([-1,od*0.091,oh*1.15]){
        rotate([180,0,90]){
            cube([oh/4,nl,oh/4]);
        }
    }
}

module bottomlip() {
    height = nl; 
    points = [[0,0], [0,4], [8.9,4], [14.65,0]];

    linear_extrude(height = height) {
        polygon(points);
    }
}

module tslot(){
    height = ol*0.231; 
    points = [[0,0], [0.8,1], [5.2,1], [6,0]];

    linear_extrude(height = height) {
        polygon(points);
    }
}

module mount_hole(r,h) {
    cylinder(h,r,r,true);
}

module panel_mount() {
    cylinder(10,2.35/2,2.35/2,true);
}
