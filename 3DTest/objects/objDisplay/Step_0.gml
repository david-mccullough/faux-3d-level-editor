/// @description Insert description here
// You can write your code in this editor
var temp = global.displaySize
if keyboard_check_pressed(vk_f1)
{
	global.displaySize = displaySizes.d50;
}
if keyboard_check_pressed(vk_f2)
{
	global.displaySize = displaySizes.d80;
}
if keyboard_check_pressed(vk_f3)
{
	global.displaySize = displaySizes.d100;
}
if keyboard_check_pressed(vk_f4)
{
	global.displaySize = displaySizes.d120;
}

if temp != global.displaySize
WindowUpdate()
