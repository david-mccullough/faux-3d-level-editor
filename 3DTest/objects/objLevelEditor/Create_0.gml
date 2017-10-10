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


#region //init GUI

instance_create_depth(view_w-128,view_h/2,100,guiLEObject)

#endregion



