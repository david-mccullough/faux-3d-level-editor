/// @description Insert description here

trgX += trgRate;
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