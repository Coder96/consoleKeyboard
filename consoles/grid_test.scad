$fn=30;


include <grid_vars.scad>

echo(gn_gSpaceBetweenD);



//translate([7,-7,0]){
//	grid_keyHole(ti_gridW, ti_gridD);
//	grid_support(ti_gridW, ti_gridD);
//}
//	grid_plate(ti_gridW, ti_gridD);

gn_gSpaceBetweenD = 7;
gn_gSpaceBetweenW = 7;

	ti_gridW = 6;
	ti_gridD = 6;
grid_make(ti_gridW, ti_gridD);
/*
col1 = ti_gridW;
col2 = col1 - 1;

row1 = ti_gridD;
row2 = row1 - 1;
# 
translate([((col1*14)+(col2*5.05))/2,7,0])
	cube([(col1*14)+(col2*5.05),14,.00000001],center=true);
#
translate([-7,-((row1*14)+(row2*5.05))/2,0])
	cube([14,(row1*14)+(row2*5.05),.00000001],center=true);
*/

include <grid_mods.scad>
