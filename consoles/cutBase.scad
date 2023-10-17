$fn=30;

//cutCenter();
//cutLeft();
//cutRight();
//translate([-30,0,0]) cutWall();
//cutLeftHole();
//cutRightHole();
//cutSideHole();

use <covercut.scad>

//color("green") translate([0,41,41]) rotate([340,180,0]) plate3x4();
//cutLeft3();
//cutRight3();
//cutLeftHole3();
//cutLeftHole32();
cutRightHole32();
//cutRightHole3();
//cutBackWall3();
//cutBackWallHalf();
//cutCenterBack3();
//cutFrontWall();

//cutWallTopLeftFront();
//cutWallTopLeftCenter();
//cutWallTopLeftBack();

//cutWallBopLeftFront();
//cutWallBopLeftCenter();
//cutWallBopLeftBack();

//cutWallCenLeftFront();
//cutWallCenLeftCenter();
//cutWallCenLeftBack();

//cutBackWallHalfCenter();
//cutBackWallTopCenter();
//cutBackWallCenter();
//cutFrontWalltop();
//cutFrontWallBop();
//cutBottonCenter();

module cutBottonCenter(){
	difference(){
		import("StreamCheap_Base.stl");
#		translate([42,0,0]) cube([14,60,100],center=true);
		translate([-20,0,0]) cube([70,60,100],center=true);
	}
}
module cutLeft3(){
	difference(){
		cutLeft();
		translate([-43,30,0]) rotate([-340,0,0]) cube([15,20,100],center=true);
		translate([-43,19,4])  rotate([-340,0,0]) cube([15,5,10],center=true);
	}
	difference(){
		translate([0,20,7.279]) cutLeft();
		translate([-43,8,0]) rotate([-340,0,0]) cube([15,21,100],center=true);
		translate([-45,30,9]) cube([20,40,20],center=true);
	}	
	difference(){
		translate([0,20,0]) cutLeft();
		translate([-45,30,47]) cube([20,50,50],center=true);
		translate([-45,-10,0]) rotate([-340,0,0]) cube([20,50,50],center=true);

	}
}
module cutRight3(){
	mirror([180,0,0]) cutLeft3();
}
module cutLeftHole3(){
	difference(){
		cutLeft3();
		sideHole3();
	}
}
module cutLeftHole32(){
	difference(){
		cutLeft3();
		sideHole32();
	}
}
module cutRightHole32(){
	mirror([180,0,0]) cutLeftHole32();
}
module cutRightHole3(){
	mirror([180,0,0]) cutLeftHole3();
}
module cutBackWall3(){
	difference(){
		translate([0,20,0]) cutWall();
		translate([30,-2,0]) cube([15,15,100],center=true);		
		translate([30,-24,0]) cube([15,15,100],center=true);
		translate([30,39,40]) cube([15,15,15],center=true);		
	}
	
	difference(){
		translate([0,20,7.279]) cutWall();
		translate([30,-2,0]) cube([15,15,100],center=true);		
//		translate([30,39,40]) cube([15,15,15],center=true);		
		translate([30,12,7]) cube([15,60,10],center=true);		
	}
}
module cutBackWallHalf(){
	move =110;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([30,0,0]){
			translate([move/2,0,0]) cube([100,60,100],center=true);
			translate([-move/2,0,0]) cube([100,60,100],center=true);

			translate([0,0,46]) cube([100,60,30],center=true);
			translate([0,-30,0]) cube([100,60,60],center=true);
		}
	}
}
module cutBackWallTopCenter(){
	move = 80;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move/2,0,0]) cube([40,60,100],center=true);
		translate([-move/2,0,0]) cube([40,60,100],center=true);

    translate([0,0,7]) cube([100,60,30],center=true);
		translate([0,-47,0]) cube([100,60,60],center=true);
	}
}
module cutBackWallCenter(){
	move = 80;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move/2,0,0]) cube([40,60,100],center=true);
		translate([-move/2,0,0]) cube([40,60,100],center=true);

    translate([0,0,7]) cube([100,60,30],center=true);
    translate([0,0,46]) cube([100,60,30],center=true);
    
		translate([0,-47,0]) cube([100,60,60],center=true);
	}
}
module cutCenterBack3(){
	difference(){
		translate([0,20,0]) cutCenter();
		translate([0,-4,0]) cube([45,12,100],center=true);		
		translate([0,20,45]) cube([55,55,17],center=true);		
	}
	difference(){
		translate([0,20,7.279]) cutCenter();
		translate([0,-4,0]) cube([45,12,100],center=true);		
//		translate([30,-24,0]) cube([15,15,100],center=true);
		translate([0,20,15]) cube([55,55,17],center=true);		
	}
}
module cutFrontWall(){
	difference(){
		cutWall();
		translate([30,25,0]) cube([15,15,100],center=true);		
	}
}
module cutFrontWallBop(){
  move = 40;
	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([20,60,100],center=true);
		translate([-move,0,0]) cube([20,60,100],center=true);

		translate([-move/2,15,0]) cube([100,60,100],center=true);

		translate([0,0,20]) cube([100,60,25],center=true);	
	}
}
module cutSideHole(){

	difference(){
		import("StreamCheap_Base.stl");
		translate([140,0,0]) sideHole();
		translate([-140,0,0]) sideHole();
	}
}


module cutCenter(){
	
	move = 80;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move/2,0,0]) cube([40,60,100],center=true);
		translate([-move/2,0,0]) cube([40,60,100],center=true);
	}
}
module cutBackWallHalfCenter(){
	
	move = 80;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move/2,0,0]) cube([40,60,100],center=true);
		translate([-move/2,0,0]) cube([40,60,100],center=true);

    translate([0,0,46]) cube([100,60,30],center=true);
		translate([0,-47,0]) cube([100,60,60],center=true);
	}
}
module cutWall(){
	
	move =110;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([30,0,0]){
			translate([move/2,0,0]) cube([100,60,100],center=true);
			translate([-move/2,0,0]) cube([100,60,100],center=true);
		}
	}
}

module cutLeft(){
	
	move = 12;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
//		translate([-move/2,0,0]) cube([40,60,100],center=true);
	}
}

module cutLeftHole(){
	
	move = 12;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		sideHole();
	}
}

module cutRight(){
	
	move = -12;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		
	}
}

module cutRightHole(){
	
	move = -12;
	
	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		sideHole();
	}
}

module sideHole(){
	hull(){
		translate([0,-15,5.6]) rotate([0,90,0]) color("red")cylinder(h=200,d=6,center=true);
		translate([0,15,5.6]) rotate([0,90,0]) color("green") cylinder(h=200,d=6,center=true);
		translate([0,15,24]) rotate([0,90,0]) color("blue")cylinder(h=200,d=6,center=true);
		translate([0,-15,13]) rotate([0,90,0]) color("grey") cylinder(h=200,d=6,center=true);
	}
}
module sideHole3(){
	hull(){
		translate([0,-15,5.6]) rotate([0,90,0]) color("red")cylinder(h=200,d=6,center=true);
		translate([0,30,5.6]) rotate([0,90,0]) color("green") cylinder(h=200,d=6,center=true);
		translate([0,30,29]) rotate([0,90,0]) color("blue")cylinder(h=200,d=6,center=true);
		translate([0,-15,13]) rotate([0,90,0]) color("grey") cylinder(h=200,d=6,center=true);
	}
}
module sideHole32(){
  hull(){
		translate([0,-15,5.6]) rotate([0,90,0]) color("red")cylinder(h=200,d=6,center=true);
		translate([0,15,5.6]) rotate([0,90,0]) color("green") cylinder(h=200,d=6,center=true);
		translate([0,15,24]) rotate([0,90,0]) color("blue")cylinder(h=200,d=6,center=true);
		translate([0,-15,13]) rotate([0,90,0]) color("grey") cylinder(h=200,d=6,center=true);
	}
}
module cutWallTopLeftFront(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,20,0]) cube([100,60,100],center=true);

		translate([-move/2,0,0]) cube([100,60,25],center=true);
	}
}
module cutWallTopLeftCenter(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,-41.5,0]) cube([100,60,100],center=true);
		translate([-move/2,39,0]) cube([100,60,100],center=true);

		translate([-move/2,0,0]) cube([100,60,25],center=true);
	}
}
module cutWallTopLeftBack(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,-22,0]) cube([100,60,100],center=true);

		translate([-move/2,0,0]) cube([100,60,25],center=true);
	}
}
module cutWallBopLeftFront(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,20,0]) cube([100,60,100],center=true);

		translate([-move/2,0,20]) cube([100,60,25],center=true);
	}
}
module cutWallBopLeftCenter(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,-43,0]) cube([100,60,100],center=true);
		translate([-move/2,39,0]) cube([100,60,100],center=true);

		translate([-move/2,0,20]) cube([100,60,25],center=true);
		translate([-move/2,0,30]) cube([100,60,25],center=true);
	}
}
module cutWallBopLeftBack(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,-22,0]) cube([100,60,100],center=true);

		translate([-move/2,0,20]) cube([100,60,25],center=true);
		translate([-move/2,0,35]) cube([100,60,25],center=true);
	}
}
//////////////////////////////////////////
module cutWallCenLeftCenter(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,-43,0]) cube([100,60,100],center=true);
		translate([-move/2,39,0]) cube([100,60,100],center=true);

		translate([-move/2,0,32]) cube([100,60,25],center=true);
		translate([-move/2,0,-9]) cube([100,60,25],center=true);
	}
}
module cutWallCenLeftBack(){
	move = 12;

	difference(){
		import("StreamCheap_Base.stl");
		translate([move,0,0]) cube([100,60,100],center=true);
		translate([-move/2,-22,0]) cube([100,60,100],center=true);

		translate([-move/2,0,40]) cube([100,60,25],center=true);
		translate([-move/2,0,-9]) cube([100,60,25],center=true);
	}
}