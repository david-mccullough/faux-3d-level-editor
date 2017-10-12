/// @description state
//if last or first panels, set appropiate buttons to disabled
if (sign(dir) == 1 and myPanelGroup.panelIndex == myPanelGroup.numPanels-1)
or (sign(dir) == -1 and myPanelGroup.panelIndex == 0)
{
	state = buttonState.disabled
}
else
{
	state = buttonState.idle;
}


switch state
{
	case buttonState.idle:
		var_saturation = 0.0;
	
	break;
	
	case buttonState.hover:
		var_saturation = 0.1;
		state = buttonState.idle;
		
	break;
	
	case buttonState.pressed:
	    var_saturation = -0.2;
		event_user(0);
		
	
	break;
	
	case buttonState.released:
		event_user(1);
		
		
	break;
	
	case buttonState.disabled:
		var_saturation = satDisabled;
	break;
}



if (initPress)
{
	initPress = false;
}

