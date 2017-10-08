/// @description Insert description here
// You can write your code in this editor\
event_inherited()
image_xscale = lerp(image_xscale,1,.2);
image_yscale = lerp(image_yscale,1,.2);

if keyboard_check_pressed(vk_space)
{
	trgX = 0;
	trgMag = 2
}

trgX += 10;
trgMag *= .98;
trgX %= 360;

image_angle = angle+objCameraManager.angle;
