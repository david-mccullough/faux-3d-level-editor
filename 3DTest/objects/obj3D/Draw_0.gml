/// @description Draw stacks 2D sprites
image_angle=objCamera.angle;
for (var i = 0; i < image_number; i++) 
{
draw_sprite_ext(sprite_index, i, x + trgMag*dsin(trgX+i*20), y - i*4, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}