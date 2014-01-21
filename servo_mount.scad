// http://cl.ly/image/1a213J1w3m39

use <nut.scad>;

module servo_mount() {
  dimensions = [3,12,20];

  difference() {
    cube(dimensions);
    translate([-1,13,-2]) rotate([20,0,0]) cube([5,20,30]);
    translate([1.5,3,15]) rotate([0,90,0]) cylinder(h=5,r=0.75, center=true);
    translate([1.5,3,5]) rotate([0,90,0]) cylinder(h=5,r=0.75, center=true);
    translate([0.4,3,5]) rotate([0,90,0]) nut(3);
    translate([0.4,3,15]) rotate([0,90,0]) nut(3);
    translate([2.6,3,5]) rotate([0,90,0]) nut(3);
    translate([2.6,3,15]) rotate([0,90,0]) nut(3);
  }
}

module servo_mounts() {
  servo_mount();
  translate([0,-51,0]) mirror([0,1,0]) servo_mount();
}

servo_mounts();
