#region // Shake, Flash, Zoom
if(keyboard_check_pressed(vk_space))
	screen_shake(10,20,irandom(360));
	
if(keyboard_check_pressed(vk_enter))
	screen_flash(room_speed*.25,c_white);

//level editor zoom
if global.levelEditorEnabled && keyboard_check(vk_alt)
{
	desired_zoom += (mouse_wheel_up()-mouse_wheel_down())*.1;
	desired_zoom = clamp(desired_zoom,.6,5);
	if(mouse_check_button_pressed(mb_middle))
		desired_zoom=1;

	current_zoom = approach(current_zoom,desired_zoom,.03);
}

#endregion

if keyboard_check_pressed(vk_left)
{
	angleTarget -= 45;
}
else if keyboard_check_pressed(vk_right)
{
	angleTarget += 45;
}

angle = lerp(angle, angleTarget, .25);
