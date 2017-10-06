/// @description 
editState = editorState.idle;
drawColor = c_white;
identity = string_delete(object_get_name(object_index),0,3);
show_debug_message(identity)

//required for depth system
is3D = false;
myDepth = 0;
canDraw = true;
sortDepth = true;
yDepthOrigin = sprite_height-sprite_yoffset;