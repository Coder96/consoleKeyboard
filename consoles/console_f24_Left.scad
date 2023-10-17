$fn=30;

//translate([0,-21,18]) rotate([200,0,0])
//color("red") import("../3DParts/plate_ConsoleNumpad5x4_2x4.stl");

//translate([0,-21,18]) rotate([200,0,0]){
//  color("green") import("../3DParts/cover5x4.stl");
//  translate([0,-120,0]) color("red") import("../3DParts/cover2x4.stl");
//}


use <covercut.scad>


//   console_2x10();

//	translate([0,0,26.356]) 
//	  rotate([-20,0,180]) 
//	  rotate([180,0,0]) 
	  topConsoleF24Left();  


//----------------------------------------------------------------------



module console_2x10(){

  translate([63,0,0]) import("../3DParts/baseRight.stl");
  translate([-63,0,0]) import("../3DParts/baseLeft.stl");

//  translate([0,0,0]) import("../3DParts/baseCenter.stl");
  translate([70,0,0]) import("../3DParts/baseCenter.stl");
//  translate([-70,0,0]) import("../3DParts/baseCenter.stl");
  // On ends
	translate([95.5,0,0]) scale([1.2,1,1]) import("../3DParts/baseWall.stl");
	translate([-95.5,0,0]) scale([1.2,1,1]) import("../3DParts/baseWall.stl");
  // Between ports
  translate([35,0,0]) scale([3.1,1,1]) import("../3DParts/baseWall.stl");
  translate([-35,0,0]) scale([11,1,1]) import("../3DParts/baseWall.stl");
}
//----------------------------------------------------------------------
module topConsoleF24Left(){
  color("green")
    plate2x10();
  color("green") translate([31.5,0,0]){
    translate([0,0,.5]) cube([15,36,1], center=true);
    translate([0,0,.77]) cube([15,36,1], center=true);
  }
}
