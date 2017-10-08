/// @description Use the camera manager to shake the screen.
/// @param amplitude
/// @param duration
/// @param direction
with(objCameraManager)
{
  screen_shake_amp=abs(argument[0]);
  screen_shake_start=timer;
  screen_shake_length=argument[1];
  screen_shake_direction=argument[2];
}
