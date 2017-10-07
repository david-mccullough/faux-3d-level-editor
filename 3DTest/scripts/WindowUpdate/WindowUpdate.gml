///@description Make pixel perfect window

WindowSetup();

global.cameraWidth = global.aspectRatioW*global.cameraSize;
global.cameraHeight = global.aspectRatioH*global.cameraSize;
camera_set_view_size(global.camera,
global.cameraWidth,
global.cameraHeight)

/*view_set_xport(global.camera,0);
view_set_yport(global.camera,0);

view_set_wport(global.camera,global.cameraWidth*global.displaySize)
view_set_wport(global.camera,global.cameraHeight*global.displaySize)