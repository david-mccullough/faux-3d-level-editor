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
angle = 0;

global.buff = buffer_create(4000, buffer_fixed, 1);
global.levels = ds_list_create();

ds_list_add(global.levels, "testLevel");


