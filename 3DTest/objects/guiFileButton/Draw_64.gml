/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)

shader_set(shSaturation);

shader_set_uniform_f(saturation, var_saturation);

var sprrot = uiAniWobble;
var curAlpha = uiAlpha;
draw_sprite_ext(sprite_index,-1,guix,guiy,image_xscale,image_yscale,sprrot,image_blend,curAlpha);  


draw_set_font(F_LE)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black);


var width = string_width(text)
var height = string_height(text)

//draw_rectangle(guix-xmargin-width/2,guiy-ymargin,guix+width/2+xmargin,guiy+height+ymargin, 0);

draw_set_color(c_white)
draw_text_ext_transformed(guix,guiy-(height*.8)/2,text,1,-1,.8,.8,0);


draw_set_halign(fa_left);
draw_set_valign(fa_top)


shader_reset();

