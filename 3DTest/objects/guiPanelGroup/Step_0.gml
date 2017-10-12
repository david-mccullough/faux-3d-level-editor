//debugonly
if name == "3D Object Pages"
{
var targ = -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right)

if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
PanelGroupGoTo(id, panelIndex + targ);

}