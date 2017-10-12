/// @description released behavior
show_debug_message("PRESSED")
PanelGroupGoTo(myPanelGroup, index);

var ppg = myPanel;
with guiPanelGroup
{
	var temp = noone;
	if instance_exists(myPanel) && instance_exists(myPanel.myPanel)
	{
		//show_debug_message(myPanel.myPanel.name + " -- " + ppg.name)
		if myPanel.myPanel.id == ppg
		{
			temp = id;
		}
	}
}
if temp != noone{
PanelGroupGoTo(temp,temp.panelIndex)
show_debug_message(temp.name + " wwwwwwwwowie")
}


state = buttonState.idle
