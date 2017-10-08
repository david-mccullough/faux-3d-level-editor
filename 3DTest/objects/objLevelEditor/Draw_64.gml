/// @description Insert description here
// You can write your code in this editor
draw_set_font(F_DEBUG)
draw_set_halign(fa_center)
draw_text(global.gui_mouse_x,global.gui_mouse_y+16,string(angle)+chr(176));
draw_set_halign(fa_left)

draw_text(16,96,"editorState: " + string(state));
draw_text(16,104,"mouse_y: " + string(mouse_y));
draw_text(16,128,"gui_mousey: " + string(global.gui_mouse_y));


#region //object list



#endregion