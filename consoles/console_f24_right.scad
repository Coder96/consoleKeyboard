$fn=60;

use <covercut.scad>
include <grid_vars.scad>
include <grid_mods.scad>

gn_alignV = 17.5;
gn_alignW = 25;
	 
gn_gSpaceBetweenD = 7;

//	translate([0,0,26.356])
//	  rotate([20,0,0])
//	  rotate([180,0,0])
//	  topConsoleF24Right();

// GridCollums
// GridRows
// gn_gSpaceBetweenD
// gn_gSpaceBetweenW
// AlingD
// AlingW
ga_oGr = 
	[
		["Blue"   ,3,2,7,gn_gSpaceBetweenW,gn_alignV,-49.4],
		["Brown"  ,1,2,7,gn_gSpaceBetweenW,gn_alignV,-23.35],
		["Green"  ,4,2,7,gn_gSpaceBetweenW,gn_alignV,59.4],
		["Red"    ,2,2,7,gn_gSpaceBetweenW,gn_alignV,101.5]
	];
ga_oGl = 
	[
		["Orange" ,4,2,7,gn_gSpaceBetweenW,gn_alignV,-30.35],
		["Green"  ,4,2,7,gn_gSpaceBetweenW,gn_alignV,59.4],
		["Red"    ,2,2,7,gn_gSpaceBetweenW,gn_alignV,101.5]
	];

//	translate([0,0,26.356])
//	  rotate([20,0,0])
//	  rotate([180,0,0])
grid_outterplateCutKeys(107,ga_oGr);

translate([0,47,0]) rotate([0,0,180])
	grid_outterplateCutKeys(107,ga_oGl);

//color("Aqua")	console_2x10();

//----------------------------------------------------------------------
module console_2x10(){

  translate([-63,0,0]) import("../3DParts/baseLeft.stl");
  translate([63,0,0]) import("../3DParts/baseRight.stl");

  translate([-70,0,0]) import("../3DParts/baseCenter.stl");
  translate([0,0,0]) import("../3DParts/baseCenter.stl");
  translate([70,0,0]) scale([4,1,1]) import("../3DParts/baseWall.stl");
//  translate([70,0,0]) import("../3DParts/baseCenter.stl");
  // On ends
	translate([-95.5,0,0]) scale([1.2,1,1]) import("../3DParts/baseWall.stl");
	translate([95.5,0,0]) scale([1.2,1,1]) import("../3DParts/baseWall.stl");
  // Between ports
  translate([-35,0,0]) scale([3.1,1,1]) import("../3DParts/baseWall.stl");
  translate([35,0,0]) scale([3.1,1,1]) import("../3DParts/baseWall.stl");
}
//----------------------------------------------------------------------
module topConsoleF24Right(){
  color("green")
    plate2x10();
  color("green") translate([31.5,0,0]){
    translate([0,0,.5]) cube([15,36,1], center=true);
    translate([0,0,.77]) cube([15,36,1], center=true);
  }
}
//----------------------------------------------------------------------

