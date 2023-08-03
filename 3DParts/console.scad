$fn=30;

//translate([0,-21,18]) rotate([200,0,0])
//color("red") import("plate_ConsoleNumpad5x4_2x4.stl");

//translate([0,-21,18]) rotate([200,0,0]){
//  color("green") import("cover5x4.stl");
//  translate([0,-120,0]) color("red") import("cover2x4.stl");
//}


use <covercut.scad>
//top3_4();
//top3_3();

//Console2828();
//translate([0,-65,-9]) ConsoleNumpad5x4_2x4();
//Console333();
//Console3_343();

//Console3_343();

Console2x3_3x4_2x3();

//----------------------------------------------------------------------
module Console2x3_3x4_2x3(){
	padCenter342();
	rotate([0,0,40]) translate([-84,34.5,0]) padLeft();
	mirror([90,0,0]) rotate([0,0,40]) translate([-84,34.5,0]) padLeft();
	translate([-10,0,0]) filler();
	mirror([9,0,0]) translate([-10,0,0])  filler();
}
//----------------------------------------------------------------------
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
//----------------------------------------------------------------------
module padCenter342(){
	translate([0,0,0]) import("cutLeftHole342.stl");
	translate([0,0,0]) import("cutRightHole342.stl");

	translate([0,0,0]) import("cutCenterBack3.stl");
	
	translate([-25,0,0]) resize([18,0,0]) import("cutBackWall3.stl");
	mirror([180,0,0]) translate([-25,0,0]) resize([18,0,0]) import("cutBackWall3.stl");

	translate([-234,0,0]) resize([78,0,0]) import("cutFrontWall.stl");
}
//----------------------------------------------------------------------
module padCenter3(){
	translate([0,0,0]) import("cutLeftHole3.stl");
	translate([0,0,0]) import("cutRightHole3.stl");

	translate([0,0,0]) import("cutCenterBack3.stl");
	
	translate([-25,0,0]) resize([18,0,0]) import("cutBackWall3.stl");
	mirror([180,0,0]) translate([-25,0,0]) resize([18,0,0]) import("cutBackWall3.stl");

	translate([-234,0,0]) resize([78,0,0]) import("cutFrontWall.stl");
}
//----------------------------------------------------------------------
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
//----------------------------------------------------------------------
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
//----------------------------------------------------------------------
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
//----------------------------------------------------------------------
module filler23(){
	//bottom
	hull(){
		translate([-38,-13,1.25]) cylinder(d=2,h=2.5,center=true);
		translate([-36,35,1.25]) cylinder(d=2,h=2.5,center=true);
		translate([-64,10,1.25]) cylinder(d=2,h=2.5,center=true);
//		translate([-74,25,1.25]) cylinder(d=2,h=2.5,center=true);
	}
	//back
	hull(){
		translate([-36,35,18.55]) cylinder(d=2,h=37,center=true);
		translate([-64,10,15.25]) cylinder(d=2,h=27,center=true);
	}
	//Top
	hull(){
		translate([-38,-13,18]) cylinder(d=4,h=2.5,center=true);
		translate([-36,35,36]) cylinder(d=2,h=2.5,center=true);
		translate([-64,10,30]) cylinder(d=2,h=2.5,center=true);
	}
//	translate([28,9,0]) rotate([0,0,-20])	resize([12,0,0]) 	import("cutFrontWall.stl");
}
//----------------------------------------------------------------------
module ConsoleNumpad5x4_2x4(){

//translate([0,-21,18]) rotate([200,0,0]) color("red") import("plate_ConsoleNumpad5x4_2x4.stl");
   intersection(){
    translate([0,60,50]) 
      cube([110,200,90], center=true);
    ConsoleNumpad5x4_2x4_2();
  }
}
module ConsoleNumpad5x4_2x4_2(){
  
    ConsoleNumpad5x4_2x4_leftSide();
    mirror([180,0,0])
      ConsoleNumpad5x4_2x4_leftSide();
    
  //  translate([0,112.7,9]) import("cutBackWallHalf.stl");
    
    translate([18,112.7,9]) import("cutBackWallHalfCenter.stl");
    translate([-18,112.7,9]) import("cutBackWallHalfCenter.stl");
    
    translate([0,112.7,-55]) scale([1.91,1,4]) import("cutBackWallCenter.stl");
    
    translate([0,112.7,41]) scale([1.91,1,1]) import("cutBackWallTopCenter.stl");
    
    translate([0,0,0]) scale([1.28,1,1]) import("cutFrontWalltop.stl");
    translate([0,0,9]) scale([1.28,1,1]) import("cutFrontWallBop.stl");
    
     translate([0,40,10]) cube([80,114,2], center=true);
}
module ConsoleNumpad5x4_2x4_leftSide(){
	translate([0,0,0]) import("cutWallTopLeftFront.stl");
	translate([0,0,9]) import("cutWallBopLeftFront.stl");
  
	translate([0,0,0]) import("cutWallTopLeftCenter.stl");
//  translate([0,0,9]) import("cutWallCenLeftCenter.stl");
  translate([0,0,9]) import("cutWallBopLeftCenter.stl");
  
	translate([0,19.6,7.1]) import("cutWallTopLeftCenter.stl");
  translate([0,19.6,9]) scale([1,1,.9]) import("cutWallCenLeftCenter.stl");
  translate([0,19.6,9]) import("cutWallBopLeftCenter.stl");

	translate([0,39.5,14.35]) import("cutWallTopLeftCenter.stl");
  translate([0,39.5,9]) import("cutWallCenLeftCenter.stl");
  translate([0,39.5,9]) import("cutWallBopLeftCenter.stl");

	translate([0,59.2,21.53]) import("cutWallTopLeftCenter.stl");
  translate([0,59.2,9]) import("cutWallCenLeftCenter.stl");
  translate([0,59.2,15]) import("cutWallCenLeftCenter.stl");
  translate([0,59.2,9]) import("cutWallBopLeftCenter.stl");

//	translate([0,79.3,28.85]) import("cutWallTopLeftCenter.stl");
//	translate([0,95.3,34.67]) import("cutWallTopLeftCenter.stl");

// Top Wall
    z1 = 65.089;
    z2 = 52.7;
//color("red")
  hull(){
    translate([-45.75,102,z1]) cube([4,.01,15],center=true);
    translate([-46.5,102,z1]) cube([4,.01,15],center=true);

    translate([-45.75,68,z2]) cube([4,.01,15],center=true);
    translate([-46.5,68,z2]) cube([4,.01,15],center=true);
  }

//color("red")
// Wall
  hull(){
    z3 = 13.133;
    // Inside
    translate([-43,102,z1-z3]) cube([4,.01,20],center=true);
    translate([-46.5,102,z1-z3]) cube([4,.01,20],center=true);

    // OutSide
    translate([-43,68,z2-z3]) cube([4,.01,20],center=true);
    translate([-46.5,68,z2-z3]) cube([4,.01,20],center=true);
  }

  translate([0,79,9]) import("cutWallBopLeftCenter.stl");
  translate([0,79,9]) import("cutWallCenLeftCenter.stl");
  translate([0,79,25]) import("cutWallCenLeftCenter.stl");

  translate([0,99,9]) import("cutWallBopLeftCenter.stl");
  translate([0,99,9]) import("cutWallCenLeftCenter.stl");
  translate([0,99,25]) import("cutWallCenLeftCenter.stl");  
  
	translate([0,112.7,41]) import("cutWallTopLeftCenter.stl");
  translate([0,112.7,9]) import("cutWallCenLeftCenter.stl");
  translate([0,112.7,25]) import("cutWallCenLeftCenter.stl");
  translate([0,112.7,35]) import("cutWallCenLeftCenter.stl");
  translate([0,112.7,9]) import("cutWallBopLeftCenter.stl");

	translate([0,112.7,41]) import("cutWallTopLeftBack.stl");
   translate([0,112.7,9]) import("cutWallBopLeftBack.stl");

  translate([0,112.7,9]) import("cutWallCenLeftBack.stl");
  translate([0,112.7,29]) import("cutWallCenLeftBack.stl");
  
}