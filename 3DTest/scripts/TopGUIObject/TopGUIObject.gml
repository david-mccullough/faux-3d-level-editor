/// Get top most object currently focused
///@param x
///@param y
///@param object

var xx = argument[0]
var yy = argument[1]
var obj = argument[2]

var tempListNum = 0
// get list of all objects at cursor position
var hitList = instance_place_list(xx, yy, obj);
point_in_rectangle(	global.gui_mouse_x,global.gui_mouse_y,
						x-sprite_xoffset -1,
						y-sprite_yoffset -1,
						x+sprite_width-sprite_xoffset -1,
						y+sprite_height-sprite_yoffset -1)
if (hitList)
{
	// find and store top most object
	tempListNum = ds_list_size(hitList);
	var hit = ds_list_find_value(hitList, 0);
	for (var i = 0; i < ds_list_size(hitList); i++)
	{
		if (ds_list_find_value(hitList, i).depth < hit.depth)
		{
			hit = ds_list_find_value(hitList, i);
		}
	}
	return hit;
}
else
	return noone;
		