/// @description Toggles between fullscreen and not fullscreen.
window_set_fullscreen(!window_get_fullscreen());
if(use_sub_pixels)
{
	if(window_get_fullscreen())
		surface_resize(application_surface,display_get_width(), display_get_height());
	else
		surface_resize(application_surface, window_get_width(), window_get_height()); 
}
	