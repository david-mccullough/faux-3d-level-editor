/// @description Insert description here
depth = -100
enum editorState
{
	idle,
	inst,
	paint,
	//instance states
	//idle,
	focused,
	selected,
}

state = editorState.idle;

global.levels = ds_list_create();


editIdentity = O_DCRATE
editObject = IdentityGetObject(editIdentity);
editSprite = IdentityGetSprite(editIdentity);

angle = 0;
editColor = C_TRUE
canPlace = true;

//sortDepth = true;
//myDepth = 0;

//control
drag_x = 0;
drag_y = 0;


ds_list_add(global.levels, "testLevel");


#region // GUI

myGUI = instance_create_depth(x,y,0,objGUILayer);

var gx = view_w-128;
var gy = 0;
var dd = 100;

//overacrhing edit panel
editPanel = gui_create(gx,gy,dd,guiPanel,myGUI);
editPanel.uiDrawRectangle = true;
editPanel.name= "Edit Panel"
//resourcePanelGroup (container for panels for d3d, d2d, entities, and other resource type)
resourcePG= gui_create(gx,gy,dd,guiPanelGroup,myGUI);
resourcePG.name= "Resource Types"
PanelAttach(resourcePG, editPanel, 0,0,true);

///d3d panel
d3dPanel = gui_create(0,0,dd,guiPanel,myGUI);
d3dPanel.name = "3D Objects"
PanelGroupAttach(d3dPanel, resourcePG);
PanelAttach(d3dPanel,editPanel,0,16,true);

//d3d panelgroup (container for panels with object lists)
d3dPG = gui_create(0,0,dd,guiPanelGroup,myGUI);
PanelAttach(d3dPG, d3dPanel, 0,0,true);
d3dPG.name= "3D Object Pages"

/// Create panels for however pages are necessary to fit all resources of d3d type
PopulateResourcePanel(global.d3dObjects,d3dPG,2,16);

#endregion



