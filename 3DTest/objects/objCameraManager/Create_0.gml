///Camera Properties
/// Create event

#region
camera_initilized = false;

camera = camera_create();// _view(0,0,objDisplayManager.ideal_width,objDisplayManager.ideal_height,0,noone,0,0,0,0);

globalvar view_x;
globalvar view_y;
globalvar view_w;
globalvar view_h;

view_x = 0;
view_y = 0;
view_w = objDisplayManager.ideal_width;
view_h = objDisplayManager.ideal_height;
desired_zoom=1;
current_zoom=desired_zoom;

//Target tracking
follow_target = noone;
velocity = vect2(0,0);
steering = vect2(0,0);

//Camera movement and tracking.
max_speed = .5;
max_force = .05;
max_distance = vect2(50,20);

approach_distance = 40;

camera_margin=0; //Never get closer than 8 pixels to the edge of the room.

///Camera Effect Properties
timer=0;


//Screen Shake
screen_shake_amp=0;
screen_shake_start=timer;
screen_shake_length=-1;
screen_shake_direction=0;


//Screen Flash
screen_flash_color=c_white;
screen_flash_start=timer;
screen_flash_length=-1;
#endregion

angle = 0;
angleTarget = 0;
