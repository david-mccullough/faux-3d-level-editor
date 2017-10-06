/// @description Level editor state
if global.levelEditorEnabled
{
	switch editState
	{
		
		case editorState.idle:
			drawColor = c_white;
		break;
		
		case editorState.focused:
			drawColor = C_FOCUS
			editState = editorState.idle;
		break;
		
		case editorState.selected:
			drawColor = C_TRUE
		break;

	}
}
