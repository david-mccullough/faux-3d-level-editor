/// @description Initialize
enum displaySizes
{
	d50 = 50,
	d80 = 80,
	d100 = 100,
	d120 = 120
}

global.displaySize = displaySizes.d100;
global.isFullScreen = false;

//TODO Load Resolution Preferences

WindowSetup();


//create camera
global.cameraSize = 30;
global.cameraWidth = global.aspectRatioW*global.cameraSize;
global.cameraHeight = global.aspectRatioH*global.cameraSize;
view_camera[0] = camera_create_view(0,0,global.cameraWidth,global.cameraHeight,0,-1,0,0,0,0);
global.camera = view_camera[0]
view_set_camera(view_camera[0],global.camera)

WindowUpdate()
 
/// Setup all the view ports
//not needed?? seems to be working without doing this
/*for(var i=1; i<= room_last; i++)
{
  if(room_exists(i))
  {    
        room_set_view_enabled(i,true);
        room_set_viewport(i,0,true,0,0,global.displayWidth,global.displayHeight);
        room_set_camera(i,0,global.camera);
  }
}*/


room_goto_next();