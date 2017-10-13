var buff = buffer_create(1, buffer_grow, 1);
buffer_seek(buff,buffer_seek_start,0)

//get list of all objObjects
var list = ds_list_create();
var obj = objObject;
with (obj)
{
    ds_list_add(list, id);
}

//save their id, pos, and angle, scale?
var i = 0;
var size = ds_list_size(list)
repeat(size)
{
	/// Cache current instance
	var inst = ds_list_find_value(list,i);
	
	/// Write necessary data to buffer
	/// grows in multiples of (28)!!!
	if instance_exists(inst)
	{
		show_debug_message(buffer_tell(buff))
		//object_index
		buffer_write(buff,buffer_string,object_get_name(inst.object_index));
		//object identity
		buffer_write(buff,buffer_string,inst.identity);
		//x pos
		buffer_write(buff,buffer_s16,inst.x);
		//y pos
		buffer_write(buff,buffer_s16,inst.y);
		//angle
		buffer_write(buff,buffer_u16,inst.angle);
		//scale
		buffer_write(buff,buffer_f32,inst.scale) 
	}
	
	i++;
}


//save buffer to memory

//check if file already exists
var filename = room_get_name(room)+"_data.sav";
if (file_exists(DIR_LEVELDATA + filename))
{
	var overwrite = show_question(filename + " already exists, dingus. Do you want to overwrite it?")
	if overwrite
	{
		buffer_save(buff, DIR_LEVELDATA + filename)
		objLevelEditor.minSinceLastSave = 0;
		//show_message_async(filename + " successfully saved to directory:\n" + DIR_STORAGE + DIR_LEVELDATA)
	}
	else
	{
		//do nothing
	}
}
else
{
	buffer_save(buff, DIR_LEVELDATA + filename)
	objLevelEditor.minSinceLastSave = 0;
	//show_message_async(filename + " successfully saved to directory:\n" + DIR_STORAGE + DIR_LEVELDATA)
}

buffer_delete(buff)


