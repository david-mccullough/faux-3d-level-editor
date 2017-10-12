/// @description Insert description here
// You can write your code in this editor
event_inherited();
if isSat
{
	shader_set(shSaturation);
	
	draw_set_font(F_LE)
	draw_set_color(C_LETEXT);
	draw_set_valign(fa_middle)
	draw_text(guix-sprite_xoffset+16,guiy,identity)
	draw_set_valign(fa_top)
		
	shader_reset();
}

//hitbox
//draw_rectangle(x-sprite_xoffset -1,y-sprite_yoffset -1,x+sprite_width-sprite_xoffset -1,y+sprite_height-sprite_yoffset -1,true)