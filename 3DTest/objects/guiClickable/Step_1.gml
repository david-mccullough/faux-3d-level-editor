/// @description old

/*if point_in_rectangle(	global.gui_mouse_x,global.gui_mouse_y,
						x-sprite_xoffset -1,
						y-sprite_yoffset -1,
						x+sprite_width-sprite_xoffset -1,
						y+sprite_height-sprite_yoffset -1)

{
	if TopObject(global.gui_mouse_x,global.gui_mouse_y,guiBlocker) == id
		mouseOver = true;
	else
		mouseOver = false;
}
else
{
    mouseOver = false;
}