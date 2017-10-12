///Toggle Fullscreen and Change Zoom
if(keyboard_check_pressed(vk_f4))
{
  display_toggle_fullscreen();
}
if(keyboard_check_pressed(vk_f3))
{
  display_change_zoom(wrap(zoom+1,min_zoom,max_zoom));
}
  