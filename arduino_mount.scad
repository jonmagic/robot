// http://cl.ly/image/3v1B0L081N0Z

module arduino_mount(height, radius) {
  cylinder(h=height, r=radius, center=true);
  translate([1.3,48.2,0]) cylinder(h=height, r=radius, center=true);
  translate([52.1,33,0]) cylinder(h=height, r=radius, center=true);
  translate([52.1,5.1,0]) cylinder(h=height, r=radius, center=true);
}

arduino_mount(10, 0.75);
