if global.levelEditorEnabled
{
	if show_question("Are you sure you want to exit?\n\n(Any unsaved changes will be lost)")
	{
		game_end();
		return 0;
	}
	else
	{
		return 0;
	}
}
else
{
	game_end();
}