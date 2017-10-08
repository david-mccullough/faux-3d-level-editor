/// @description Insert description here
// You can write your code in this editor
global.guiMouseX = (mouse_x-camera_get_view_x(objCameraManager.camera))*objDisplayManager.gui_x_scale;
global.guiMouseY = (mouse_y-camera_get_view_y(objCameraManager.camera))*objDisplayManager.gui_y_scale;