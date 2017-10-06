#region // editor states
x = mouse_x;
y = mouse_y;
switch (state)
{
    case editorState.idle:
	
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
				if (ds_list_find_value(hitList, i).depth < hit.depth)
				{
					hit = ds_list_find_value(hitList, i);
				}
			}
		
		if (mblPressed) //left mb pressed...
		{
			// if we have a reference for a focused object, select it
			if (hit != noone)
			{
				hit.editState = editorState.selected;
				state = editorState.inst;
			}
		}
		else //just hoverin'...
		{
			if (hit != noone)
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
	
		
    case editorState.inst:
	
	break;
	
	case editorState.paint:
		if paintKeyPressed
		{
			state = editorState.idle;
		}
		if mblPressed
		{
			var temp = instance_create_depth(mouse_x,mouse_y,0,obj3D);
			temp.angle = angle;
		}
		
	
	break;
}

#endregion

if state != editorState.idle
{
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