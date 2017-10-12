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

var gx = 64;
var gy = 200;
var dd = 100;

//overacrhing edit panel
editPanel = gui_create(gx,gy,dd,guiPanel,myGUI);

//resourcePanelGroup (container for panels for d3d, d2d, entities, and other resource type)
resourcePG= gui_create(gx,gy,dd,guiPanelGroup,myGUI);
PanelAttach(resourcePG, editPanel, gx,gy,false);

///d3d panel
d3dPanel = gui_create(gx,gy,dd,guiPanel,myGUI);
PanelGroupAttach(d3dPanel, resourcePG);

//d3d panelgroup (container for panels with object lists)
d3dPG = gui_create(gx,gy,dd,guiPanelGroup,myGUI);
PanelAttach(d3dPG, d3dPanel, gx,gy,false);

/// Create panels for however pages are necessary to fit all resources of d3d type
PopulateResourcePanel(global.d3dObjects,d3dPG);


#endregion



