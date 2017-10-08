x = round(mouse_x);
y = round(mouse_y);
if state != editorState.idle
{
	//update canPlace
	canPlace = CheckCanPlace(x,y,editObject);
	
	// Adjust angle //
	var mult = 1;
	if shiftHeld {mult = 30}
		
	angle += mult*(mwUp - mwDown);
	if (angle < 0) {angle = 359}
	else if (angle >= 360) {angle = 0}
		
	//snap to multiples of 30
	if shiftHeld && (mwUp || mwDown) {
	angle = floor(angle/30)*30
	}
}

#region//Pan view

if mbmPressed
{
    drag_x = mouse_x
    drag_y = mouse_y
	//camera_set_view_pos(objCameraManager.camera,-1000,1000)
}
if (mbmHeld)
{
    // actual dragging logic:
    view_x = drag_x - (mouse_x - view_x)
    view_y = drag_y - (mouse_y - view_y)
    // make sure view doesn't go outside the room:
    view_x = max(0, min(view_x, room_width - view_w))
    view_y = max(0, min(view_y, room_height - view_h))
	//camera_set_view_pos(objCameraManager.camera,xpos,ypos)
}

#endregion

switch (state)
{
    case editorState.idle:
	#region //idle state
	
		/// Get top most object currently focused
		var tempListNum = 0
		// get list of all objects at cursor position
		var hitList = instance_place_list(x, y, objObject);
		if (hitList)
		{
			// find and store top most object
			tempListNum = ds_list_size(hitList);
			hit = ds_list_find_value(hitList, 0);
			for (var i = 0; i < ds_list_size(hitList); i++)
			{
				if (ds_list_find_value(hitList, i).myDepth < hit.myDepth)
				{
					hit = ds_list_find_value(hitList, i);
				}
			}
		
		if (mblPressed && objCursor.hit == noone) //left mb pressed...
		{
			// if we have a reference for a focused object...
			if (hit != noone)
			{
				//delete it but copy its relevant data
				angle = hit.angle;
				editIdentity = hit.identity;
				show_debug_message("selected identity: " + editIdentity)
				editObject = asset_get_index("obj"+editIdentity)
				editSprite= asset_get_index("spr"+editIdentity)
				
				instance_destroy(hit);
								
				state = editorState.inst;
			}
		}
		else //just hoverin'...
		{
			if (hit != noone && objCursor.hit == noone)
			{
				hit.editState = editorState.focused;
			}
		}
		
		ds_list_destroy(hitList);
		hit = noone;
			
		}

		if paintKeyPressed
		{
			state = editorState.paint;
		}
		
    break;
	#endregion
    
	case editorState.inst:
	#region //insance selected state
	
		//if we let go of mbleft...
		if mblReleased
		{
			//create copy of instance
			var temp = instance_create_depth(mouse_x,mouse_y, 0, editObject);
			temp.angle = angle;
			
			state = editorState.idle;
		}
		else if keyboard_check_pressed(vk_delete)
		{
			//since object is already technically deleted, just change state
			state = editorState.idle;
		}
	
	break;
	#endregion
	
	case editorState.paint:
	#region //paint state
	
		if paintKeyPressed
		{
			state = editorState.idle;
		}
		if mblPressed && canPlace && objCursor.hit == noone
		{
			var temp = instance_create_depth(mouse_x,mouse_y, 0, editObject);
			temp.angle = angle;
		}
	
	break;
	#endregion
	
}



