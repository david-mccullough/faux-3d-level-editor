x = round(mouse_x);
y = round(mouse_y);

if ghostObject == noone
{
	ghostObject = instance_create_depth(-999,-999,0,editObject)
	ghostObject.identity = editIdentity
	ghostObject.visible = false;
}
if editIdentity != ghostObject.identity
{
	instance_destroy(ghostObject)
	ghostObject = instance_create_depth(-999,-999,0,editObject)
	ghostObject.identity = editIdentity
	ghostObject.visible = false;
}


//Saving
if controlHeld && keyboard_check_pressed(ord("S"))
{
	show_debug_message("attempting to save level")
	LevelSave();
}

#region //angle and canPlace
if state != editorState.idle
{
	//update canPlace
	canPlace = ObjectCanPlace(x+xplace,y+yplace,ghostObject);
	
	// Adjust angle //
	var mult = 1;
	if shiftHeld {mult = angleSnap}
		
	angle += mult*(mwUp - mwDown);
	if (angle < 0) {angle = 359}
	else if (angle >= 360) {angle = 0}
		
	//snap to multiples of 30
	if shiftHeld && (mwUp || mwDown) {
	angle = floor(angle/angleSnap)*angleSnap
	}
}

#endregion

if keyboard_check_pressed(vk_enter)
show_debug_message(PanelToggle(editPanel, !editPanel.uiVisible))

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
		
		//"color" picking functionality
		if (altHeld and mblPressed)
		{
			if (hit != noone)
			{
				editIdentity = hit.identity;
				show_debug_message("selected identity: " + editIdentity)
				editSprite= IdentityGetSprite(editIdentity)
								
				state = editorState.paint;
			} 
		}
		else if (mblPressed && objCursor.hit == noone) //left mb pressed...
		{
			// if we have a reference for a focused object...
			if (hit != noone)
			{
				//delete it but copy its relevant data
				angle = hit.angle;
				editIdentity = hit.identity;
				xplace = hit.x-x;
				yplace = hit.y-y;
				show_debug_message("selected identity: " + editIdentity + " with angle " + string(angle))
				editObject = IdentityGetObject(editIdentity)
				editSprite= IdentityGetSprite(editIdentity)
				
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

		if mbrPressed
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
			ObjectCreate(mouse_x+xplace,mouse_y+yplace, editIdentity, angle);
			xplace = 0;
			yplace = 0;
			
			state = editorState.idle;
		}
		else if keyboard_check_pressed(vk_delete)
		{
			//since object is already technically deleted, just change state
			state = editorState.idle;
			xplace = 0;
			yplace = 0;
		}
	
	break;
	#endregion
	
	case editorState.paint:
	#region //paint state
	
		if mbrPressed
		{
			state = editorState.idle;
		}
		if mblPressed && canPlace && objCursor.hit == noone
		{
			ObjectCreate(mouse_x,mouse_y, editIdentity, angle);
		}
	
	break;
	#endregion
	
}

minSinceLastSave += (1/room_speed)/60
