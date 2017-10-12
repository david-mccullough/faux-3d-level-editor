/// @description	Associates objects with specific window pages
///					and creates the page if it doesnt already exist
///					returns vector of new object position
/// @param obj
/// @param panel
/// @param x
/// @param y
/// @param relativePos?
/// @param (panels...)


var o = argument[0]
var panel = argument[1];
var xx = argument[2];
var yy = argument[3];
var relPos = argument[4]

if relPos
{
	xx = panel.guix+xx;
	yy = panel.guiy+yy;
}

//add object to panel
panel.elements[array_length_1d(panel.elements)] = o;



//additional panels
for (var i = 6; i <= argument_count; i++)
	argument[i].elements[array_length_1d(argument[i].elements)] = o;

if panel.myPanel != noone
{
	PanelAttach(o,panel.myPanel,xx,yy,false)
}
	
o.myPanel = panel;
o.guix = xx;
o.guiy = yy;
o.guixOffset = xx-panel.guix
o.guiyOffset = yy-panel.guiy
return vect2(o.guix,o.guiy)