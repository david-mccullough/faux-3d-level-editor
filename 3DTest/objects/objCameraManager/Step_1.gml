///Init the player camera
if(!camera_initilized && instance_exists(follow_target))
{
	
	view_center_instance(follow_target);
	view_clamp_to_room(camera_margin);
	camera_initilized = true;
}  


