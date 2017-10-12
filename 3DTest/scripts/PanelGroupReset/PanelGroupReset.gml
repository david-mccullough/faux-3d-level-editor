///@param panelGroup
///@param index

//deactivate all elements
for (var i = 0; i<array_length_1d(argument0.myPanels);i++)
{
	var pp = argument0.myPanels[i];
	for(var j=0;j<array_length_1d(pp.elements);j++)
	{
		if instance_exists(pp.elements[j])
		instance_deactivate_object(pp.elements[j]);
	}
}

PanelGroupGoTo(argument0,argument1);