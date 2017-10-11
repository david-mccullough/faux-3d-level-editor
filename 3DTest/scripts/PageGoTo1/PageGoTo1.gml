///@param win
///@param pageIndex

var win = argument0;
var index = argument1;

var imax = array_length_1d(win.myPages)-1;
var imin = 0;

switch win.currentPage.restriction
{
	case pageRestriction.any:
	show_debug_message(win.name + " changing pages to " + string(index) + " with no restriction")
	break;
	
	case pageRestriction.none:
	imin = win.pageIndex;
	imax = win.pageIndex;
	break;
	
	case pageRestriction.forward:
	imin = win.pageIndex;
	imax = win.pageIndex+1;
	break;
	
	case pageRestriction.back:
	imin = win.pageIndex-1;
	imax = win.pageIndex;
	break;
}


for(var i=0;i<array_length_1d(win.currentPage.elements);i++)
{
	if instance_exists(win.currentPage.elements[i])
	instance_deactivate_object(win.currentPage.elements[i]);
}

index = clamp(index, imin, imax)
//make sure in bounds
index = clamp(index, 0, array_length_1d(win.myPages)-1)

win.currentPage = win.myPages[index];
win.pageIndex = index;

//show_debug_message(string(array_length_1d(win.myPages)))
show_debug_message(win.name + " page index is now " + string(index))
//show_debug_message(string(array_length_1d(win.currentPage.elements)));

if is_array(win.currentPage.elements)
{
//show_debug_message("lets do this")
for(var i=0; i<array_length_1d(win.currentPage.elements); i++)
{
	instance_activate_object(win.currentPage.elements[i]);
	
	if instance_exists(win.currentPage.elements[i])
	{
		if win.currentPage.elements[i].object_index == objFileFolder
		show_debug_message(win.currentPage.elements[i])
	}
	
	if instance_exists(win.currentPage.elements[i])
	{
		win.currentPage.elements[i].x = win.x + win.currentPage.elements[i].xOffset;
		win.currentPage.elements[i].y = win.y + win.currentPage.elements[i].yOffset;
	}
}
}