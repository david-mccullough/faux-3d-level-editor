/// Enable
if !global.levelEditorEnabled
{
	//show_debug_overlay(true)
	instance_activate_object(objLevelEditor)
	if !instance_exists(objLevelEditor)
	{
		instance_create_layer(x,y,depth,objLevelEditor);
	}
	global.levelEditorEnabled = true;
}
/// Disable
else
{
	show_debug_overlay(false)
	
	if instance_exists(objLevelEditor)
	{
		instance_deactivate_object(objLevelEditor)
	}
	global.levelEditorEnabled = false;
}