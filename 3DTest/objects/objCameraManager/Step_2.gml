///@description Update Camera
//Center on player
//view_center_instance(0,follow_target);

//Update view size
var _center = view_get_center();
view_w = min(room_width,objDisplayManager.ideal_width/current_zoom);
view_h = min(room_width/objDisplayManager.aspect_ratio,objDisplayManager.ideal_height/current_zoom);
view_center(_center[0],_center[1]);


///Follow the player
if(!global.levelEditorEnabled && instance_exists(follow_target))
{ //Only move the camera if an instance of our player exists
	//max_speed = follow_target.move_speed;
	//Steering!
	var _x=follow_target.x-view_w/2;
	var _y=follow_target.y-view_h/2;
	steering = vect2(0,0);
	
	//Find our desired velocity
	var _pos = vect2(view_x,view_y);
	var _tar_vect = vect2(_x,_y);
	var _dist = point_distance(view_x,view_y,_x,_y);
	if (_dist < 1)
	{
		steering = vect2(0,0);
		velocity = vect2(0,0);
	}
	else if(_dist < approach_distance)
	{
		steering = sb_approach(	_pos,
								velocity,
								_tar_vect,
								max_speed,
								approach_distance);
	}
	else
	{
		steering = sb_seek(	_pos,
							velocity,
							_tar_vect,
							max_speed);
	}
	steering = vect2_truncate(steering,max_force);
	velocity = vect2_add(velocity,steering);
	view_x+=velocity[0];
	view_y+=velocity[1];
									 
}

///Apply Camera Shake
if(timer < screen_shake_start+screen_shake_length && screen_shake_amp > 0)
{ //Active Screen shake.
  var _start = timer-screen_shake_start;
  var _amp = lerp(screen_shake_amp,0,_start/screen_shake_length);
  var _offx = lengthdir_x(_amp,screen_shake_direction+(180* (timer mod 3 == 0 || timer mod 4 == 0)));
  var _offy = lengthdir_y(_amp,screen_shake_direction+(180* (timer mod 3 == 0 || timer mod 4 == 0)));
  
	view_x += _offx;
	view_y -= _offy;
}

//Enforce our max distance
if(instance_exists(follow_target))
{
	view_x = clamp(view_x,_x-max_distance[0],_x+max_distance[0]);
	view_y = clamp(view_y,_y-max_distance[0],_y+max_distance[0]);
}
	
//Finally, set camera Position (ALWAYS DO LAST)
view_clamp_to_room(camera_margin);

if(view_visible[0])
{
	camera_set_view_size(view_camera[0],view_w,view_h);
	var _round_amount = view_w/surface_get_width(application_surface);
	camera_set_view_pos(view_camera[0],view_x,view_y);
											//round_n(view_x,_round_amount),
											//round_n(view_y,_round_amount));
}


///Inc Timer
timer++;