/// @description Insert description here

//inhereit edit blend modes
event_inherited();

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