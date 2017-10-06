/// @description Insert description here
// You can write your code in this editor

draw_text(0,0,"editorState: " + string(state));

if state != editorState.idle
{
	draw_text(mouse_x,mouse_y+16,string(angle));
	
	//draw representation of current object
	draw_3d(editSprite,1,x,y,1,1,angle,editColor,0.75);
}

gpu_set_blendmode(bm_add)
draw_sprite_ext(sprCursor,-1,x,y,1,1,0,c_white,.8)
gpu_set_blendmode(bm_normal)