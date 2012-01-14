void(entity attacker, entity victim) DoVampirism =
{
	if (attacker.health >= 100) {
		// Don't even bother
	} else {
		if (victim.classname == "monster_army")
			attacker.health += 1;
		if (victim.classname == "monster_demon1") // fiend
			attacker.health += 5;
		if (victim.classname == "monster_dog")
			attacker.health += 1;
		if (victim.classname == "monster_dragon")
			attacker.health += 20;
		if (victim.classname == "monster_enforcer")
			attacker.health += 2;
		if (victim.classname == "monster_fish")
			attacker.health += 1;
		if (victim.classname == "monster_hell_knight")
			attacker.health += 5;
		if (victim.classname == "monster_knight")
			attacker.health += 2;
		if (victim.classname == "monster_ogre")
			attacker.health += 2;
		if (victim.classname == "monster_oldone")
			attacker.health += 20;
		if (victim.classname == "monster_shalrath") // vore
			attacker.health += 10;
		if (victim.classname == "monster_shambler")
			attacker.health += 10;
		if (victim.classname == "monster_tarbaby")
			attacker.health += 5;
		if (victim.classname == "monster_vomit") // not in game
			attacker.health += 2;
		if (victim.classname == "monster_wizard") // scrag
			attacker.health += 3;
		if (victim.classname == "monster_zombie")
			attacker.health += 1;
	}
}

float(float time, float originaldelay) GetDeterminationAttackFinished =
{
	return time + (originaldelay * 0.6);
}