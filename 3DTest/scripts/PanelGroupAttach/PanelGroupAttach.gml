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

/*if pg.myPanels= 0
{
	i = 0
	pg.myPanels[0] = p;
}*/

//add panel to panelGroup
pg.myPanels[i] = p;
	
p.myPanelGroup = pg;
p.panelIndex = i;
pg.numPanels ++;

return i;