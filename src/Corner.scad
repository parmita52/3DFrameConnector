// Corner.scad
// The corner piece to hold 3 wooden bars
radius = 4.1;   // radius of the wooden bar
x = radius * 4; // dimentions for the cubic pieces
z = radius * 4;
y = 32;

union (){
difference (){
    cube([x, y, z]);
    translate([8, 16+16, 8])
    rotate([90,0,0])
    cylinder (h = y/2, r = radius);
}

difference (){
    cube([z, x, y]);
    translate([8, 8, 16])
    rotate([0,0,90])
    cylinder (h = y/2, r = radius);
}

difference (){
    cube([y, z, x]); 
    translate([16, 8, 8])
    rotate([0,90,0])
    cylinder (h = y/2, r = radius);
}

}