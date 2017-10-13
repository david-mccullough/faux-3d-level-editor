/// @description Insert description here
// You can write your code in this editor
if name = "Info Panel"
{
	draw_set_halign(fa_right);
	draw_set_font(F_LE);
	draw_set_color(C_LETEXT);
	
	var txt = "Last saved " + string(floor(objLevelEditor.minSinceLastSave)) + " minutes ago";
	draw_text(view_w-4,guiy,txt)
	
	draw_set_halign(fa_left);
	var marg = 64;
	//xpos
	draw_text(guix,guiy,"  x: " + string(objLevelEditor.x+objLevelEditor.xplace));
	//ypos
	draw_text(guix+marg,guiy,"| y: " + string(objLevelEditor.y+objLevelEditor.yplace));
	draw_text(guix+2*marg,guiy,"| angle: " + string(objLevelEditor.angle)+chr(176));
	


}