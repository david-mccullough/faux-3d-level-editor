///@param wipeContents

var filename = DIR_LEVELS + room_get_name(room)+"_data.sav";

if file_exists(filename)
{
	//delete existing instances if applicable
	if argument0
	{
		instance_destroy(objObject);
	}
	
	//load buffer
	var buff = buffer_load(filename)
	buffer_seek(buff, buffer_seek_start, 0);

	show_debug_message(buffer_get_size(buff))
	while (buffer_tell(buff) < buffer_get_size(buff))
	{
		
		//read instance and create it
		show_debug_message("loading asset at " + string(buffer_tell(buff)) )
	
		var asset = buffer_read(buff, buffer_string);
		if asset == "" {
			buffer_seek(buff,buffer_seek_end,0);
		}
		else
		{
			show_debug_message(asset + "\n")
			var obj = asset_get_index(asset)
			if obj != -1
			{
				var inst = instance_create_depth(0,0,0,obj);
				/// Assign its data
				//identity
				inst.identity = buffer_read(buff,buffer_string);
				//x pos
				inst.x = buffer_read(buff,buffer_s16);
				//y pos
				inst.y = buffer_read(buff,buffer_s16);
				//angle ***convert back into degrees***
				inst.angle = radtodeg(buffer_read(buff,buffer_u8));
				//scale
				inst.scale = buffer_read(buff,buffer_f32)
				buffer_seek(buff, buffer_seek_relative, 1);
			}
		
			else
			{
				//cont = false;
				show_message("ERROR: Couldn't find asset named " + asset)
			}
		}
	} 

	buffer_delete(buff)

}
else
{
	show_message_async("ERROR: Couldn't find level data for " + filename)
}

