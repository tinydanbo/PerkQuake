void() m_init =
{
	Menu_Active = false;

	precache_sound ("menu/menu1.wav");
	precache_sound ("menu/menu2.wav");
	precache_sound ("menu/menu3.wav");
	
	vidsize_x = cvar("vid_conwidth");
    vidsize_y = cvar("vid_conheight");
	
	centerscreen_x = (vidsize_x / 2);
	centerscreen_y = (vidsize_y / 2);
	
	mouse_pos_x = vidsize_x / 2;
	mouse_pos_y = vidsize_y / 2;
	
	gamemode = cvar("deathmatch");

	mhit = 1;

	playsound = 1;
};

void(float key, float ascii) m_keyup =
{
	if (key == K_MOUSE1)
		{
		mhit = 1;
		}
		
	if (key == K_ESCAPE) {
		m_toggle();
	}
};

void(float key, float ascii) m_keydown =
{
		
	if (key == K_MOUSE1)
		{
		mhit = 0;
		}
};

float check_mouse (vector pos, vector tsize)
{
	local vector smins, smaxs;
	
	smins = pos;
	smaxs = pos;
	smins_x = pos_x;
	smins_y = pos_y - 1;

	smaxs_x = pos_x + tsize_x;
	smaxs_y = pos_y + tsize_y;

	if (mouse_pos_x >= smins_x && mouse_pos_x <= smaxs_x )
		{
		if (mouse_pos_y >= smins_y && mouse_pos_y <= smaxs_y )
			{
			return 1;
			}
		}
	
	return 0;
};

void() m_draw =
{
	mouse_pos += getmousepos();
	
	if (Menu_Active)
		if (getmousetarget() != MT_MENU || getkeydest() != KEY_MENU)
			m_hide();
		
	if (playsound)
		{
		cmd("cd loop 001");
		playsound = 0;
		}
//=================================	
	if (mouse_pos_y > (vidsize_y - 1))
		mouse_pos_y = vidsize_y - 1;
	else if (mouse_pos_y < 0)
		mouse_pos_y = 0;

	if (mouse_pos_x > (vidsize_x - 1))
		mouse_pos_x = vidsize_x - 1;
	else if (mouse_pos_x < 0)
		mouse_pos_x = 0;					//keeps mouse within screen boundaries :D
//==================================

	/*
	if (clientstate() == CS_CONNECTED && menumode == OFFLINEMENU)
		menumode = NONE;//wrong menu showing up hacky fix
	*/
	
	if (Menu_Active) {
		if (menumode == NONE)
		{
			// if (clientstate() == CS_CONNECTED) {
			// 	menumode = INGAMEMENU;
			// } else {
				menumode = OFFLINEMENU;
			// }
		} else if (menumode == INGAMEMENU)
			ingamemenu();      
		else if (menumode == SELECTDIFFICULTY)
			selectdifficulty();
		else if (menumode == SAVEGAME)
			savemenu();
		else if (menumode == LOADGAME)
			loadmenu();
		else
			offlinemenu();
		 
		time = gettime();

		drawpic(mouse_pos, "gfx/cursor.png", '18 18 0', ' 1 1 1', 1, 0);//draw the mouse
	}
};

void() m_display =
{
	Menu_Active = TRUE;
	setkeydest (KEY_MENU);
	setmousetarget (MT_MENU);
};

void() m_hide =
{
	Menu_Active = FALSE;
	setkeydest (KEY_GAME);
	setmousetarget (MT_CLIENT);
};

void() m_toggle =
{
	if (Menu_Active)
		m_hide();
	else
		m_display();
};

void() m_shutdown =
{
};
