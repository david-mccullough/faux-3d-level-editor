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

global.buff = buffer_create(4000, buffer_fixed, 1);
global.levels = ds_list_create();

angle = 0;
editIdentity = O_DCRATE
editObject = obj3dCrate;
editSprite = spr3dCrate;
editColor = C_TRUE
canPlace = true;

sortDepth = true;
myDepth = 0;

//control
drag_x = 0;
drag_y = 0;


ds_list_add(global.levels, "testLevel");


#region //init object list

instance_create_depth(view_w-128,view_h/2,100,guiLEObject)

#endregion



