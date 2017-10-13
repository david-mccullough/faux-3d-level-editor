/// @description Insert description here
// You can write your code in this editor
if isSat
{
shader_set(shSaturation);

if hasFocus 
var_saturation = .2;
shader_set_uniform_f(saturation, var_saturation);
if hasFocus
{
//draw_sprite_ext(sprite_index,-1,x,y,image_xscale*1.02,image_yscale*1.02,0,-1,1);
draw_sprite_ext(sprite_index,-1,guix,guiy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);  
draw_set_color(C_LETEXT);
//draw_rectangle(x-sprite_width/2 -1, y-sprite_height/2 -1, x+sprite_width/2 , y+sprite_height/2 , true);
}
else
draw_sprite_ext(sprite_index,-1,guix,guiy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);  

shader_reset();
}

draw_set_font(F_LE);
draw_set_color(C_LETEXT);
draw_set_halign(fa_right)
var i, h, ptext;
// sad truth: There is no way you can display the typed "#"
// characters and get string width of those.
ptext = string_replace_all(text, "#", "�")

var xOff = sprite_width/2 - 8
h = string_height("\\")
draw_text(guix+xOff, guiy-h/2, ptext)


i = string_width(string_copy(ptext, 1, caret))

//draw caret
//if hasFocus && (current_second%2)
//draw_line(x + i -xOff, y-h/2, x + i -xOff, y + h/4)

i = string_width(text)
//draw_line(x - 3, y + h + 2, x + i + 2, y + h + 2)
//draw_line(x - 3, y + h + 4, x + i + 10, y + h + 4)

draw_set_font(F_LE);
draw_set_color(C_LETEXT);
draw_set_halign(fa_left)

draw_text(guix+sprite_width/2+8, guiy-8, name)

// key handling:
if (keyboard_check_pressed(vk_enter) || mblPressed)
{
	hasFocus = false;
	if text != ""
	{
		switch link
		{
			case linkType.angleSnap:
			objLevelEditor.angleSnap = wrap(sign(real(text))*real(text),0,360);
			break

			case linkType.gridSnap:
			objLevelEditor.gridSnap = wrap(sign(real(text))*real(text),0,512);
			break
			
			case linkType.none:
			break;
			
			default:
			//nothing
			break
		}
	}
	else {event_user(9)}
}
