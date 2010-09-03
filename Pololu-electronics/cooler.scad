
module bracket(centres, height)
{
c = centres/2;

	difference()
	{
		cube([10, centres+10, height+3], center = true);
		translate([0,0, 3])
			cube([20, centres-15, height+3], center = true);
		translate([0,c, -8])
			cube([10, 10, height+10], center = true);
		translate([0, c, 0])
					cylinder(h = 60, r1 = 2, r2 = 2, center = true);
		translate([0,-c, -8])
			cube([10, 10, height+10], center = true);
		translate([0, -c, 0])
					cylinder(h = 60, r1 = 2, r2 = 2, center = true);
	}
}
module duct(centres, width)
{
	c = centres/2;

	difference()
	{
		cube([centres+10, centres+10, 10], center = true);
		translate([0, 0, 7])
			difference()
			{	
		     	cube([centres+6, centres+6, 20], center = true);
				translate([-c, -c, 0])
					cylinder(h = 30, r1 = 5, r2 = 5, center = true);
				translate([-c, c, 0])
					cylinder(h = 30, r1 = 5, r2 = 5, center = true);
				translate([c, -c, 0])
					cylinder(h = 30, r1 = 5, r2 = 5, center = true);
				translate([c, c, 0])
					cylinder(h = 30, r1 = 5, r2 = 5, center = true);
			}
		translate([-c, -c, 0])
					cylinder(h = 30, r1 = 2, r2 = 2, center = true);
		translate([c, -c, 0])
					cylinder(h = 30, r1 = 2, r2 = 2, center = true);
		translate([-c, c, 0])
					cylinder(h = 30, r1 = 2, r2 = 2, center = true);
		translate([c, c, 0])
					cylinder(h = 30, r1 = 2, r2 = 2, center = true);
          //translate([0, c/2, 0])
					cube([centres+4, width, 30], center = true);
	}
}

module cooler(centres, width, height)
{
	duct(centres, width);
	translate([centres/2, 0,  -(7+height+5)/2])
		bracket(centres, height);
	translate([-centres/2, 0,  -(7+height+5)/2])
		bracket(centres, height);
}

cooler(82, 25, 36);
