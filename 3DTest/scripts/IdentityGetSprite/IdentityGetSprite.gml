///@param identity

var spr =  asset_get_index("spr"+argument0)

if !sprite_exists(spr)
{
	show_debug_message("Could not get sprite index for identity " + argument0)
	spr = 0;
}

return spr