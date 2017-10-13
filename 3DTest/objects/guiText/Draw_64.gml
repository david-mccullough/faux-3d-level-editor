/// @description Insert description here
// You can write your code in this editor
draw_set_font(F_LE)
draw_set_halign(halign)
draw_set_color(c_black);

var width = string_width(text)
var height = string_height(text)

if drawRecangle
draw_rectangle(guix-xmargin-width/2,guiy-ymargin,guix+width/2+xmargin,guiy+height+ymargin-1, 0);

draw_set_color(c_white)
draw_text(guix,guiy,text);


draw_set_halign(fa_left);