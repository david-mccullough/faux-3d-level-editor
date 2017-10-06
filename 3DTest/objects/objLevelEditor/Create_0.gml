/// @description Insert description here

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

ds_list_add(global.levels, "testLevel");



