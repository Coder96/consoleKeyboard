$fn=30;


//plate2x1();
//translate([0,-50,0])  plate2x2();
translate([0,-100,0]) plate2x3();
//translate([0,-150,0]) plateBase();
//translate([0,-200,0]) plate2x5();
//translate([0,-250,0]) plate2x6();

module plate2x1(){
	
	cutPlate2x1();
	translate([-63,0,0]) rotate([0,0,180]) cutPlate2x1();
}

module plate2x2(){
	
	cutPlate2x2();
	translate([-42,0,0]) rotate([0,0,180]) cutPlate2x1();
}

module plate2x3(){
	cutPlate2x2();
	translate([-21,0,0]) rotate([0,0,180]) cutPlate2x2();
	
}

module plate2x4(){
	//cutPlate2x2();
	import("stream-cheap-faceplate-reinforced.stl");
	
}

module plate2x5(){
	plateBaseCutTab();
//	translate([-21,0,0]) cutPlate2x3();
	translate([21,0,0]) rotate([0,0,180]) cutPlate2x2();
	
}

module plate2x6(){
	plateBaseCutTabs();
	translate([-21,0,0]) cutPlate2x3();
	translate([21,0,0]) rotate([0,0,180]) cutPlate2x2();
	
}

module cutPlate2x1(){

	difference(){
		plateBase();
		translate([10,0,0]) color("green") cube([80,80,10],center=true);
	}
}

module cutPlate2x2(){

	difference(){
		plateBase();
		translate([22,0,0]) color("green") cube([60,60,10],center=true);
	}
}

module cutPlate2x3(){

	difference(){
		plateBase();
		translate([35,0,0]) color("green") cube([60,60,10],center=true);
	}
}

module plateBase(){
	translate([0,22.5,0]) import("stream-cheap-faceplate-reinforced.stl");
}

module plateBaseCutTab(){
	difference(){
		plateBase();
		color("green") translate([48.5,0,0]) cube([10,20,10],center=true);
	}
}

module plateBaseCutTabs(){
	difference(){
		plateBase();
		color("green") translate([48.5,0,0]) cube([10,20,10],center=true);
		color("green") translate([-48.5,0,0]) cube([10,20,10],center=true);
	}
}
