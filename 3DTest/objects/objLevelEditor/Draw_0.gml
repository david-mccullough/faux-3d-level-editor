/// @description Insert description here
// You can write your code in this editor

if state != editorState.idle
{
	//draw representation of current object
	if sprite_exists(editSprite)
	draw_3d(editSprite,1,x,y,1,1,angle+objCameraManager.angle,editColor,0.5);
}

