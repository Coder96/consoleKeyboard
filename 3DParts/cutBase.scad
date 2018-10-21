$fn=30;

//cutCenter();
//cutLeft();
//cutRight();
//translate([-30,0,0]) cutWall();
cutLeftHole();
//cutRightHole();
//cutSideHole();

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
