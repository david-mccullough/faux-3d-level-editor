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
	for(var i=0;i<array_length_1d(currentPanel.elements);i++)
	{
		if instance_exists(currentPanel.elements[i])
		instance_deactivate_object(currentPanel.elements[i]);
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
	}
}