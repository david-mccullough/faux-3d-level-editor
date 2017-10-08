/// @description Insert description here
// You can write your code in this editor
x = round(mouse_x);
y = round(mouse_y);

switch state
{
	case mouseState.idle:
	
		//press left mb
		if mblPressed
		{
			state = mouseState.pressed;
			/// Get top most object currently focused
			hit = TopObject(x,y,guiBlocker);
		
			if hit != noone		
			{		
				if (object_get_parent(hit.object_index) != -100 //no parent
				&& hit.state != buttonState.disabled)
				{
					hit.state = buttonState.pressed;
					hit.x_c =  hit.x-x;
					hit.y_c =  hit.y-y;
					hit.initPress = true;
				}
			}
			
		}

		//hover
		else
		{
			/// Get top most object currently focused
			hit = TopObject(x,y,guiBlocker);
			if hit != noone
			{
				if hit.state != buttonState.disabled
				hit.state = buttonState.hover;
			}		
			//reset hit
			//hit = noone;
		}
		break;
	
	case mouseState.pressed:
		
		if (mouse_check_button_released(mb_left))
		{	
			//check that we are still above button
			if instance_exists(hit)
			{
			if (instance_place(x,y,hit) && hit.state != buttonState.disabled)
				hit.state = buttonState.released;
			else if hit.state != buttonState.disabled
				hit.state = buttonState.idle;
			}
			state = mouseState.idle;
		}
	
		break;
	
	case mouseState.disabled:
		//change sprite or alpha maybe
		break;

}
