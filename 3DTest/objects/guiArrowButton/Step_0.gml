/// @description state
//if last or first panels, set appropiate buttons to disabled


if (sign(dir) == 1 and myPanelGroup.panelIndex == myPanelGroup.numPanels-1)
or (sign(dir) == -1 and myPanelGroup.panelIndex == 0)
{
	state = buttonState.disabled
}
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
		var_saturation = 0.0;
		
		if mouseOver {state = buttonState.hover}
	
		break;
	
	case buttonState.hover:
		var_saturation = 0.1;
		
		if !mouseOver {state = buttonState.idle}
		if mblPressed {state = buttonState.pressed; initPress = true;}
		
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
		
		if !(sign(dir) == 1 and myPanelGroup.panelIndex == myPanelGroup.numPanels-1)
		and !(sign(dir) == -1 and myPanelGroup.panelIndex == 0)
		{
			state = buttonState.idle
		}
		
		break;
}

