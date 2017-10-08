/// @description Outputs helpful specs for the indicated display component
/// @param display_enum 
/// @param [view_index]
enum display{screen, window, gui, app_surface, view};
var str="";
var _view = 0;
if(argument_count > 1)
	_view = argument[1];
switch(argument[0])
{
  case display.screen:
    str="Display: "+string(display_get_width())+" x "+string(display_get_height())+" ("+string(display_get_width()/display_get_height())+")";
  break;
  case display.window:
    str="Window: "+string(window_get_width())+" x "+string(window_get_height())+" ("+string(window_get_width()/window_get_height())+")";
  break;
  case display.gui:
    str="GUI: "+string(display_get_gui_width())+" x "+string(display_get_gui_height())+" ("+string(display_get_gui_width()/display_get_gui_height())+")";
  break;
  case display.app_surface:
    str="App Surface: "+string(surface_get_width(application_surface))+" x "+string(surface_get_height(application_surface))+" ("+string(surface_get_width(application_surface)/surface_get_height(application_surface))+")";
  break;
  case display.view:
    str="View: "+string(view_w)+" x "+string(view_h)+" ("+string(view_w/view_h)+")";
 break;
}

return str;