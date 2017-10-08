/// @description use the camera manager to flash the screen.
/// @param length
/// @param color

with(objCameraManager)
{
  screen_flash_length= argument[0];
  screen_flash_color = argument[1];
  screen_flash_start = timer;
}
