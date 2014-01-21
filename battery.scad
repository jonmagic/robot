// http://cl.ly/image/461R2T1m1B3a

module battery(height, width) {
  radius = width/2;

  union() {
    translate([0,0,-1.5])cylinder(h=height-1.5, r=radius, center=true);
    translate([0,0,23]) cylinder(h=1.5, r=radius/3, center=true);
  }
}

module aa_holder_x5() {
  difference() {
    cube([54,82,15]);
    translate([28,9,9])  rotate([0,90,0])   battery(53,18);
    translate([26,25,9]) rotate([180,90,0]) battery(53,18);
    translate([28,41,9]) rotate([0,90,0])   battery(53,18);
    translate([26,57,9]) rotate([180,90,0]) battery(53,18);
    translate([28,73,9]) rotate([0,90,0])   battery(53,18);
  }

  translate([28,9,9])  rotate([0,90,0])   battery(50,14.5);
  translate([26,25,9]) rotate([180,90,0]) battery(50,14.5);
  translate([28,41,9]) rotate([0,90,0])   battery(50,14.5);
  translate([26,57,9]) rotate([180,90,0]) battery(50,14.5);
  translate([28,73,9]) rotate([0,90,0])   battery(50,14.5);
}

aa_holder_x5();
