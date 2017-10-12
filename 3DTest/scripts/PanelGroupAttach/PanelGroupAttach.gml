/// @description	Adds panels to panelGroup array
///					returns index
/// @param panel
/// @param panelGroup
/// @paran index(def:Last)


var p = argument[0]
var pg = argument[1];
var i = array_length_1d(pg.myPanels);

//check for custom index placement
if argument_count>2 then i = argument[2]
else if i == 1 and pg.myPanels[0].name == "default" //this is to overwrite default value
{
	i = 0
}

//add panel to panelGroup
pg.myPanels[i] = p;
	
p.myPanelGroup = pg;
p.panelIndex = i;

return i;