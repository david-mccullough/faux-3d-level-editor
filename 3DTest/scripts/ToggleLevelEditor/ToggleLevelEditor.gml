/// Enable
if !global.levelEditorEnabled
{
	show_debug_overlay(true)
	instance_activate_object(objLevelEditor)
	if !instance_exists(objLevelEditor)
	{
		instance_create_layer(objLevelEditor,x,y,"Control");
	}
}
/// Disable
else
{
	show_debug_overlay(false)
	
	if instance_exists(objLevelEditor)
	{
		instance_deactivate_object(objLevelEditor)
	}
}