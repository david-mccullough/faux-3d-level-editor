/// @description Resizes the game window
/// @param {real} zoom_amount
with(objDisplayManager)
{
  zoom=argument[0];
  window_set_size(ideal_width*zoom,ideal_height*zoom);
	if(use_sub_pixels)
		surface_resize(application_surface, ideal_width*zoom,ideal_height*zoom); 
  alarm[0]=1;
}
