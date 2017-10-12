//if EaseType=0 draw_text(30,10,string(EaseCurValue));

with (EaseControl) do 
{
  switch (other.EaseKind)
      {
         case 6 :    //draw glowing 
                      draw_set_alpha(CurFading);
                      gpu_set_blendmode(bm_add);
                      draw_ellipse_color(x, y, x+sprite_width, y+sprite_height, c_white, c_black, false);
                      gpu_set_blendmode(bm_normal); 
                      draw_set_alpha(uiAlpha);
                    break;  
      }
}      

