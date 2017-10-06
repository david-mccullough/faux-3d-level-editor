/// @description Level editor state
if global.levelEditorEnabled
{
	switch editState
	{
		
		case editorState.idle:
			drawColor = c_white;
		break;
		
		case editorState.focused:
			drawColor = make_colour_rgb(150, 255, 200);
			//gpu_set_blendmode(bm_subtract);
			editState = editorState.idle;
		break;
		
		case editorState.selected:
			drawColor = make_colour_rgb(50, 255, 100);
			//gpu_set_blendmode(bm_subtract);
		break;

	}
}
