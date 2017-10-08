var buff = buffer_create(4000, buffer_fixed, 1);
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
	if instance_exists(inst)
	{
		//object_index
		buffer_write(buff,buffer_u16,inst.object_index);
		//object identity
		buffer_write(buff,buffer_string,inst.identity);
		//x pos
		buffer_write(buff,buffer_s16,inst.x);
		//y pos
		buffer_write(buff,buffer_s16,inst.y);
		//angle ***converted to radians to reduce file size***
		buffer_write(buff,buffer_u8,degtorad(inst.angle));
		//scale
		//buffer_write(buff,buffer_f32,inst.scale) 
	
	}
	
	i++;
}

//save buffer to memory

//check if file already exists
var filename = room_get_name(room)+"_data.sav";
if (file_exists(DIR_LEVELS + filename))
{
	var overwrite = show_question(filename + " already exists, dingus. Do you want to overwrite it?")
	if overwrite
	{
		buffer_save(buff, DIR_LEVELS + filename)
		show_message_async(filename + " successfully saved to directory:\n" + DIR_STORAGE + DIR_LEVELS)
	}
	else
	{
		//do nothing
	}
}

buffer_delete(buff)


