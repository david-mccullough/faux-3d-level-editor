/// @description state
//if last or first panels, set appropiate buttons to disabled
x = (guix+view_x)
y = (guiy+view_y)


if pageNumber
{
	text = string(panelGroup.panelIndex+1) + " / " + string(panelGroup.numPanels)
}