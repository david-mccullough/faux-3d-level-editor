/// @description Load level data
// create grid if not yet created
if !ds_exists(global.depthGrid, ds_type_grid)
{
	global.depthGrid = ds_grid_create(2,0);
}
LevelLoad(true);
