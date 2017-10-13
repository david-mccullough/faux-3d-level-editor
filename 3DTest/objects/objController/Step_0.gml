/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_subtract)
{
	if room_previous(room) != rmSetup
	room_goto_previous()
}
else if keyboard_check_pressed(vk_add)
{
	if room_exists(room_next(room))
	room_goto_next()
}

if keyboard_check_pressed(vk_escape)
{
	GameClose();
}