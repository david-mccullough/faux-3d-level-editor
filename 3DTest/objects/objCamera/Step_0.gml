/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_left)
{
	targetAngle -= 45;
}
else if keyboard_check_pressed(vk_right)
{
	targetAngle += 45;
}

angle = lerp(angle, targetAngle, .25);