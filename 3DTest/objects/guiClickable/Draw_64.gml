/// @description Insert description here
// You can write your code in this editor
var ymargin,disptx,px,py,bx,by,fx,yratio,drawbutdown,sprx,spry,sprW,sprH,sprxscale,spryscale,sprrot,curAlpha,curImageBlend,curZoomFactor,hoverEffect,curSprite,curIndex,xpulse,ypulse;


if (uiAnimated) && (inAnimation=false)
{
    if uiWobble!=0   //wobble is active, create animation
    {
        EaseKind=3;
        uiEaseType=uiEaseWobbleType;
        uiEaseDur=uiEaseWobbleDur;               
        event_user(12);                                        
    }  
    if uiPulse!=0   //pulse is active, create animation
    {
        EaseKind=2;
        uiEaseType=uiEasePulseType;
        uiEaseDur=uiEasePulseDur;               
        event_user(12);                                        
    }  
    if uiFading!=0   //fading is active, create animation
    {
        EaseKind=4;
        uiEaseType=uiEaseFadeType;
        uiEaseDur=uiEaseFadeDur;               
        event_user(12);                                        
    }                 
    if uiGlowing!=0   //fading is active, create animation
    {
        EaseKind=6;
        uiEaseType=uiEaseFadeType;
        uiEaseDur=uiEaseFadeDur;               
        event_user(12);                                        
    }                                     
    if uiSparkle!=0 //sparkle active, create animation      
    {
        EaseKind=5;
        event_user(12);                                        
    }                 
                       
    inAnimation=true;
}               
   
if (uiAnimated==false) && (inAnimation=true) //stop animations
{
	with (ui_ani_control)  //remove any animation objects on this widget
	    {  if EaseControl==other.id {instance_destroy();} } 
	inAnimation=false;
}              

#region

curAlpha=uiAlpha;
curZoomFactor=uiZoomFactor


curZoomFactor +=uiAniPulse;   
curZoomFactorX=curZoomFactor;
curZoomFactorY=curZoomFactor;       


curAlpha -=uiAniFading;


px=x;
py=y;

            
                                   
if curZoomFactor != 1
   {  curZoomFactor = floor(curZoomFactor*100) / 100; 
      curZoomFactorX=curZoomFactor;
      curZoomFactorY=curZoomFactor;  
      if uiPulseJello    
             { if curZoomFactor >= 1  {curZoomFactorX=curZoomFactor;
                                       curZoomFactorY=1-(curZoomFactor-1);
                                      }
               else                   {curZoomFactorY=1+(1-curZoomFactor);
                                       curZoomFactorX=(curZoomFactor);
                                      }    
             }  
      image_xscale = uiOrigXscale * (curZoomFactorX);
      image_yscale = uiOrigYscale * (curZoomFactorY);
      px = x - ( ( ( curZoomFactorX * uiOrigWidth) - uiOrigWidth) div 2 );
      py = y - ( ( ( curZoomFactorY * uiOrigHeight) - uiOrigHeight) div 2 );           
   } else //if no zoom
      {image_xscale = uiOrigXscale;
       image_yscale = uiOrigYscale  
       curZoomFactorX=1;
       curZoomFactorY=1;                
      }     
       
      


#endregion


if isSat
{
shader_set(shSaturation);

shader_set_uniform_f(saturation, var_saturation);

var sprrot = uiAniWobble;
var curAlpha = uiAlpha;
image_xscale = (image_xscale)*.25 + .75
image_yscale = (image_yscale)/2 + .5
draw_sprite_ext(sprite_index,-1,guix,guiy,image_xscale,image_yscale,sprrot,image_blend,curAlpha);  


shader_reset();
}