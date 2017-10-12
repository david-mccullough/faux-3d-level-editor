/// @description Insert description here
// You can write your code in this editor
image_xscale = dir;
draw_set_alpha(1)
if isSat
{
shader_set(shSaturation);

shader_set_uniform_f(saturation, var_saturation);

var sprrot = uiAniWobble;
var curAlpha = uiAlpha;
draw_sprite_ext(sprite_index,-1,guix,guiy,image_xscale,image_yscale,sprrot,image_blend,curAlpha);  


shader_reset();
}
