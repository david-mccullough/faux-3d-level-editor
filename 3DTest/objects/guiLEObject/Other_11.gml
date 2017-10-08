///@description Released mb

if instance_exists(objLevelEditor)
{
	objLevelEditor.editIdentity = identity;
	with objLevelEditor
	{
		show_debug_message("selected identity: " + editIdentity)
		editObject = asset_get_index("obj"+editIdentity)
		editSprite= asset_get_index("spr"+editIdentity)
		state = editorState.paint;
	}
}