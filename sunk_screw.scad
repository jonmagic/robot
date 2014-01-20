// http://cl.ly/image/0f0M1U1D0n3T

module sunk_screw(size) {
  difference() {
    rotate([0,0,45]) cube([size,size,1], center=true);
    translate([size,0,0]) cube([size,size,2], center=true);
    translate([-size,0,0]) cube([size,size,2], center=true);
    translate([0,size,0]) cube([size,size,2], center=true);
    translate([0,-size,0]) cube([size,size,2], center=true);
  }
}

sunk_screw(10);
