$fn=30;

//translate([0,.1,26]) rotate([200,0,0]) color("green") import("cover2x8.stl");

use <covercut.scad>
//top3_4();
//top3_3();

Console2828();


//Console333();
//Console343();

//Console3_343();

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
module Console3_343(){

	padCenter3();
	rotate([0,0,40]) translate([-84,34.5,0]) padLeft3();
	mirror([90,0,0]) rotate([0,0,40]) translate([-84,34.5,0]) padLeft3();
	translate([-10,0,0]) filler3();
	mirror([9,0,0]) translate([-10,0,0])  filler3();
}

module Console2828(){
  rotate([0,0,-10]) translate([-90,0,0]) pad2x8HoleRight();
  rotate([0,0,10]) translate([90,0,0]) mirror([180,0,0]) pad2x8HoleRight();
hull(){
  difference(){
    union(){
      rotate([0,0,-10]) translate([-49.5,0,0]) import("baseRightHole.stl");
      rotate([0,0,10]) translate([49,0,0]) mirror([180,0,0]) import("baseRightHole.stl");
    }
 translate([0,30,20]) cube([40,50,50],center=true);
 translate([0,22,50]) cube([40,50,50],center=true);
 translate([0,0,-1]) rotate([20,0,0]) cube([40,50,50],center=true);

  translate([5.7,0,10]) rotate([20,0,20]) cube([10,50,50],center=true);
  mirror([180,0,0]) translate([5.7,0,10]) rotate([20,0,20]) cube([10,50,50],center=true);

  }
}
  difference(){
    translate([0,2,0]) scale([2.7,1,1]) import("baseWall.stl");
    translate([0,30,20]) cube([40,50,50],center=true);
  }

  difference(){
    translate([0,2,0]) scale([2.7,1,1]) import("baseWall.stl");
    translate([0,30,20]) cube([40,50,50],center=true);
    translate([0,-5,27]) cube([40,50,50],center=true);
  }

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

module pad2x8HoleRight(){
  translate([-51,0,0]) import("baseCenter.stl");
  translate([51,0,0]) import("baseCenter.stl");
  
  translate([-41,0,0]) import("baseLeft.stl");
  translate([41,0,0]) import("baseRightHole.stl");

	translate([-75,0,0]) import("baseWall.stl");
	translate([75,0,0]) import("baseWall.stl");
  
  scale([6.3,1,1]) import("baseWall.stl");
}

module top3_3(){
	color("red") translate([-10,20,33.356]) rotate([340,180,0]) plate3x3();
}
module top3_4(){
	color("green") translate([0,41,41]) rotate([340,180,0]) plate3x4();
}
module padCenter3(){
	translate([0,0,0]) import("cutLeftHole3.stl");
	translate([0,0,0]) import("cutRightHole3.stl");

	translate([0,0,0]) import("cutCenterBack3.stl");
	
	translate([-25,0,0]) resize([18,0,0]) import("cutBackWall3.stl");
	mirror([180,0,0]) translate([-25,0,0]) resize([18,0,0]) import("cutBackWall3.stl");

	translate([-234,0,0]) resize([78,0,0]) import("cutFrontWall.stl");
}
module padLeft3(){
	translate([10.5,0,0]) import("cutLeft3.stl");
	translate([-10.5,0,0]) import("cutRightHole3.stl");

	translate([0,0,0]) import("cutCenterBack3.stl");

	translate([.7,0,0])	resize([7.7,0,0]) import("cutBackWall3.stl");
	mirror([180,0,0]) translate([.7,0,0])	resize([7.7,0,0]) import("cutBackWall3.stl");

	translate([-168,0,0]) resize([56,0,0]) import("cutFrontWall.stl");

}
module padRight3(){
	mirror([180,0,0]) padLeft3();
}
module filler3(){
	//bottom
	hull(){
		translate([-38,-13,1.25]) cylinder(d=2,h=2.5,center=true);
		translate([-36,35,1.25]) cylinder(d=2,h=2.5,center=true);
		translate([-74,25,1.25]) cylinder(d=2,h=2.5,center=true);
	}
	//back
	hull(){

		translate([-36,35,18.55]) cylinder(d=2,h=37,center=true);
		translate([-74,25,18.55]) cylinder(d=2,h=37,center=true);
	}
	//Top
	hull(){
		translate([-38,-13,18]) cylinder(d=4,h=2.5,center=true);
		translate([-36,35,36]) cylinder(d=2,h=2.5,center=true);
		translate([-74,25,37]) cylinder(d=2,h=2.5,center=true);
	}
//	translate([28,9,0]) rotate([0,0,-20])	resize([12,0,0]) 	import("cutFrontWall.stl");
}
