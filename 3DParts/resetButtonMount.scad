$fn=60;
//difference(){
//	import("baseCenter.stl");
//	translate([0,-20,0]) cube([50,30,70],center=true);
//}

 mountPostHoles=2.2;

//#import("baseCenterCut1.stl");
//translate([0,16,8]) MoSw();

//translate([0,24.5,7.8])
//	color("red")
//	button();

//translate([0,15,5.5]) 
//	color("green")
	SwitchHolder();
	
//translate([0,17.5,11]) 
//	SwitchHolderTopPlate(19.3, 5);
////////////////////////////////////////////////////////////////////////////////////////////////////
module SwitchHolder(){
	baseWidth=19.3;
	baseLength=10;
	translate([0,0,0]){
		difference(){
			union(){
				plate4Point(baseWidth, baseLength, 2 ,2); // Bottom
				translate([0, -13, 0])
					plate4Point(baseWidth, baseLength*2, 2 ,2); // Bottom
			}
			hull(){
				translate([(baseWidth/2)-6, -(baseLength/2)-15, 0])
					cylinder(d=3,h=20,center=true);		
				mirror([90, 0, 0])
					translate([(baseWidth/2)-6, -(baseLength/2)-15, 0])
						cylinder(d=3,h=20,center=true);		
			}
			translate([0,-10.5,1.8])								// base hiegth
				cube([baseWidth+1,baseLength*6,2],center=true);
      translate([(-baseWidth/2)+(5/2), (baseLength/2)-(5/2) , 1.7])
        cylinder(d=mountPostHoles,h=20,center=true);	
      mirror([90, 0, 0])
        translate([(-baseWidth/2)+(5/2), (baseLength/2)-(5/2) , 1.7])
        cylinder(d=mountPostHoles,h=20,center=true);	
		}
		translate([0, -.45 , 1.7]){		// BackBrace
			plate4Point(6, 3, 5 ,2);
//			SwitchTopPlateMountHoles();
		}
		translate([(-baseWidth/2)+(5/2), (baseLength/2)-(5/2) , 1.7])
			SwitchHolderPost();													// Left post
		mirror([90, 0, 0])
			translate([(-baseWidth/2)+(5/2), (baseLength/2)-(5/2) , 1.7])
			SwitchHolderPost();												// Right post
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////
module SwitchHolderPost(){
	difference(){
		plate4Point(5, 5, 5 ,2);
		cylinder(d=mountPostHoles,h=20,center=true);
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////
module SwitchHolderTopPlate(depth, width){
	difference(){
		union(){
		translate([(-depth/2)+(5/2), (width/2)-(5/2) , 0])
			plate4Point(5, 5, 2,2);
			mirror([90, 0, 0])
			translate([(-depth/2)+(5/2), (width/2)-(5/2) , 0])
				plate4Point(5, 5, 2,2);
			translate([0, 1.45, 0])
				plate4Point(depth-7, 2, 2, .1);
			plate4Point(depth-7, 2, 2,2);
		}
		translate([(-depth/2)+(5/2), (width/2)-(5/2) , 0])
      cylinder(d=mountPostHoles+.4,h=5,center=true);
		translate([(depth/2)-(5/2), (width/2)-(5/2) , 0])
			cylinder(d=mountPostHoles+.4,h=5,center=true);
			translate([0, -3, 0])
			plate4Point(depth/2, width, 4, 2);
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////
module button(){
	
	cubeSphere(9, 6, 4, 1); // Button
	
	translate([0,-2.2,0]) // Back plate
		rotate([90,0,0])
		plate4Point(11, 5, 2 ,1);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
module MoSw(){
	rotate([-90,0,0]) translate([-30.7,-46.2,0])import("2059_PUSH_BUTTON.stl");
}

////////////////////////////////////////////////////////////////////////////////////////////////////
module cubeSphere(iX, iYm, iZ, iD){

	edgeDiamitor = iD;
	
	hull(){
		for(a=[[1,1,1],[-1,1,1],[1,-1,1],[-1,-1,1],[1,1,-1],[-1,1,-1],[1,-1,-1],[-1,-1,-1]]){
			translate([
				a[0]*((iX/2) -(edgeDiamitor/2)), 
				a[1]*((iYm/2)-(edgeDiamitor/2)), 
				a[2]*((iZ/2) -(edgeDiamitor/2))]) sphere(d=edgeDiamitor);
		}
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////
module plate2Point(x,z,d){
	hull(){
		color("green") translate([(x/2) -(d/2),0 ,0]) cylinder(h=z, d=d, center=true);
		color("blue")  translate([-(x/2)+(d/2),0 ,0]) cylinder(h=z, d=d, center=true);
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////
module plate4Point(x,y,z,d){
	hull(){
		color("green") translate([(x/2)-(d/2) ,(y/2) -(d/2),0]) cylinder(h=z, d=d, center=true);
		color("blue")  translate([(x/2)-(d/2) ,-(y/2)+(d/2),0]) cylinder(h=z, d=d, center=true);
		color("red")   translate([-(x/2)+(d/2),(y/2) -(d/2),0]) cylinder(h=z, d=d, center=true);
		color("grey")  translate([-(x/2)+(d/2),-(y/2)+(d/2),0]) cylinder(h=z, d=d, center=true);
	}
}
