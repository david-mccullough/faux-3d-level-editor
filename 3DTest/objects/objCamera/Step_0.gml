/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_left)
{
	angleTarget -= 45;
}
else if keyboard_check_pressed(vk_right)
{
	angleTarget += 45;
}

angle = lerp(angle, angleTarget, .25);
