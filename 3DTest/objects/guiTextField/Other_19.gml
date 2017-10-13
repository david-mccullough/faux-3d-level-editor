///@description set text to link vlaue
switch link
{
	case linkType.angleSnap:
	text = string(objLevelEditor.angleSnap)
	break

	case linkType.gridSnap:
	text = string(objLevelEditor.gridSnap)
	break
			
	case linkType.none:
	break;
			
	default:
	//nothing
	break
}