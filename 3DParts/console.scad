$fn=30;


//translate([0,.1,26]) rotate([200,0,0]) color("green") import("cover2x3.stl");


Console333();
//Console343();

module filler(){
	//bottom
	hull(){
		translate([-38,-13,1.25]) cylinder(d=2,h=2.5,center=true);
		translate([-36,20,1.25]) cylinder(d=2,h=2.5,center=true);
		translate([-64,10,1.25]) cylinder(d=2,h=2.5,center=true);
	}
	//back
	hull(){

		translate([-36,20,15.25]) cylinder(d=2,h=27,center=true);
		translate([-64,10,15.25]) cylinder(d=2,h=27,center=true);
	}
	//Top
	hull(){
		translate([-38,-13,18.3]) cylinder(d=4,h=2.5,center=true);
		translate([-36,20,30]) cylinder(d=2,h=2.5,center=true);
		translate([-64,10,30]) cylinder(d=2,h=2.5,center=true);
	}
}

module Console333(){
	padCenter();
	rotate([0,0,40]) translate([-76,27.5,0]) padLeft();
	mirror([90,0,0]) rotate([0,0,40]) translate([-76,27.5,0]) padRight();
	filler();
	mirror([9,0,0]) filler();

}

module Console343(){

	import("StreamCheap_BaseHole.stl");
	rotate([0,0,40]) translate([-84,34.5,0]) padLeft();
	mirror([90,0,0]) rotate([0,0,40]) translate([-84,34.5,0]) padRight();
	translate([-10,0,0]) filler();
	mirror([9,0,0]) translate([-10,0,0])  filler();
}

module padLeft(){
	import("baseCenter.stl");
	translate([10.5,0,0]) import("baseLeft.stl");
	translate([-10.5,0,0]) import("baseRightHole.stl");

	translate([-24,0,0]) import("baseWall.stl");
	translate([24,0,0]) import("baseWall.stl");
}

module padCenter(){
	import("baseCenter.stl");
	translate([10.5,0,0]) import("baseLeftHole.stl");
	translate([-10.5,0,0]) import("baseRightHole.stl");

	translate([-24,0,0]) import("baseWall.stl");
	translate([24,0,0]) import("baseWall.stl");
}

module padRight(){
	import("baseCenter.stl");
	translate([10.5,0,0]) import("baseLeft.stl");
	translate([-10.5,0,0]) import("baseRightHole.stl");

	translate([-24,0,0]) import("baseWall.stl");
	translate([24,0,0]) import("baseWall.stl");
}


