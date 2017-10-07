///@description Make pixel perfect window

WindowSetup();

global.cameraWidth = global.aspectRatioW*global.cameraSize;
global.cameraHeight = global.aspectRatioH*global.cameraSize;
camera_set_view_size(global.camera,
global.cameraWidth,
global.cameraHeight)

//camera_get_view_height()

//view_set_xport(global.camera,0);
//view_set_yport(global.camera,0);

view_set_wport(global.camera,global.displayWidth)
view_set_wport(global.camera,global.displayHeight)

surface_resize(application_surface,global.displayWidth,global.displayHeight);

display_set_gui_size(global.displayWidth,global.displayHeight);
global.guiScaleX = global.displayWidth/global.cameraWidth;
global.guiScaleY = 1//global.cameraHeight/global.displayHeight;

with objDisplayManager
{
	alarm[0] = 1;
}