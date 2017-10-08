mblPressed = mouse_check_button_pressed(mb_left);
mblHeld = mouse_check_button(mb_left);
mblReleased = mouse_check_button_released(mb_left);

mbrPressed = mouse_check_button_pressed(mb_right);
mbrHeld = mouse_check_button(mb_right);
mbrReleased = mouse_check_button_released(mb_right);

mbmPressed = mouse_check_button_pressed(mb_middle);
mbmHeld = mouse_check_button(mb_middle)
mbmReleased = mouse_check_button_released(mb_middle);

mwUp = mouse_wheel_up()
mwDown = mouse_wheel_down()

/// Keys
paintKeyPressed = keyboard_check_pressed(ord("P"));
shiftPressed = keyboard_check_pressed(vk_shift);
shiftHeld = keyboard_check(vk_shift);