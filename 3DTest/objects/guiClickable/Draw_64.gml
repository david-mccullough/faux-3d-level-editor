/// @description Insert description here
// You can write your code in this editor

if isSat
{
shader_set(shSaturation);

shader_set_uniform_f(saturation, var_saturation);
draw_self();

shader_reset();
}