/// @description Insert description here
// You can write your code in this editor

draw_text(0,0,"editorState: " + string(state));

if state != editorState.idle
{
	draw_set_font(F_DEBUG)
	draw_set_halign(fa_center)
	draw_text(mouse_x,mouse_y+16,string(angle)+chr(176));
	draw_set_halign(fa_left)
	
	//draw representation of current object
	draw_3d(editSprite,1,x,y,1,1,angle+objCamera.angle,editColor,0.5);
}

gpu_set_blendmode(bm_add)
draw_sprite_ext(sprCursor,-1,x,y,1,1,0,c_white,0.8)
gpu_set_blendmode(bm_normal)