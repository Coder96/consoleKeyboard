//-----------------------------------------
module grid_make(ii_gridW, ii_gridD){
	difference(){
		union(){
			grid_plate(ii_gridW, ii_gridD);
			translate([gn_gHoleW/2,-gn_gHoleD/2,0]){
				grid_support(ii_gridW, ii_gridD);
			}
		}
		translate([gn_gHoleW/2,-gn_gHoleD/2,0]){
			grid_keyHole(ii_gridW, ii_gridD);
		}
	}	
}
//-----------------------------------------
module grid_keyHole(ii_gridW, ii_gridD){
	
	ii_gridW = ii_gridW - 1;
	ii_gridD = ii_gridD - 1;
	color("orange")
	for(col=[0:1:ii_gridD]){
		for(row=[0:1:ii_gridW]){
			translate([
				row*(gn_gHoleW+gn_gSpaceBetweenW),
				-col*(gn_gHoleW+gn_gSpaceBetweenD),
				0]){
				cube([gn_gHoleW,gn_gHoleD,gn_gHoleH],center=true);
			}
		}
	}
}
//-----------------------------------------
module grid_support(ii_gridW, ii_gridD){
	ii_gridW = ii_gridW - 1;
	ii_gridD = ii_gridD - 1;
	for(col=[0:1:ii_gridD]){
		for(row=[0:1:ii_gridW]){
			translate([
				row*(gn_gHoleW+gn_gSpaceBetweenW),
				-col*(gn_gHoleW+gn_gSpaceBetweenD),
				0]){
				if(row != ii_gridW){
					translate([(gn_gHoleW+gn_gSpaceBetweenW)/2,0,0])
						rotate([0,0,90])
						trangleSupport(gn_gHoleW+gn_gSpaceBetweenD);
				}
				if(col != ii_gridD){
					translate([0,-(gn_gHoleD+gn_gSpaceBetweenD)/2,0])
						trangleSupport(gn_gHoleW+gn_gSpaceBetweenW);
				}
			}
		}
	}

}
//-----------------------------------------
module grid_plate(ii_gridW, ii_gridD){

	wi_colW = ((ii_gridW*gn_gHoleW)+((ii_gridW)*gn_gSpaceBetweenW));
	wi_rowD = ((ii_gridD*gn_gHoleD)+((ii_gridD)*gn_gSpaceBetweenD));
//  color("green") 
		translate([
			 (wi_colW/2)-(gn_gSpaceBetweenW/2),
			-(wi_rowD/2)+(gn_gSpaceBetweenD/2),0]){
    translate([0,0,.5]) cube([wi_colW,wi_rowD,1], center=true);
    translate([0,0,.77]) cube([wi_colW,wi_rowD,1], center=true);
  }
}
//-----------------------------------------
module testGrid(){
  cube([14,1000,5],center=true);
  for(a=[1:1:5]){
    translate([a*21,0,0])
      cube([14,1000,5],center=true);
  }
  for(a=[1:1:5]){
    translate([a*-21,0,0])
      cube([14,1000,5],center=true);
  }
}
//-----------------------------------------
module trangleSupport(iLen){
  difference(){
    translate([0,0,1.06])
      rotate([45,0,0])
      cube([iLen,3,3],center=true);
    translate([0,0,-.5])
      cube([iLen+1,6,3], center=true);
  }
}
//-----------------------------------------
module grid_outterplate(in_width){
	difference(){
		union(){
			hull(){
				translate([-in_width,0,0])
					grid_outterplate_tabCore();
				translate([in_width,0,0])
					rotate([0,0,180])
					grid_outterplate_tabCore();
			}
			translate([-in_width,0,0])
				grid_outterplate_tabTab();
			translate([in_width,0,0])
				rotate([0,0,180])
				grid_outterplate_tabTab();
		}
		translate([-in_width,0,0])
			grid_outterplate_tabCuts();
		translate([in_width,0,0])
			rotate([0,0,180])
			grid_outterplate_tabCuts();
	}
}
//-----------------------------------------
module grid_outterplate_tabCore(){
	// Outter Coners
	hull(){
		translate([5.5,-17.5,gn_mPlateZ])
		 cylinder(h=gn_plateZ,d=10,center=true);
		mirror([0,180,0])
			translate([5.5,-17.5,gn_mPlateZ])
			 cylinder(h=gn_plateZ,d=10,center=true);
	}
}
//-----------------------------------------
module grid_outterplate_tabTab(){
	hull(){
		translate([-.8,-1.4,gn_mPlateZ])
		 cylinder(h=gn_plateZ,d=7.1,center=true);
		mirror([0,180,0])
			translate([-.8,-1.4,gn_mPlateZ])
			 cylinder(h=gn_plateZ,d=7.1,center=true);
	}
// Sholder to be cut
	translate([-.42,0,gn_mPlateZ])
	cube([3,16.54,gn_plateZ],center=true);
}
//-----------------------------------------
module grid_outterplate_tabCuts(){
		//bolt hole
		 cylinder(h=4,d=3.2,center=true);
	// Radius Cutout Bump
		translate([-3.25,-8.26,gn_mPlateZ])
		 cylinder(h=gn_plateZ+1,d=7.5,center=true);
		mirror([0,180,0])
			translate([-3.25,-8.26,gn_mPlateZ])
			 cylinder(h=gn_plateZ+1,d=7.5,center=true);

}
//----------------------------------------------------------------------
module grid_outterplateCutKeys(in_Width, ia_og){
	difference(){
		grid_outterplate(in_Width);
		for(a=ia_og){
			gn_gSpaceBetweenD = a[3];
			gn_gSpaceBetweenW = a[4];
			translate([-a[6],a[5],-1])
				hull(){
				color(a[0])
					scale([.999,.999,2]) grid_make(a[1],a[2]);
				}
		}
	}
	for(a=ia_og){
		translate([-a[6],a[5],0])
			color(a[0])
			grid_make(a[1],a[2]);
	}
}