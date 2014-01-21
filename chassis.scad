// http://cl.ly/image/222J3E102d3o

use <servo_mount.scad>;
use <arduino_mount.scad>;

module chassis() {
  body_width      = 100;
  body_length     = 190;
  body_height     = 3;
  x_left_edge   = -body_width/2;
  x_right_edge  = body_width/2;
  wheel_well_depth = 10;
  wheel_well_dimensions = [wheel_well_depth,80,6];
  mirror_x   = [1,0,0];
  post_dimensions = [3,80,19];

  union() {
    difference() {
      translate([x_left_edge,0,0]) cube(size=[body_width,body_length,body_height]);
      translate([x_left_edge-1,20,-1]) cube(wheel_well_dimensions);
      mirror(mirror_x) translate([x_left_edge-1,20,-1]) cube(wheel_well_dimensions);
      translate([-23.5,150,0]) rotate([0,0,270]) arduino_mount(10, 0.75);
      translate([0,210,-1]) mirror([1,0,0]) rotate([0,0,135]) cube([40,80,6]);
      translate([0,210,-1]) rotate([0,0,135]) cube([40,80,6]);
    }

    mirror([0,0,1]) translate([x_left_edge+9,85.5,0]) servo_mounts();
    mirror([0,0,1]) translate([x_right_edge-12,85.5,0]) servo_mounts();
  }
}

chassis();
