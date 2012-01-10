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

void DrawAmmo()
{
	local float ammo;
	local string ammostr;
	
	ammo = getstati(STAT_AMMO);
	
	if (ammo > 0) {
		drawpic ('585 380 0', "gfx/sb_shells", '16 16 0', '1 1 1', 1.0, 0);
		
		ammostr = ftos(ammo);
		drawstring('605 380 0', "2", '12 12 0', '1 1 1', 1.0, 0);
		drawstring('617 388 0', ammostr, '8 8 0', '1 1 1', 1.0, 0);
	}
}

void DrawWeaponName()
{
	local float weapon;
	local string weaponstr;
	
	weapon = getstati(STAT_ACTIVEWEAPON);
	
	weaponstr = "HELP";
	
	if (weapon == IT_SHOTGUN)
		weaponstr = "         Shotgun";
	if (weapon == IT_AXE)
		weaponstr = "             Axe";
	if (weapon == IT_SUPER_SHOTGUN)
		weaponstr = "   Super Shotgun";
	if (weapon == IT_NAILGUN)
		weaponstr = "         Nailgun";
	if (weapon == IT_SUPER_NAILGUN)
		weaponstr = "      Perforator";
	if (weapon == IT_GRENADE_LAUNCHER)
		weaponstr = "Grenade Launcher";
	if (weapon == IT_ROCKET_LAUNCHER)
		weaponstr = " Rocket Launcher";
	if (weapon == IT_LIGHTNING)
		weaponstr = "     Thunderbolt";
	
	drawstring('470 365 0', weaponstr, '10 10 0', '1 1 1', 1.0, 0);
}

void DrawPerks()
{
	local string perk1, perk2, perk3;
	
	perk1 = "  Perk One";
	perk2 = "  Perk Two";
	perk3 = "Perk Three";
	
	drawstring ('575 335 0', perk1, '6 6 0', '0.8 0 0', 1.0, 0);
	drawstring ('575 343 0', perk2, '6 6 0', '0.6 0.6 0', 1.0, 0);
	drawstring ('575 351 0', perk3, '6 6 0', '0.2 0.2 0.8', 1.0, 0);
}

void DrawTimer()
{
	drawstring ('470 5 0', "Time Left : 1:24", '10 10 0', '1 1 1', 1.0, 0);
}

void DrawArmour ()
{
	local float armourint;
	local string armourstr;
	local float armour_full;
	
	armourint = getstati(STAT_ARMOR);
	
	if (armourint > 0) {
		armourstr = ftos(armourint); 
	
		// get fullness of health
		armour_full = armourint / 100;
		armour_full = min(armour_full, 1.0);
	
		DrawBar('10 365 0', 100, 10, armour_full, '0.3 0.3 0.3', '0.4 0.6 0.8');
		drawstring ('12 369 0', armourstr, '8 8 0', '1 1 1', 1.0, 0);
	}
}

void DrawHealth ()
{
	local float healthint;
	local string healthstr;
	local float health_full;
	
	healthint = getstati(STAT_HEALTH);
	healthstr = ftos(healthint); 
	
	// get fullness of health
	health_full = healthint / 100;
	health_full = min(health_full, 1.0);
	
	DrawBar('10 380 0', 100, 10, health_full, '0.3 0.3 0.3', '1.0 0 0');
	drawstring ('12 384 0', healthstr, '8 8 0', '1 1 1', 1.0, 0);
	drawstring ('112 382 0', "x3", '6 6 0', '1 1 1', 1.0, 0);
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
	DrawHealth();
	DrawArmour();
	
	DrawPerks();
	
	DrawWeaponName();
	DrawAmmo();
	
	DrawTimer();
}

float CSQC_InputEvent (float event, float param, float param2)
{
    local string key, keybind;
   
	key = KeyMap(param);
	keybind = getkeybind(param);
   
    if (!event) { // key pressed down
	
	}

	return false;
}
