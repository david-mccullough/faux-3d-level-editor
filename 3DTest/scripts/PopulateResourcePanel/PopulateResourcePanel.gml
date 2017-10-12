///@param objectList
///@param panelGroup
///@param (perPage:10)
///@param (margin:24)

var list = argument[0]
var masterPanel = argument[1];
var maxPerPage = 10;
var margin = 24;

var gx = 64;
var gy = 300;
var dd = 100;

if argument_count > 2
{
	maxPerPage = argument[2]
	margin = argument[3];
}

//get number of relevant resources and set max resources per page
var numResources = ds_list_size(list);
var numLastPage = numResources%(maxPerPage)

var panel = gui_create(gx,gy,dd,guiPanel,myGUI);
PanelGroupAttach(panel,masterPanel)

//fill panel with resources until full
var i = 0; //index of list
var n = 0; //count of resources for current page

repeat(numResources)
{
	if n < maxPerPage
	{
		//create and attach button for each resource
		var btn = gui_create(gx,gy,dd,guiLEObject,myGUI);
		PanelAttach(btn,panel,16,16+margin*i,false);
		btn.identity = list[| i];
		show_debug_message(btn.y)
	
		n++;
	}
	//when full create new page (panel)
	else
	{
		var panel = gui_create(gx,gy,dd,guiPanel,myGUI);
		PanelGroupAttach(panel,masterPanel);
		n = 0; //reset button count
	}

	i++;
}