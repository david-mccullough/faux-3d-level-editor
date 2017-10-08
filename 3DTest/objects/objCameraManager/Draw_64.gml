///Screen Flash
//draw_text(5,5,"View: "+string(camera_get_view_x(view_camera[0]))+","+string(camera_get_view_y(view_camera[0])));
if(timer < screen_flash_start + screen_flash_length)
{ //Active Screen Flash.
  var _start = timer-screen_flash_start;
  draw_set_alpha(lerp(1,0,_start/screen_flash_length))
  draw_set_color(screen_flash_color)
  draw_rectangle(-1,
                 -1,
                 display_get_gui_width()+1,
                 display_get_gui_height()+1,
                 false);
  draw_set_alpha(1);
}

