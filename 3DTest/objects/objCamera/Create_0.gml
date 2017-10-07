/// @description Insert description here
// You can write your code in this editor
angle = 0;
angleTarget = 0;

//create camera
global.cameraSize = 40;
global.cameraWidth = global.aspectRatioW*global.cameraSize;
global.cameraHeight = global.aspectRatioH*global.cameraSize;
view_camera[0] = camera_create_view(0,0,global.cameraWidth,global.cameraHeight,0,-1,0,0,0,0);
global.camera = view_camera[0]
view_set_camera(view_camera[0],global.camera)

WindowUpdate()