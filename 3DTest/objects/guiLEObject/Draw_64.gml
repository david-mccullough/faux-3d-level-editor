/// @description Insert description here
// You can write your code in this editor
if isSat
{
	shader_set(shSaturation);

	shader_set_uniform_f(saturation, var_saturation);
	draw_sprite_ext(sprite_index,-1,guix,guiy,image_xscale,image_yscale,image_angle,c_white,image_alpha);
	
	draw_set_font(F_LE)
	draw_set_valign(fa_middle)
	draw_text(guix-sprite_xoffset+16,guiy,text)
	draw_set_valign(fa_top)
		
	shader_reset();
}

//hitbox
//draw_rectangle(x-sprite_xoffset -1,y-sprite_yoffset -1,x+sprite_width-sprite_xoffset -1,y+sprite_height-sprite_yoffset -1,true)