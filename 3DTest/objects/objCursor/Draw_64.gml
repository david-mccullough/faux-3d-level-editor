/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprCursor,-1,global.gui_mouse_x,global.gui_mouse_y,1,1,0,c_white,1)

//could be useful as tooltip:
/*
if hit != noone
draw_text(global.gui_mouse_x+16,global.gui_mouse_y,string(object_get_name(hit.object_index)))