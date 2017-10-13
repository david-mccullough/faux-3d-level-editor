/// @description Insert description here
event_inherited();

enum linkType
{
	none,
	angleSnap,
	gridSnap,
}

isSat = true;
hasFocus = false;
name = "Field"

guix = x;
guiy = y;
link = linkType.none;

/// TEXT ///
caret_flash = 0
caret_flash_rate = 15
caret_move = 0
caret_move_rate = 7
text = "" // current text
caret = 0 // caret position
fillchar = "`" // used as filler character in input handling.
filltext = string_repeat(fillchar, 10)

maxwidth = 64;

