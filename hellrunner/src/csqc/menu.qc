void DrawMenuBackground() {
	drawfill ('100 50 0', '420 240 0', '0 0 0', 0.8, 0);
}

void DrawMainMenu() {
	drawstring('110 60 0', "Welcome 2 perk shop", '12 12 0', '0.8 0.8 0', 1.0, 0);
	drawstring('110 74 0', "Press numbers on keyboard to navigate - B to exit", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	
	drawstring('110 90 0', "1. Perk 1 - Combat", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('110 100 0', "2. Perk 2 - Survivalism", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('110 110 0', "3. Perk 3 - Ability", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('110 120 0', "4. Exit", '8 8 0', '1 1 1', 1.0, 0);
}

void HandleMainMenu(string key) {
	if (key == "1") {
		menustate = MENU_PERK1;
	} else if (key == "2") {
		menustate = MENU_PERK2;
	} else if (key == "3") {
		menustate = MENU_PERK3;
	} else if (key == "4" || key == "5") {
		menustate = MENU_NONE;
	}
}

void DrawPerkOneMenu() {
	drawstring('110 60 0', "Perk 1", '12 12 0', '0.8 0.8 0', 1.0, 0);
	drawstring('110 74 0', "Damage increases, status inflictions, stuff", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	
	drawstring('110 90 0', "1. Determination", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 100 0', "When at low health, move fast and shoot fast", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 110 0', "2. Serial Killer", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 120 0', "Combo kills for higher damage (200% max)", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 130 0', "3. Express Delivery", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 140 0', "Faster projectiles, rockets bounce off enemies", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 150 0', "4. Long Barrel", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 160 0', "Tighter spread on shotguns", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 180 0', "5. Back", '8 8 0', '1 1 1', 1.0, 0);
}

void HandlePerkOneMenu(string key) {
	if (key == "1") {
		localcmd("impulse 16\n");
	} else if (key == "2") {
		localcmd("impulse 17\n");
	} else if (key == "3") {
		localcmd("impulse 18\n");
	} else if (key == "4") {
		localcmd("impulse 19\n");
	} else if (key == "5") {
		menustate = MENU_MAIN;
	}
}

void DrawPerkTwoMenu() {
	drawstring('110 60 0', "Perk 2", '12 12 0', '0.8 0.8 0', 1.0, 0);
	drawstring('110 74 0', "Perks to help manage resources", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	
	drawstring('110 90 0', "1. Vampirism", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 100 0', "Get a little health back for every slain foe", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 110 0', "2. Battle Medicine", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 120 0', "More health from healthkits, no overheal decay", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 130 0', "3. Finders Keepers", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 140 0', "Get more shells and nails from backpacks", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 150 0', "4. Budgeting", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 160 0', "Super Shotgun and Super Nailgun use less ammo", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 180 0', "5. Back", '8 8 0', '1 1 1', 1.0, 0);
}

void HandlePerkTwoMenu(string key) {
	if (key == "1") {
		localcmd("impulse 20\n");
	} else if (key == "2") {
		localcmd("impulse 21\n");
	} else if (key == "3") {
		localcmd("impulse 22\n");
	} else if (key == "4") {
		localcmd("impulse 23\n");
	} else if (key == "5") {
		menustate = MENU_MAIN;
	}
}

void DrawPerkThreeMenu() {
	drawstring('110 60 0', "Perk 3", '12 12 0', '0.8 0.8 0', 1.0, 0);
	drawstring('110 74 0', "New abilities", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	
	drawstring('110 90 0', "1. Artful Dodger", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 100 0', "Gain the ability to double jump", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 110 0', "2. Bloody Mess", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 120 0', "Higher chance to gib foes, small boost to dmg", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 130 0', "3. Light Feet", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 140 0', "Move a little faster, don't set off grenades", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 150 0', "4. Crazy Legs", '8 8 0', '1 1 1', 1.0, 0);
	drawstring('120 160 0', "More range, damage and knockback for kick", '8 8 0', '0.6 0.6 0.6', 1.0, 0);
	drawstring('110 180 0', "5. Back", '8 8 0', '1 1 1', 1.0, 0);
}

void HandlePerkThreeMenu(string key) {
	if (key == "1") {
		localcmd("impulse 24\n");
	} else if (key == "2") {
		localcmd("impulse 25\n");
	} else if (key == "3") {
		localcmd("impulse 26\n");
	} else if (key == "4") {
		localcmd("impulse 27\n");
	} else if (key == "5") {
		menustate = MENU_MAIN;
	}
}

void DrawMenu() {
	if (menustate > MENU_NONE) {
		DrawMenuBackground();
	}
	if (menustate == MENU_MAIN) {
		DrawMainMenu();
	} else if (menustate == MENU_PERK1) {
		DrawPerkOneMenu();
	} else if (menustate == MENU_PERK2) {
		DrawPerkTwoMenu();
	} else if (menustate == MENU_PERK3) {
		DrawPerkThreeMenu();
	}
}

void MenuHandleKey(string key) {
	if (menustate > MENU_NONE) {
		if (menustate == MENU_MAIN) {
			HandleMainMenu(key);
		} else if (menustate == MENU_PERK1) {
			HandlePerkOneMenu(key);
		} else if (menustate == MENU_PERK2) {
			HandlePerkTwoMenu(key);
		} else if (menustate == MENU_PERK3) {
			HandlePerkThreeMenu(key);
		}
	}
}