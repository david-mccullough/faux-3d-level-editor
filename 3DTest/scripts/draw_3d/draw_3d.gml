///@param sprite
///@param sep
///@param x
///@param y
///@param xscl
///@param yscl
///@param angle
///@param color
///@param alpha

var spr		= argument[0]
var sep		= argument[1]
var xx		= argument[2]
var yy		= argument[3]
var xscl	= argument[4]
var yscl	= argument[5]
var angle	= argument[6]
var col		= argument[7]
var alpha	= argument[8]


for (var i = 0; i < sprite_get_number(spr); i++) 
{
draw_sprite_ext(spr, i, xx, yy - i*sep, xscl, yscl, angle, col, alpha);
}

