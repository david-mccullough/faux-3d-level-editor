/// @description state
//if last or first panels, set appropiate buttons to disabled
if myPanel != noone
{
	guix = (guixOffset+myPanel.guix)
	guiy = (guiyOffset+myPanel.guiy)
}
x = (guix+view_x)
y = (guiy+view_y)



if pageNumber
{
	text = string(panelGroup.panelIndex+1) + " / " + string(panelGroup.numPanels)
}