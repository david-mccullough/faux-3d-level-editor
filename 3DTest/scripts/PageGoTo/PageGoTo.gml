///@param layerIndex
var index = argument0;
if instance_exists(objGUI)
{
	if ds_list_find_index(objGUI.layer,index) == -1 //layer doesnt exist
	{
		return 0;
	}
}
else {
	show_debug_message("ERROR: GUI manager not found!")
	return 0;
} //GUI manager doesnt exists (this is bad)

with objGUI
{
	/// Deactivate current layer
	for(var i=0;i<array_length_1d(currentLayer.elements);i++)
	{
		if instance_exists(currentLayer.elements[i])
		instance_deactivate_object(currentLayer.elements[i]);
	}

	///  Change index
	currentLayer = myPages[index];
	pageIndex = index;
	show_debug_message(name + " page index is now " + string(index))

	/// Activate new current layer
	if is_array(currentPage.elements)
	{
		for(var i=0; i<array_length_1d(currentPage.elements); i++)
		{
			instance_activate_object(currentPage.elements[i]);
	
			if instance_exists(currentPage.elements[i])
			{
				if currentPage.elements[i].object_index == objFileFolder
				show_debug_message(currentPage.elements[i])
			}
	
			if instance_exists(currentPage.elements[i])
			{
				currentPage.elements[i].x = x + currentPage.elements[i].xOffset;
				currentPage.elements[i].y = y + currentPage.elements[i].yOffset;
			}
		}
	}
}