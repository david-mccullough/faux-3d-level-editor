/// @description Insert description here
// You can write your code in this editor
global.guiMouseX = (mouse_x-camera_get_view_x(global.camera))*global.guiScaleX;
global.guiMouseY = (mouse_y-camera_get_view_y(global.camera))*global.guiScaleY;