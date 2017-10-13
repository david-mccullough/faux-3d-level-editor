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

editIdentity = O_DCRATE
editObject = IdentityGetObject(editIdentity);
editSprite = IdentityGetSprite(editIdentity);

angle = 0;
editColor = C_TRUE
canPlace = true;
ghostObject = noone;


minSinceLastSave = 0;

//sortDepth = true;
//myDepth = 0;

//control
drag_x = 0;
drag_y = 0;
xplace = 0;
yplace = 0;
angleSnap = 30;
gridSnap = 0;


#region // GUI

myGUI = instance_create_depth(x,y,0,objGUILayer);

#region ///FILE TOOLBAR
filePanel = gui_create(0,0,1001,guiPanel,myGUI);
with filePanel
{
	uiWidth = view_w
	uiHeight = 16
	uiDrawRectangle = true;
	name= "Edit Panel"
	uiAlpha = 1;
}
var temp = gui_create(0,0,1000,guiText,myGUI);
temp.text = room_get_name(room);
temp.halign = fa_right;
//var tempw = string_width(temp.text);
PanelAttach(temp,filePanel,view_w-16,0,false)
var arr;
arr[0] = gui_create(0,0,40,guiFileButton,myGUI);
arr[1] = gui_create(0,0,40,guiFileButton,myGUI);
arr[2] = gui_create(0,0,40,guiFileButton,myGUI);
arr[3] = gui_create(0,0,40,guiFileButton,myGUI);
//arr[4] = gui_create(0,0,40,guiFileButton,myGUI);
arr[0].text = "Save"
arr[1].text = "Load"
arr[2].text = "Options"
arr[3].text = "Resources"
var t = 0
while t<4
{
	PanelAttach(arr[t],filePanel, 32+64*t,8,true);
	
	t++
}
#endregion

#region ///INFO BAR
infoPanel = gui_create(0,view_h-16,700,guiPanel,myGUI);
with infoPanel
{
	uiWidth = view_w
	uiHeight = 16
	uiDrawRectangle = true;
	name= "Info Panel"
	uiAlpha = 1;
}

var gx = view_w-128;
var gy = 0;
var dd = 100;

#endregion

#region ///HELPER PANELS

optionsPanel = gui_create(0,view_h-128,999,guiPanel,myGUI);
with optionsPanel
{
	uiWidth = 160
	uiHeight = 160
	uiDrawYOffset = 16;
	uiDrawRectangle = true;
	name= "Options"
	uiAlpha = .8;
}
var temp = gui_create(0,0,810,guiText,myGUI);
temp.text = "Options";
temp.halign = fa_center;
//var tempw = string_width(temp.text);
PanelAttach(temp,optionsPanel,24,0,true)
with optionsPanel
{
	uiSlide = true;
	_guix = guix;
	_guiy = guiy;
	uiSlideXOrig = guix;
	uiSlideYOrig = view_h-128;
	uiSlideX = guix;
	uiSlideY = view_h-32;
	uiSlideSpeed = 0.15
}
var temp = gui_create(0,0,800,guiTextField,myGUI);
temp.link = linkType.angleSnap;
temp.text = string(angleSnap);
temp.name = "Angle Snap"
//temp.halign = fa_center;
//var tempw = string_width(temp.text);
PanelAttach(temp,optionsPanel,temp.sprite_width/2+8,64,true)
var temp = gui_create(0,0,800,guiTextField,myGUI);
temp.link = linkType.gridSnap;
temp.text = string(gridSnap);
temp.name = "Grid Snap"
//temp.halign = fa_center;
//var tempw = string_width(temp.text);
PanelAttach(temp,optionsPanel,temp.sprite_width/2+8,32,true)

#endregion

#region//overacrhing edit panel
editPanel = gui_create(gx,gy,1000,guiPanel,myGUI);
editPanel.uiDrawRectangle = true;
editPanel.name= "Edit Panel"
with editPanel
{
	uiSlide = true;
	_guix = guix;
	_guiy = guiy;
	uiSlideXOrig = guix;
	uiSlideYOrig = guiy;
	uiSlideX = guix + uiWidth*.91;
	uiSlideY = guiy;
	uiSlideSpeed = 0.15
}

//resourcePanelGroup (container for panels for d3d, d2d, entities, and other resource type)
resourcePG= gui_create(gx,gy,dd,guiPanelGroup,myGUI);
resourcePG.name= "Resource Types"
PanelAttach(resourcePG, editPanel, 0,0,true);
//create section buttons
arr = 0;
arr[0] = gui_create(0,0,40,guiSectionButton,myGUI);
arr[1] = gui_create(0,0,40,guiSectionButton,myGUI);
arr[2] = gui_create(0,0,40,guiSectionButton,myGUI);
arr[3] = gui_create(0,0,40,guiSectionButton,myGUI);
arr[0].text = "3D"
arr[1].text = "2D"
arr[2].text = "Entities"
arr[3].text = "Other"
var t = 0
while t<4
{
	arr[t].myPanelGroup = resourcePG;
	arr[t].index = t;
	PanelAttach(arr[t],editPanel,16 + 32*t,32,true);
	
	t++
}


///-------------------d3d panel
d3dPanel = gui_create(0,0,dd,guiPanel,myGUI);
d3dPanel.name = "3D Objects"
PanelGroupAttach(d3dPanel, resourcePG);
PanelAttach(d3dPanel,editPanel,0,48,true);

//d3d panelgroup (container for panels with object lists)
d3dPG = gui_create(0,0,dd,guiPanelGroup,myGUI);
PanelAttach(d3dPG, d3dPanel, 0,0,true);
d3dPG.name= "3D Object Pages"

/// Create panels for however pages are necessary to fit all resources of d3d type
PopulateResourcePanel(global.d3dObjects,d3dPG,12,16);

///-------------------d2d panel
d2dPanel = gui_create(0,0,dd,guiPanel,myGUI);
d2dPanel.name = "2D Objects"
PanelGroupAttach(d2dPanel, resourcePG);
PanelAttach(d2dPanel,editPanel,0,48,true);

//d2d panelgroup (container for panels with object lists)
d2dPG = gui_create(0,0,dd,guiPanelGroup,myGUI);
PanelAttach(d2dPG, d2dPanel, 0,0,true);
d2dPG.name= "2D Object Pages"

PopulateResourcePanel(global.d2dObjects,d2dPG,8,16);

///-------------------ent panel
entPanel = gui_create(0,0,dd,guiPanel,myGUI);
entPanel.name = "Entity Objects"
PanelGroupAttach(entPanel, resourcePG);
PanelAttach(entPanel,editPanel,0,48,true);

//d2d panelgroup (container for panels with object lists)
entPG = gui_create(0,0,dd,guiPanelGroup,myGUI);
PanelAttach(entPG, entPanel, 0,0,true);
entPG.name= "Entity Object Pages"

PopulateResourcePanel(global.entObjects,entPG,8,16);

///-------------------oth panel
othPanel = gui_create(0,0,dd,guiPanel,myGUI);
othPanel.name = "Other Objects"
PanelGroupAttach(othPanel, resourcePG);
PanelAttach(othPanel,editPanel,0,48,true);

//d2d panelgroup (container for panels with object lists)
othPG = gui_create(0,0,dd,guiPanelGroup,myGUI);
PanelAttach(othPG, othPanel, 0,0,true);
othPG.name= "Other Object Pages"

PopulateResourcePanel(global.miscObjects,othPG,8,16);


PanelGroupReset(d2dPG,0);
PanelGroupReset(entPG,0);
PanelGroupReset(othPG,0);
PanelGroupReset(resourcePG,0);
PanelGroupReset(d3dPG,0);

#endregion


#endregion

