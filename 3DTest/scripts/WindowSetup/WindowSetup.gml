///@description Make pixel perfect window

application_surface_draw_enable(false)
window_set_fullscreen(true)
//get monitor size
global.monitorWidth = display_get_width();
global.monitorHeight = display_get_height();

//get apsect ratio
var gcf = GetGCF(global.monitorWidth,global.monitorHeight);
global.aspectRatioW =  global.monitorWidth/gcf;
global.aspectRatioH =  global.monitorHeight/gcf;

//set size
global.displayWidth = global.aspectRatioW*global.displaySize;
global.displayHeight = global.aspectRatioH*global.displaySize;

//get offset point
global.displayXOffset=(global.monitorWidth-global.displayWidth)/2;
global.displayYOffset=(global.monitorHeight-global.displayHeight)/2;

if !global.isFullScreen
{
window_set_fullscreen(false)
window_set_size(global.displayWidth,global.displayHeight)
}


show_message("aspect ratio is " + string(global.aspectRatioW)+ ":" + string(global.aspectRatioH) +"\n" + 
string(global.displayWidth)+ "x" + string(global.displayHeight))