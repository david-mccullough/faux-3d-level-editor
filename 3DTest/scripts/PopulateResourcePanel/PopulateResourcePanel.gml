///@param objectList
///@param panelGroup
///@param (perPage:10)
///@param (margin:24)

var list = argument[0]
var masterPanel = argument[1];
var maxPerPage = 10;
var margin = 24;

//var gx = view_w-128;
//var gy = 16;
var dd = 80;
var panelCount = 1;

if argument_count > 2
{
	maxPerPage = argument[2]
	margin = argument[3];
}

//get number of relevant resources and set max resources per page
var numResources = ds_list_size(list);
var numLastPage = numResources%(maxPerPage)

var panel = gui_create(0,0,dd,guiPanel,myGUI);
PanelGroupAttach(panel,masterPanel)
PanelAttach(panel,masterPanel.myPanel,0,16,true);
panel.name = "1"

//fill panel with resources until full
var i = 0; //index of list
var n = 0; //count of resources for current page
var panelCount = 1;

repeat(numResources)
{
	//create and attach button for each resource
	var btn = gui_create(0,0,dd,guiLEObject,myGUI);
	PanelAttach(btn,panel,64,16+margin*n,true);
	btn.identity = list[| i];
	
	n++;
	if n >= maxPerPage
	//when full create new page (panel)
	{
		var panel = gui_create(0,0,dd,guiPanel,myGUI);
		panel.name = string(panelCount);
		PanelGroupAttach(panel,masterPanel);
		show_debug_message("Attaching panel," + panel.name + ", to " + masterPanel.name)
		PanelAttach(panel,masterPanel.myPanel,0,16,true);
		n = 0; //reset button count
	}

	i++;
}

