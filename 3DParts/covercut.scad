$fn=30;


//plate2x4();
//plate2x8();
//cutPlate2x4();
//plate5x4();
plate_ConsoleNumpad5x4_2x4();
//all();



module all(){
	plate2x1();
	translate([0,-50,0])  plate2x2();
	translate([0,-100,0]) plate2x3();
	translate([0,-150,0]) plateBase();
	translate([0,-200,0]) plate2x5();
	translate([0,-250,0]) plate2x6();
//	translate([0,-300,0]) plate2x7();
	translate([0,-350,0]) plate2x8();
	translate([0,-400,0]) plate2x9();
	translate([0,-450,0]) plate2x10();

	translate([-100,0,0])  plate3x1();
	translate([-100,-100,0]) plate3x3();
	translate([-100,-150,0]) plate3x4();
}

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

module plate2x8(){
	plateBaseCutTabs();
	translate([-41,0,0]) cutPlate2x3();
	translate([41,0,0]) rotate([0,0,180]) cutPlate2x3();
	
}

module plate2x9(){
	plateBaseCutTabs();
	translate([-42,0,0]) cutPlate2x4();
	translate([61,0,0]) rotate([0,0,180]) cutPlate2x4();	
}

module plate2x10(){
	plateBaseCutTabs();
	translate([-62,0,0]) cutPlate2x4();
	translate([61,0,0]) rotate([0,0,180]) cutPlate2x4();
	
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

module cutPlate2x4(){

	difference(){
		plateBase();
		translate([45,0,0]) color("green") cube([12,60,10],center=true);
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

module plate3x1(){
	difference(){
		plate2x1();
		translate([-22,-20,0]) cube([5,5,10],center=true);
		translate([-42,-20,0]) cube([5,5,10],center=true);
	}
	difference(){
		translate([0,-20,0]) plate2x1();
		translate([-22,0,0]) cube([5,5,10],center=true);
		translate([-42,0,0]) cube([5,5,10],center=true);
	}
}
module plate3x3(){
	intersection() {
		union(){
			plate2x3();
			translate([0,-21,0]) plate2x3();
		}
		cube([100,100, 10],center=true);
	}
}
module plate3x4(){
	intersection() {
		union(){
			plate2x4();
			translate([0,-21,0]) plate2x4();
		}
		cube([100,150, 10],center=true);
	}
}
module plate5x4(){
	intersection() {
		union(){
			plate3x4();//color("green")
			translate([0,-42,0]) plate3x4();
		}
		cube([100,250, 10],center=true);
	}
}
module plate_ConsoleNumpad5x4_2x4(){
  color("green") import("cover5x4.stl");
  translate([0,-120,0]) color("green") import("cover2x4.stl");
  color("green") translate([0,-114,0]){
    translate([0,0,.5]) cube([87,22,1], center=true);
    translate([0,0,.77]) cube([87,22,1], center=true);
  }
  translate([0,-114,0])
    rotate([0,0,90])
    trangleSupport(30);

  translate([21,-114,0])
    rotate([0,0,90])
    trangleSupport(30);

  translate([-21,-114,0])
    rotate([0,0,90])
    trangleSupport(30);

  translate([0,-106.5,0])
    trangleSupport(80);

  translate([0,-121.5,0])
    trangleSupport(80);

}
module trangleSupport(iLen){
  difference(){
    translate([0,0,1.06])
      rotate([45,0,0])
      cube([iLen,3,3],center=true);
    translate([0,0,-.5])
      cube([iLen+1,6,3], center=true);
  }
}
