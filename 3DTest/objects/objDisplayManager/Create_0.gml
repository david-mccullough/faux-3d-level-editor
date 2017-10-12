///Properties
ideal_width=0; //Doesn't matter because we are going to calculate this.
ideal_height=256; 
zoom = 2;
max_zoom=1;
min_zoom=2;
use_sub_pixels=true;

//Aspect ratio
aspect_ratio = display_get_width()/display_get_height();

//Calculate new ideal width or height
ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width/aspect_ratio); //height static?

ideal_width=round(ideal_width);
ideal_height=round(ideal_height);

//Check to make sure our ideal width and height isn't an odd number
if(ideal_width & 1)
  ideal_width++;
      
if(ideal_height & 1)
  ideal_height++;
 
 
max_zoom = floor(display_get_width()/ideal_width)+1;

surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

gui_x_scale = ideal_width///objCameraManager.cameraWidth;
gui_y_scale = ideal_height//objCameraManager.cameraHeight/global.displayHeight;

room_goto_next();

alarm[0]=1; //Center Window
alarm[2]=1; //Change Zoom

