/// @description Initialize


display_set_gui_size(global.displayWidth,global.displayHeight);
global.guiScaleX = display_get_gui_width()/global.cameraWidth;
global.guiScaleY = display_get_gui_width()/global.cameraHeight;


global.guiMouseX = (mouse_x-camera_get_view_x(global.camera))*global.guiScaleX;
global.guiMouseY = (mouse_y-camera_get_view_y(global.camera))*global.guiScaleY;