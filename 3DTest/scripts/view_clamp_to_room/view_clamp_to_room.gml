/// @description clamps the view to the room
/// @param [border] Keeps the view away from the room's edge the given amount of pixels <optional> 
var _bor=0;
if(argument_count > 0)
	_bor=argument[0];
	
view_x=clamp(view_x,_bor,room_width-_bor-view_w);
view_y=clamp(view_y,_bor,room_height-_bor-view_h);