//determine if 2d or 3d

//3d
if is3D
{
	draw_self_3d();
}
else
{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,angle,c_white,image_alpha);
}