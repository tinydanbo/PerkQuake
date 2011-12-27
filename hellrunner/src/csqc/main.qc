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

void CSQC_UpdateView (float width, float height, float menushown) 
{
   // make a function to update any local resolution stuff and call it here.. We'd do this for resolution independent locations to render pictures or things. 

    clearscene(); 		// CSQC builtin to clear the scene of all entities / reset our view properties
   
	// update our view location for our camera such as a chase camera function here.. Lets do this by using some CSQC global definitions of our local player's simulated origin and our angles
	pmove_org_z += 18;
	
	setproperty(VF_ORIGIN, pmove_org); //pmove_org is a CSQC definition (global vector) of our simulated player location, it is filled in every frame 
	setproperty(VF_CL_VIEWANGLES, input_angles); // input_angles is a CSQC definition (global vector) of our angles as set by our mouse and stuff, we want our view angles to match this!
	
	
	setproperty(VF_DRAWWORLD, 1); 		// we want to draw our world!
	setproperty(VF_DRAWCROSSHAIR, 1);		 // we want to draw our crosshair!
	addentities(MASK_NORMAL | MASK_ENGINE | MASK_ENGINEVIEWMODELS); 		// add entities with these rendermask field var's to our view
	renderscene(); 		// render that puppy to our screen, 

  // render hud using builtins like drawstring, drawpic, and any of that fun stuff here!
}

float CSQC_InputEvent (float event, float param, float param2)
{
    local string key, keybind;
   
	key = KeyMap(param);
	keybind = getkeybind(param);
   
    if (!event) // key pressed down
	{

	}
	
	return false;
}