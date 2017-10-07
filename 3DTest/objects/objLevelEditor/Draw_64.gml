/// @description Insert description here
// You can write your code in this editor
draw_text(16,96,"editorState: " + string(state));

draw_text(16,104,"mouse_y: " + string(mouse_y));
draw_text(16,128,"gyu_mouse_y: " + string(global.guiMouseY));

draw_set_font(F_DEBUG)
draw_set_halign(fa_center)
draw_text(global.guiMouseX,global.guiMouseY+16,string(angle)+chr(176));
draw_set_halign(fa_left)