///@description Released mb

if instance_exists(objLevelEditor)
{
	objLevelEditor.editIdentity = identity;
	with objLevelEditor
	{
		show_debug_message("selected identity: " + editIdentity)
		editObject = IdentityGetObject(editIdentity)
		editSprite= IdentityGetSprite(editIdentity)
		state = editorState.paint;
	}
}
state = buttonState.idle;
with object_index {satIdle = 0.0}
satIdle = 0.3;