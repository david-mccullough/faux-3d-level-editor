/// @description Draw stacks 2D sprites

switch type
{
	/// Static
	case drawType.static:
	for (var i = 0; i < image_number; i++) 
	{
	draw_sprite_ext(sprite_index, i, x, y - i*sep, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	}
	break;

	/// Rooted sway
	case drawType.rootedSway:
	for (var i = 0; i < image_number; i++) 
	{
	draw_sprite_ext(sprite_index, i, x + trgMag*dsin(trgX+i*10)*i/10, y - i*sep, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	}
	break;

	/// Unrooted sway
	case drawType.sway:
	for (var i = 0; i < image_number; i++) 
	{
	draw_sprite_ext(sprite_index, i, x + trgMag*dsin(trgX+i*20), y - i*sep, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	}
	break;
	
	/// Rooted bounce
	case drawType.bounce:
	for (var i = 0; i < image_number; i++) 
	{
	draw_sprite_ext(sprite_index, i, x, y - i*sep - (trgMag*dsin(trgX+i*2))*i/10, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	}
	break;
}

