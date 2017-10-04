/// @description Insert description here
// You can write your code in this editor\
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



image_angle = angle+objCamera.angle;

if keyboard_check_pressed(vk_up)
{
	type++;
}
else if keyboard_check_pressed(vk_down)
{
	type--;
}
type = clamp(type,0,3);