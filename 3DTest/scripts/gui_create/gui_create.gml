/// @description	Associates objects with specific window pages and creates the page if it doesnt already exist returns object id
/// @param x
/// @param y
/// @param depth
/// @param guiElement
/// @param guiLayer
/// @param (relativePos)
/// @param (guiLayers...)


var xx = argument[0];
var yy = argument[1];
var d = argument[2]
var o = instance_create_depth(0,0,0,argument[3]);
var guiLayer = argument[4];
var relPos = false

if argument_count >5
{
	relPos = argument[5]
}
if relPos
{
	xx = xx-guiLayer.x;
	yy = yy-guiLayer.y;
}

//add object to guiLayer
guiLayer.elements[array_length_1d(guiLayer.elements)] = o;

//additional guiLayers
if argument_count > 6 {
for (var i = 5; i < argument_count; i++)
	argument[i].elements[array_length_1d(argument[i].elements)] = o;
}
	
o.myGuiLayer = guiLayer;
o.guix = xx;
o.guiy = yy;
o.depth = d

return o