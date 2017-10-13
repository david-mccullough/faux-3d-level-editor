/// @description Insert description here
// You can write your code in this editor
name = "panel"
guix = 0;
guiy = 0;
guixOffset = 0;
guiyOffset = 0;
uiVisible = true;


_guix = 0;
_guiy = 0;
uiSlide = false;
uiSlideSpeed = .2;
uiSlideX = 0;
uiSlideY = 0;
uiSlideXOrig = 0;
uiSlideYOrig = 0;
uiSlideFreeze = false

uiWidth= 128
uiHeight = 900;

uiBackColor = c_black;
uiAlpha = .5;
uiDrawRectangle=false;
uiPanelSprite = -1;
uiImageIndex=0;
uiImageScale = 1.0;
uiDrawXOffset = 0
uiDrawYOffset = 0

elements = array_create(0,0) //will be array of childed gui elements
//page.elements[array_length_1d(page.elements)-1] = obj;

myPanelGroup = noone;
panelIndex = 0;
myPanel = noone;

