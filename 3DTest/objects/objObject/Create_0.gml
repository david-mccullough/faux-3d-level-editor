/// @description 
editState = editorState.idle;
drawColor = c_white;
//get identity from object name
//is this how it should work? maybe just use macros
identity = string_delete(object_get_name(object_index),1,3);
show_debug_message(identity)

//required for depth system
is3D = false;
myDepth = 0;
canDraw = true;
sortDepth = true;
yDepthOrigin = sprite_height-sprite_yoffset;
angle = 0;
scale = 1;