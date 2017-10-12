///@param panelGroup
///@param index

var pg = argument0;
var index = argument1;
if !instance_exists(pg)
{
	show_debug_message("ERROR: panelGroup, " + pg + ", not found!")
	return -1;
}

with pg
{
	var imax = array_length_1d(myPanels)-1;
	var imin = 0;
	
	/// Deactivate current panel
	if currentPanel != noone
	{
		for(var i=0;i<array_length_1d(currentPanel.elements);i++)
		{
			if instance_exists(currentPanel.elements[i]) and currentPanel.elements[i].object_index != guiPanel{
			instance_deactivate_object(currentPanel.elements[i]);
			//show_debug_message(currentPanel.name + " is dectivating " +object_get_name(currentPanel.elements[i].object_index) + "..." + string(currentPanel.elements[i].object_index) + ":" + string(guiPanel))
			}
		}
	}
	//deactivate all child panel contents
	with (guiPanel)
	{
		if instance_exists(myPanel) && instance_exists(myPanel.myPanel) && myPanel.myPanel.id == pg.myPanel
		{
			//show_debug_message(myPanel.myPanel.name + " -- Dectivating " + name + " elements")
			for(var i=0;i<array_length_1d(elements);i++)
			{
				
				if instance_exists(elements[i]) and elements[i].object_index != guiPanel {
				//show_debug_message("Sub " + name + " is dectivating " +object_get_name(elements[i].object_index) + "..." + string(elements[i].object_index) + ":" + string(guiPanel))
				instance_deactivate_object(elements[i]);
				}
				
				
			}
		}
		if instance_exists(myPanel) && myPanel.id == pg.myPanel
		{
			for(var i=0;i<array_length_1d(elements);i++)
			{
				if instance_exists(elements[i]) and elements[i].object_index != guiPanel {
				//show_debug_message("Sub " + name + " is dectivating " +object_get_name(elements[i].object_index))
				instance_deactivate_object(elements[i]);
				}
			}
		}
			
	}
	
	//make sure in bounds
	index = clamp(index, imin, imax)
	
	///  Change index
	currentPanel = myPanels[index];
	panelIndex = index;
	show_debug_message("Panel " + name + " index is now " + string(index))

	/// Activate new current panel
	if is_array(currentPanel.elements)
	{
		for(var i=0; i<array_length_1d(currentPanel.elements); i++)
		{
			instance_activate_object(currentPanel.elements[i]);

		}
		
		var temp = currentPanel
		/*with (guiPanel)
		{
			
			if instance_exists(myPanel) && instance_exists(myPanel.myPanel)
			{
				show_debug_message(myPanel.name + " -- " + temp.name)
				if myPanel.id == temp
				{
					for(var i=0;i<array_length_1d(elements);i++)
					{
						instance_activate_object(elements[i]);
					}
					
					//PanelGroupGoTo(myPanelGroup,panelIndex);
				}
			}
		}*/
	}
}