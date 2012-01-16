string KeyMap(float keynum) =
{
   local string chrlist, key;
   
   if(keynum == 32)
      key = " ";
   else
   if(keynum >= 39 && keynum <= 61)
   {
      chrlist = "'  *+,-./0123456789 ; =";   
      key = substring(chrlist, keynum - 39, 1);
   }
   else
   if(keynum <= -39 && keynum >= -61)
   {
      chrlist = "\"    <_>?)!@#$%^&*( : +";
      key = substring(chrlist, (-keynum) - 39, 1);
   }
   else
   if(keynum >= 91 && keynum <= 93)
   {
      chrlist = "[\\]";
      key = substring(chrlist, keynum - 91, 1);
   }
   else
   if(keynum <= -91 && keynum >= -93)
   {
      chrlist = "{|}";
      key = substring(chrlist, (-keynum) - 91, 1);
   }   
   else
   if(keynum >= 97 && keynum <= 122)
   {
      chrlist = "abcdefghijklmnopqrstuvwxyz";
      key = substring(chrlist, keynum - 97, 1);
   }
   
   return key;
}

void CSQC_Parse_Print (string msg)
{
	print(msg);
}

void CSQC_Parse_CenterPrint (string msg)
{
	centerprint(msg);
}

void CSQC_Ent_Update (float isnew)
{	

}

void CSQC_Ent_Remove ()
{
       remove(self);
};


void CSQC_Init ()
{	

}

void CSQC_Shutdown (void)
{
}

void CSQC_ConsoleCommand (string str)
{
}

vector ConstructVector(float x, float y, float z)
{
	local vector vec;
	vec_x = x;
	vec_y = y;
	vec_z = z;
	return vec;
}

void DrawHollowBar (vector topleft, float width, float height, vector colour)
{
	// top
	// drawfill('10 380 0', '100 2 0', '0 0 0', 1.0, 0);
	drawfill(topleft, ConstructVector(width, 2, 0), colour, 1.0, 0);
	// bottom
	drawfill(ConstructVector(topleft_x, topleft_y + 8, topleft_z), ConstructVector(width, 2, 0), colour, 1.0, 0);
	// drawfill('10 388 0', '100 2 0', '0 0 0', 1.0, 0);
	// left
	// drawfill('10 380 0', '2 10 0', '0 0 0', 1.0, 0);
	drawfill(topleft, ConstructVector(2, height, 0), colour, 1.0, 0);
	// right
	// drawfill('108 380 0', '2 10 0', '0 0 0', 1.0, 0);
	drawfill(ConstructVector(topleft_x + 98, topleft_y, topleft_z), ConstructVector(2, height, 0), colour, 1.0, 0);
}

void DrawBar (vector topleft, float width, float height, float full, vector bgcolour, vector fgcolour)
{
	local float fg_width;

	fg_width = width * full;
	drawfill(topleft, ConstructVector(width, height, 0), bgcolour, 1.0, 0);
	drawfill(topleft, ConstructVector(fg_width, height, 0), fgcolour, 1.0, 0);
	
	DrawHollowBar(topleft, 100, 10, '0 0 0');
}

void DrawArmour() {
	local float armourint;
	local string armourstr;
	local float items;
	local vector armourcolour;
	local string armouricon;
	
	armourint = getstati(STAT_ARMOR);
	
	if (armourint > 0) {
		armourstr = ftos(armourint);
		
		armourcolour = '1 1 1';
		
		// What colour?
		items = getstati(STAT_ITEMS);
		if (items & IT_ARMOR1) {
			armourcolour = '0.06 0.66 0.11';
			armouricon = "gfx/sb_armor1.png";
		}
		if (items & IT_ARMOR2) {
			armourcolour = '0.87 0.90 0.16';
			armouricon = "gfx/sb_armor2.png";
		}
		if (items & IT_ARMOR3) {
			armourcolour = '0.90 0.16 0.26';
			armouricon = "gfx/sb_armor3.png";
		}
		
		drawstring('181 375 0', armourstr, '14 14 0', armourcolour, 1.0, 0);
		drawpic ('165 375 0', armouricon, '14 14 0', '1 1 1', 1.0, 0);
	}
}

void DrawHealthCross () {
	local float healthint;
	local float health_full;
	local float cross_height;
	local float horizontal_cross_height;
	local vector crosscolour;
	
	healthint = getstati(STAT_HEALTH);
	healthint = max(healthint, 0);
	health_full = healthint / 100;
	health_full = min(health_full, 1.0);
	
	// draw background
	drawfill ('140 310 0', '20 60 0', '0.05 0.05 0.05', 1, 0);
	drawfill ('120 330 0', '60 20 0', '0.05 0.05 0.05', 1, 0);
	
	// what colour to draw the cross?
	if (healthint > 40) {
		crosscolour = '0.93 0.91 0.90';
	} else {
		crosscolour = '1 0.03 0.01';
	}
	
	// draw the actual cross
	// how tall should the cross be?
	cross_height = health_full * 54;
	
	drawfill (ConstructVector(143, 313+(54-cross_height), 0), ConstructVector(14, cross_height, 0), crosscolour, 1, 0);
	if (cross_height > 20 && cross_height < 34) {
		horizontal_cross_height = cross_height - 20;
		drawfill (ConstructVector(123, 333+(14-horizontal_cross_height), 0), ConstructVector(54, horizontal_cross_height, 0), crosscolour, 1, 0);
	} else if (cross_height >= 34) {
		drawfill ('123 333 0', '54 14 0', crosscolour, 1, 0);
	}
}


void DrawCross(vector loc, float crosssize) {
	local vector squaresize;
	local vector toploc;
	local vector bottomloc;
	local vector leftloc;
	local vector rightloc;
	
	squaresize_x = crosssize;
	squaresize_y = crosssize;
	squaresize_z = 0;
	
	toploc_x = loc_x;
	toploc_y = loc_y - crosssize;
	toploc_z = 0;
	
	bottomloc_x = loc_x;
	bottomloc_y = loc_y + crosssize;
	bottomloc_z = 0;
	
	leftloc_x = loc_x - crosssize;
	leftloc_y = loc_y;
	leftloc_z = 0;
	
	rightloc_x = loc_x + crosssize;
	rightloc_y = loc_y;
	rightloc_z = 0;
	
	drawfill(loc, squaresize, '0.9 0.9 0.9', 0.5, 0);
	drawfill(toploc, squaresize, '0.9 0.9 0.9', 0.5, 0);
	drawfill(bottomloc, squaresize, '0.9 0.9 0.9', 0.5, 0);
	drawfill(leftloc, squaresize, '0.9 0.9 0.9', 0.5, 0);
	drawfill(rightloc, squaresize, '0.9 0.9 0.9', 0.5, 0);
}

void DrawOverhealCross () {
	local float healthint;
	local float cross_size;
	local vector cross_location;
	
	healthint = getstati(STAT_HEALTH);
	healthint = max(healthint, 0);
	
	if (healthint > 100) {
		cross_size = 20 + (((healthint - 100) / 150) * 12);
		
		cross_location_x = 140 - (((healthint - 100) / 150) * 6);
		cross_location_y = 330 - (((healthint - 100) / 150) * 6);
		cross_location_z = 0;
		
		DrawCross(cross_location, cross_size);
	}
}

void DrawHealthText ()
{
	local float healthint;
	local string healthstr;
	local vector healthcolour;
	
	healthint = getstati(STAT_HEALTH);
	healthint = max(healthint, 0);
	healthstr = ftos(healthint);
	
	// what colour to draw the cross?
	if (healthint > 40) {
		healthcolour = '0.73 0.71 0.7';
	} else {
		healthcolour = '1 0.03 0.01';
	}
	
	drawstring('160 350 0', healthstr, '26 26 0', healthcolour, 1.0, 0);
}

void DrawAmmo ()
{
	local float ammoint;
	local string ammostr;
	local float activeweapon;
	
	ammoint = getstati(STAT_AMMO);
	activeweapon = getstati(STAT_ACTIVEWEAPON);
	
	if (ammoint > 0) {
		ammostr = ftos(ammoint);
		if ((activeweapon & IT_SHOTGUN) || (activeweapon & IT_SUPER_SHOTGUN)) {
			drawpic ('422 351 0', "gfx/sb_shells.png", '24 24 0', '1 1 1', 1.0, 0);
		} else if ((activeweapon & IT_NAILGUN) || (activeweapon & IT_SUPER_NAILGUN)) {
			drawpic ('422 351 0', "gfx/sb_nails.png", '24 24 0', '1 1 1', 1.0, 0);
		} else if ((activeweapon & IT_GRENADE_LAUNCHER) || (activeweapon & IT_ROCKET_LAUNCHER)) {
			drawpic ('422 351 0', "gfx/sb_rocket.png", '24 24 0', '1 1 1', 1.0, 0);
		} else if ((activeweapon & IT_LIGHTNING)) {
			drawpic ('422 351 0', "gfx/sb_cells.png", '24 24 0', '1 1 1', 1.0, 0);
		}
		drawstring('450 350 0', ammostr, '26 26 0', '0.73 0.71 0.7', 1.0, 0);
	}
}

/*
void DrawReserveAmmo ()
{
	local float shellsint;
	local string shellsstr;
	local float nailsint;
	local string nailsstr;
	local float rocketsint;
	local string rocketsstr;
	local float cellsint;
	local string cellsstr;
	
	local float activeweapon;
	
	
	shellsint = getstati(STAT_SHELLS);
	nailsint = getstati(STAT_NAILS);
	rocketsint = getstati(STAT_ROCKETS);
	cellsint = getstati(STAT_CELLS);
	activeweapon = getstati(STAT_ACTIVEWEAPON);
	
	if (shellsint > 0 && !(activeweapon & IT_SHOTGUN) && !(activeweapon & IT_SUPER_SHOTGUN)) {
		shellsstr = ftos(shellsint);
		drawstring('400 380 0', shellsstr, '10 10 0', '1 1 1', 1.0, 0);
	}
	
	if (nailsint > 0) {
		nailsstr = ftos(nailsint);
		drawstring('440 380 0', nailsstr, '10 10 0', '1 1 1', 1.0, 0);
	}
	
	if (rocketsint > 0) {
		rocketsstr = ftos(rocketsint);
		drawstring('480 380 0', rocketsstr, '10 10 0', '1 1 1', 1.0, 0);
	}
	
	if (cellsint > 0) {
		cellsstr = ftos(cellsint);
		drawstring('520 380 0', cellsstr, '10 10 0', '1 1 1', 1.0, 0);
	}
}
*/

void DrawKeys() {
	local float items;
	
	items = getstati(STAT_ITEMS);
	
	if (items & IT_KEY1) {
		drawfill ('0 362 0', '20 20 0', '0 0 0', 0.5, 0);
		drawpic ('2 364 0', "gfx/sb_key1", '16 16 0', '1 1 1', 1.0, 0);
	}
	
	if (items & IT_KEY2) {
		drawfill ('0 382 0', '20 20 0', '0 0 0', 0.5, 0);
		drawpic ('2 384 0', "gfx/sb_key2", '16 16 0', '1 1 1', 1.0, 0);
	}
	
}

void DrawSerialKillerStatus() {
	local float rank;
	local string rankstr;
	local vector rankcolour;
	
	rank = getstati(STAT_SERIALKILLERRANK);
	rankstr = strcat("Serial Killer ", ftos(rank));
	rankstr = strcat(rankstr, "!");
	
	rankcolour = '1 1 1';
	
	if (rank > 0) {
		rankcolour = '1 0.8 0.8';
	}
	if (rank > 1) {
		rankcolour = '1 0.6 0.6';
	}
	if (rank > 2) {
		rankcolour = '1 0.4 0.4';
	}
	if (rank > 3) {
		rankcolour = '1 0.2 0.2';
	}
	if (rank > 4) {
		rankcolour = '1 0 0';
	}
	
	if (rank > 0) {
		drawstring('420 340 0', rankstr, '8 8 0', rankcolour, 1.0, 0);
	}
}

void DrawPerks() {
	local float perks;
	
	perks = getstati(STAT_PERKS);
	
	if (perks & PERK_DETERMINATION) {
		drawstring('510 300 0', "   Determination", '8 8 0', '0.8 0 0', 1.0, 0);
	}
	if (perks & PERK_SERIALKILLER) {
		drawstring('510 300 0', "   Serial Killer", '8 8 0', '0.8 0 0', 1.0, 0);
	}
	if (perks & PERK_EXPRESSDELIVERY) {
		drawstring('510 300 0', "Express Delivery", '8 8 0', '0.8 0 0', 1.0, 0);
	}
	if (perks & PERK_LONGBARREL) {
		drawstring('510 300 0', "     Long Barrel", '8 8 0', '0.8 0 0', 1.0, 0);
	}
	
	if (perks & PERK_VAMPIRISM) {
		drawstring('510 310 0', "       Vampirism", '8 8 0', '0.8 0.8 0', 1.0, 0);
	}
	if (perks & PERK_BATTLEMEDICINE) {
		drawstring('510 310 0', " Battle Medicine", '8 8 0', '0.8 0.8 0', 1.0, 0);
	}
	if (perks & PERK_FINDERSKEEPERS) {
		drawstring('510 310 0', " Finders Keepers", '8 8 0', '0.8 0.8 0', 1.0, 0);
	}
	if (perks & PERK_BUDGETING) {
		drawstring('510 310 0', "       Budgeting", '8 8 0', '0.8 0.8 0', 1.0, 0);
	}
	
	if (perks & PERK_ARTFULDODGER) {
		drawstring('510 320 0', "   Artful Dodger", '8 8 0', '0 0.8 0.8', 1.0, 0);
	}
	if (perks & PERK_BLOODYMESS) {
		drawstring('510 320 0', "     Bloody Mess", '8 8 0', '0 0.8 0.8', 1.0, 0);
	}
	if (perks & PERK_LIGHTFEET) {
		drawstring('510 320 0', "      Light Feet", '8 8 0', '0 0.8 0.8', 1.0, 0);
	}
	if (perks & PERK_CRAZYLEGS) {
		drawstring('510 320 0', "      Crazy Legs", '8 8 0', '0 0.8 0.8', 1.0, 0);
	}
}

void CSQC_UpdateView (float width, float height, float menushown) 
{
	// make a function to update any local resolution stuff and call it here.. We'd do this for resolution independent locations to render pictures or things. 

	clearscene(); 		// CSQC builtin to clear the scene of all entities / reset our view properties
	
	// update our view location for our camera such as a chase camera function here.. Lets do this by using some CSQC global definitions of our local player's simulated origin and our angles
	
	pmove_org = pmove_org + '0 0 20'; // Adding an offset to pmove_org
	
	setproperty(VF_ORIGIN, pmove_org); //pmove_org is a CSQC definition (global vector) of our simulated player location, it is filled in every frame 
	setproperty(VF_CL_VIEWANGLES, input_angles); // input_angles is a CSQC definition (global vector) of our angles as set by our mouse and stuff, we want our view angles to match this!
   
	
	setproperty(VF_DRAWWORLD, 1); 		// we want to draw our world!
	setproperty(VF_DRAWCROSSHAIR, 1);		 // we want to draw our crosshair!
	addentities(MASK_NORMAL | MASK_ENGINE | MASK_ENGINEVIEWMODELS); 		// add entities with these rendermask field var's to our view
	renderscene(); 		// render that puppy to our screen, 

	// render hud using builtins like drawstring, drawpic, and any of that fun stuff here!
	DrawOverhealCross();
	DrawHealthCross();
	DrawHealthText();
	
	DrawArmour();
	
	DrawAmmo();
	
	DrawKeys();
	
	DrawSerialKillerStatus();
	
	DrawPerks();
	
	DrawMenu();
}

float CSQC_InputEvent (float event, float param, float param2)
{
    local string key, keybind;
   
	key = KeyMap(param);
	keybind = getkeybind(param);
   
    if (!event) { // key pressed down
		if (key == "b") {
			if (menustate == MENU_NONE) {
				menustate = MENU_MAIN;
				return 1;
			} else {
				menustate = MENU_NONE;
				return 1;
			}
		}
		if (menustate > MENU_NONE) {
			MenuHandleKey(key);
			return 1;
		}
	}

	return false;
}
