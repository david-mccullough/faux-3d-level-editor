/// @description 
#region // Color Macros

#macro C_FOCUS make_colour_rgb(150, 255, 200)
#macro C_TRUE  make_colour_rgb(50, 255, 100)
#macro C_FALSE make_colour_rgb(255, 50, 100)

#endregion

#region // Object Name Macros

	//D denotes 3D
	#macro O_DCRATE		"3dCrate"
	#macro O_DGRASS		"3dGrass"
	#macro O_DTREE		"3dTree"
	#macro O_PUDDLE		"Puddle"
	
#endregion


global.levelEditorEnabled = true;

global.depthGrid = 0;
// create grid if not yet created
if !ds_exists(global.depthGrid, ds_type_grid)
{
	global.depthGrid = ds_grid_create(2,0);
}