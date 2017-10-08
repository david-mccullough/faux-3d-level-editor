/// @description Insert description here
// You can write your code in this editor

if state != editorState.idle
{
	//draw representation of current object
	if sprite_exists(editSprite)
	draw_3d(editSprite,1,x,y,1,1,angle+objCameraManager.angle,editColor,0.5);
}

gpu_set_blendmode(bm_add)
draw_sprite_ext(sprCursor,-1,x,y,1,1,0,c_white,0.8)
gpu_set_blendmode(bm_normal)