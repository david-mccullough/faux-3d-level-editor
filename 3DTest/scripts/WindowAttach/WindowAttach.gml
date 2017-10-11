/// @param objUSEPAGEATTACH()
/// @param window
/// @param page
/// @param xRel
/// @param yRel

var o = argument[0]
var win = argument[1];
var page = argument[2]
var xx = argument[3];
var yy = argument[4];

win.tChildren[array_length_1d(win.tChildren)] = o;
o.myWindow = win;

page.elements[array_length_1d(page.elements)-1] = o;

var sw = o.sprite_width;
var sh = o.sprite_height;

//o.x = clamp(xx+win.x+2 + sw/2, win.x+2 + sw/2, win.x+win.width-2 - sw/2);
//o.y = clamp(yy+win.y+12 + sh/2, win.y+12 + sh/2, win.y+win.height-2 - sh/2);

o.x = clamp(xx + win.xContentMin, sw/2 + win.xContentMin, win.xContentMax - sw/2);
o.y = clamp(yy + win.yContentMin, sh/2 + win.yContentMin, win.yContentMax - sh/2);

o.depth = win.depth-1;

with (o)
{
	xOffset = x - myWindow.x;
	yOffset = y - myWindow.y;
	depthOffset = abs(depth - myWindow.depth);
}

return o;