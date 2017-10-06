/// @description Draw stacks 2D sprites

for (var i = 0; i < image_number; i++) 
{
trgY = trgMag*dsin(trgX+i*8)*i/10
//if abs(trgY - 0) < .1 then trgY = 0;

draw_sprite_ext(sprite_index, i, x + trgY, y - i*sep, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
/*
if keyboard_check(vk_rshift)
	show_debug_message(string(trgX)+", "+string(trgY))


/*
/// Rooted sway
for (var i = 0; i < image_number; i++) 
{
trgY = DampSin((trgX-i*.2), 1.2,1,50,0)
if keyboard_check(vk_rshift)
	show_debug_message(string(trgX)+", "+string(trgY))
if abs(trgY - 0) < .25 then trgY = 0;
draw_sprite_ext(sprite_index, i, x + trgY, y - i*sep, image_xscale, image_yscale, image_angle, c_white, image_alpha);
//draw_text(x-16,y,string(DampSin((trgX), 1.7,1,20,0)));
}

