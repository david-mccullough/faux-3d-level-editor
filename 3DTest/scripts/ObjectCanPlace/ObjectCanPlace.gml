var xx = argument[0]
var yy = argument[1]
var obj = argument[2]

var bool = true;

if obj.canClip
{
	bool = true;
	show_debug_message("wow")
}
else
	{
	// get list of all colliding objects
	with obj
	{
		var hitList = instance_place_list(xx, yy, objObject);
		if (hitList != noone)
		{
			var size = ds_list_size(hitList)
			for (var i = 0; i < size; i++)
			{
				var hit = ds_list_find_value(hitList, i);
				if hit.canClip == false //if any of the colliding objects cant clip then we cant place
				{
					bool = false;
					show_debug_message("other cant clip")
					i = size
				}
			}
		}
		if ds_exists(hitList, ds_type_list)
		ds_list_destroy(hitList);
	}
}

if instance_exists(objLevelEditor)
{
	if bool
	objLevelEditor.editColor = C_TRUE;
	else
	objLevelEditor.editColor = C_FALSE;
}

return bool