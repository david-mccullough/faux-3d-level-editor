/*

ini_open("levelList.ini")

var i = 0;
do
{
	if ini_key_exists("levels",i)
	{
		//var tempRoomName = room_duplicate(rmBLANK);
		ds_list_add(global.levels, tempRoom)

		i++;
	}
}
until (!ini_key_exists("levels",i))


ini_close();