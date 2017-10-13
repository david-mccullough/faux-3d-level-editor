/// @description Insert description here
// You can write your code in this editor
if uiVisible
{
if uiSlide
{
	if uiSlideFreeze {
		_guix = uiSlideXOrig;
		_guiy = uiSlideYOrig;
	} else {
	if point_in_rectangle(global.gui_mouse_x,global.gui_mouse_y,guix-16,guiy,guix+uiWidth,guiy+uiHeight)
	{
		_guix = uiSlideXOrig;
		_guiy = uiSlideYOrig;
	}
	else
	{
		_guix = uiSlideX;
		_guiy = uiSlideY;
	}
	}
	guix = smooth_approach(guix,_guix,uiSlideSpeed)
	guiy = smooth_approach(guiy,_guiy,uiSlideSpeed)
}


if uiDrawRectangle
{
	draw_set_color(uiBackColor);
	draw_set_alpha(uiAlpha);
	
	draw_rectangle(guix+uiDrawXOffset,guiy+uiDrawYOffset,guix+uiWidth,guiy+uiHeight-1,false)
}
draw_set_alpha(1)

event_user(10) //specifcs
}