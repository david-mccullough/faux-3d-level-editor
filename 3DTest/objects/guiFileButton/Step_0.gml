/// @description state
//if last or first panels, set appropiate buttons to disabled
if myPanel != noone
{
	guix = (guixOffset+myPanel.guix)
	guiy = (guiyOffset+myPanel.guiy)
}
x = (guix+view_x)
y = (guiy+view_y)
switch state
{
	case buttonState.idle:
		var_saturation = -0.1;
		
		if mouseOver {state = buttonState.hover}
	
		break;
	
	case buttonState.hover:
		var_saturation = 0.1;
		
		if !mouseOver {state = buttonState.idle}
		if mblPressed {state = buttonState.pressed; initPress = true;}
		
		break;
	
	case buttonState.pressed:
	    var_saturation = -0.3;
		event_user(0);
	
		break;
	
	case buttonState.released:
		event_user(1);

		break;
	
	case buttonState.disabled:
		var_saturation = 0.3;
		
		if index != myPanelGroup.panelIndex
		{
			state = buttonState.idle
		}
		
		break;
}

