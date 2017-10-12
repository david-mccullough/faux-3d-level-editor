///@param ds_map
///@param value

//returns number of times specific value found in map

var map = argument0;
var val = argument1;

var num = 0;
var key = ds_map_find_first(map);
   
repeat (ds_map_size(map))
{
	if ds_map_find_next(map, key) == val
	{
		num++;
	}
}

return num;