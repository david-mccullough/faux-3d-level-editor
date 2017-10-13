///@param panel
///@param bool

if !argument1
{
	with argument0
	{
		uiVisible = false;
	
		/// Deactivate current panel
		for(var i=0;i<array_length_1d(elements);i++)
		{
			if instance_exists(elements[i]) and elements[i].object_index != guiPanel{
			instance_deactivate_object(elements[i]);
			//show_debug_message(name + " is dectivating " +object_get_name(elements[i].object_index) + "..." + string(elements[i].object_index) + ":" + string(guiPanel))
			}
		}

		//deactivate all child panel contents
		/*with (guiPanel)
		{
			if instance_exists(myPanel) && instance_exists(myPanel.myPanel) && myPanel.myPanel.id == argument0
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
			if instance_exists(myPanel) && myPanel.id == argument0
			{
				for(var i=0;i<array_length_1d(elements);i++)
				{
					if instance_exists(elements[i]) and elements[i].object_index != guiPanel {
					//show_debug_message("Sub " + name + " is dectivating " +object_get_name(elements[i].object_index))
					instance_deactivate_object(elements[i]);
					}
				}
			}
			
		}*/
	
	}
}
else
{
	with argument0
	{
		uiVisible = true;
	
		/// Activate current panel
		for(var i=0;i<array_length_1d(elements);i++)
		{
			instance_activate_object(elements[i]);
			//show_debug_message(name + " is dectivating " +object_get_name(elements[i].object_index) + "..." + string(elements[i].object_index) + ":" + string(guiPanel))
		}

	}
}

return argument0.uiVisible;