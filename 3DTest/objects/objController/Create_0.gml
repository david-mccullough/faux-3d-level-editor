/// @description 
#region // Color and Font Macros

#macro C_FOCUS make_colour_rgb(150, 255, 200)
#macro C_TRUE  make_colour_rgb(50, 255, 100)
#macro C_FALSE make_colour_rgb(255, 50, 100)

#macro F_DEBUG fntDebug
#macro F_LE fntLevelEditor

#endregion

draw_set_font(F_DEBUG)

#region // Object Name Macros
	
	#region //3D
	//D denotes 3D
	#macro O_DCRATE		"3dCrate"
	#macro O_DGRASS		"3dGrass"
	#macro O_DTREE		"3dTree"
	
	#endregion
	
	#region //2D
	
	#macro O_PUDDLE		"Puddle"
	
	#endregion
	
#endregion

#region // Level Editor

global.levelEditorEnabled = false;
ToggleLevelEditor();

#endregion

#region // Depth Grid Init

global.depthGrid = 0;
// create grid if not yet created
if !ds_exists(global.depthGrid, ds_type_grid)
{
	global.depthGrid = ds_grid_create(2,0);
}

#endregion

#region // File Directory

#macro DIR_LEVELS "Levels\\"
directory_create("Levels\\")
if !file_exists("readme.txt")
{
	var readme = file_text_open_write("readme.txt");
	file_text_write_string(readme,"hi");
	file_text_close(readme);
}

#macro DIR_STORAGE filename_path("readme.txt")
show_debug_message("STORAGE DIRECTORY: " + DIR_STORAGE)

#endregion



