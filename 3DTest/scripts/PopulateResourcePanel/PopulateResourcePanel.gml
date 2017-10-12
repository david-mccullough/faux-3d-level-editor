///@param objectList
///@param panelGroup
///@param (perPage:10)
///@param (margin:16)

var list = argument[0]
var panelGroup = argument[1];
var maxPerPage = 10;
var margin = 16;

//var gx = view_w-128;
//var gy = 16;
var dd = 80;
var panelCount = 1;

if argument_count > 2
{
	maxPerPage = argument[2]
	margin = argument[3];
}

//create arrwow buttons
var larrow = gui_create(0,0,40,guiArrowButton,myGUI);
larrow.dir = -1;
var rarrow = gui_create(0,0,40,guiArrowButton,myGUI);
larrow.myPanelGroup = panelGroup;
rarrow.myPanelGroup = panelGroup;
var txt = gui_create(0,0,40,guiText,myGUI);
txt.pageNumber = true;
txt.panelGroup = panelGroup;

PanelAttach(larrow,panelGroup.myPanel,16,8,true);
PanelAttach(rarrow,panelGroup.myPanel,panelGroup.myPanel.uiWidth-16,8,true);
PanelAttach(txt,panelGroup.myPanel,panelGroup.myPanel.uiWidth/2,0,true);

//get number of relevant resources and set max resources per page
var numResources = ds_list_size(list);
var numLastPage = numResources%(maxPerPage)

var panel = gui_create(0,0,dd,guiPanel,myGUI);
PanelGroupAttach(panel,panelGroup)
PanelAttach(panel,panelGroup.myPanel,0,16,true);
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
	if n >= maxPerPage && i+1<numResources
	//when full create new page (panel)
	{
		var panel = gui_create(0,0,dd,guiPanel,myGUI);
		panel.name = string(panelCount);
		PanelGroupAttach(panel,panelGroup);
		PanelAttach(panel,panelGroup.myPanel,0,16,true);
		panelCount++;
		n = 0; //reset button count
	}
	i++;
}

