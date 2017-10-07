/// @description Get Input

/// Mouse
mblPressed = mouse_check_button_pressed(mb_left);
mbmPressed = mouse_check_button_pressed(mb_middle);
mbrPressed = mouse_check_button_pressed(mb_right);
mblReleased = mouse_check_button_released(mb_left);
mbmReleased = mouse_check_button_released(mb_middle);
mbrReleased = mouse_check_button_released(mb_right);

mbmHeld = mouse_check_button(mb_middle)

mwUp = mouse_wheel_up()
mwDown = mouse_wheel_down()

/// Keys
paintKeyPressed = keyboard_check_pressed(ord("P"));
shiftPressed = keyboard_check_pressed(vk_shift);
shiftHeld = keyboard_check(vk_shift);