void() offlinemenu =
{
	// drawpic(menustart, "gfx/logo.png", '146.5 27.5 0', ' 1 1 1', 1, 0);//draw the mouse
	// drawstring(centerscreen - '0 30 0', "Welcome to your new menu!", '20 20 0', '0 0 1', 1, 0);
	drawstring(menustart - '0 5 0', "Prototype", '12 12 0', '1 1 1', 1, 0);
	selecttext(menustart + '0 15 0', "New Game", SELECTDIFFICULTY, '8 8 0');
	selecttext(menustart + '0 30 0', "Load Game", LOADGAME, '8 8 0');
	selecttext(menustart + '0 45 0', "Options", LOADGAME, '8 8 0');
	cmdtext(menustart + '0 60 0', "Quit", "quit", '8 8 0');
};

void() selectdifficulty = 
{
	drawstring(menustart - '0 5 0', "Select your Difficulty", '12 12 0', '1 1 1', 1, 0);
	exectext(menustart + '0 15 0', "Easy", "skill", "0", "map e1m1\n", '8 8 0');
	exectext(menustart + '0 30 0', "Normal", "skill", "1", "map e1m1\n", '8 8 0');
	exectext(menustart + '0 45 0', "Hard", "skill", "2", "map e1m1\n", '8 8 0');
	exectext(menustart + '0 60 0', "Nightmare", "skill", "3", "map e1m1\n", '8 8 0');
	selecttext(menustart + '0 75 0', "Return", OFFLINEMENU, '8 8 0');
};

void() ingamemenu = 
{
   drawstring(centerscreen - '0 30 0', "In the Game!", '20 20 0', '1 0 0', 1, 0);//Title
   selecttext (centerscreen, "Save Game", SAVEGAME, '8 8 0');
   selecttext (centerscreen + '0 15 0', "Load Game", LOADGAME, '8 8 0');
   cmdtext (centerscreen + '0 30 0', "Quit", "quit", '8 8 0');
};

void() savemenu = 
{
   drawstring(centerscreen - '0 30 0', "Save it!", '20 20 0', '1 0 0', 1, 0);//Title
   cmdtext (centerscreen, "Save Slot 1", "save s01", '8 8 0');
   cmdtext (centerscreen + '0 15 0', "Save Slot 2", "save s02", '8 8 0');
   cmdtext (centerscreen + '0 30 0', "Save Slot 3", "save s03", '8 8 0');
   selecttext (centerscreen + '0 45 0', "Return", NONE, '8 8 0');
};

void() loadmenu = 
{
   drawstring(centerscreen - '0 30 0', "Load it!", '20 20 0', '1 0 0', 1, 0);//Title
   cmdtext (centerscreen, "Load Slot 1", "load s01", '8 8 0');
   cmdtext (centerscreen + '0 15 0', "Load Slot 2", "load s02", '8 8 0');
   cmdtext (centerscreen + '0 30 0', "Load Slot 3", "load s03", '8 8 0');
   selecttext (centerscreen + '0 45 0', "Return", NONE, '8 8 0');
};