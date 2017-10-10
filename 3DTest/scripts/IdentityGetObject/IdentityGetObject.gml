///@param identity

var obj = ds_map_find_value(global.objectMap, argument0)

if obj == undefined
{
	show_debug_message("No key found in global.objectMap for identity " + argument0)
	obj = 0;
}
else if !object_exists(obj)
{
	show_debug_message("Could not get object index for identity " + argument0)
	obj = 0;
}

return obj