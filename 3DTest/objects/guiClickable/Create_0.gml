/// @description Make sure children inherit this even

state = buttonState.idle;
isSat = true;
isButton = true;
initPress = false;
myWindow = 0;
myPage = 0;
mouseOver = false

var_saturation = 0.0;
saturation = shader_get_uniform(shSaturation, "sat");
satDisabled = -0.5
satIdle = 0.0
isActive = true;

guix = x;
guiy = y;

uiBackColor = c_black;
uiAlpha = .8;
uiDrawRectangle=false;
uiDrawSprite = false;
uiImageIndex=0;
uiImageScale = 1.0;
uiOrigXscale=image_xscale;
uiOrigYscale=image_yscale;
uiOrigWidth=sprite_width;
uiOrigHeight=sprite_height;

uiEnabled = true

//animation
uiAnimated=true;
uiWobble=0;
uiWobbleSpeed=1;
uiPulse=0;
uiPulseSpeed=0.03;
uiPulseJello=false;
uiFading=0;
uiFadingSpeed=0.03;
uiSparkle=0;
uiSparkleSpeed=1;
uiTextWobble=0;
uiTextWobbleSpeed=1;
uiHoverMode=1;
uiHoverColor=c_dkgray;
uiHoverInfo=0.8;
uiGlowing=0;

uiZoomFactor = 1

//default ease
uiEaseType=25;                 //type of ease based on JQuery Easing Plugin
uiEaseDur=30;                  // steps

uiEaseWobbleType=31;            //Wobble animation type of ease based on JQuery Easing Plugin
uiEaseWobbleDur=80;            // steps
uiEasePulseType=36;             //Pulse Animation type of ease based on JQuery Easing Plugin

uiEasePulseDur=80;             // steps
uiEaseFadeType=0;              // for Fade/glowing Animation type of ease based on JQuery Easing Plugin
uiEaseFadeDur=50;              // steps

uiEaseCurTime=0;               // current time  don't need to set
uiEaseStart=0;                 // beginning value
uiEaseEnd=1  ;                 // ending value
uiEaseCurValue=1;              // CurValueofEase
inEase=false;                  // internal flag
EaseKind=-1;                   // internal type

uiAniWobble=0;                 // animation wobble;
uiAniPulse=0;                  // animation zoom/pulse
uiAniFading=0;                 // animation fading
CurFading=0;                   // used for hovering;
uiAniDrawGlow=false;           // hover glowing
isHovering = false;            // hover status on widget
uiCanHover=false;              // used for hovering;
uiAngle=0;                     // for all widgets to store angle.
uiRadiusX=15;
uiRadiusY=15;
uiPopUp=false;                 //animation for popup.
uiPopDown=false;               //animation for popdown.
curHoverZoom=0;                //hoverzoom factor
backalpha=1;
inAnimation=false;
uiVisibleChild=true;
uiEnabledChild=true;
uiClickOnChar=chr(1);            //will press button/control if keypress
uiDestroy=-1;                    //fill fadeout & destory instance on steps, for splash labels and such...
killonfade=false;                //internal flag don't touch... 



