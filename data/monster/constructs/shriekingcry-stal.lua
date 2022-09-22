local mType = Game.createMonsterType("Shrieking Cry-Stal")
local monster = {}

monster.description = "a shrieking cry-stal"
monster.experience = 15730 
monster.outfit = {
	lookType = 1560,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2278
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Crystal Enigma"
}

monster.health = 18700
monster.maxHealth = 18700
monster.race = "undead"
monster.corpse = 39331
monster.speed = 207
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}



monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "SCREEECH...", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
    {name ="combat", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500 } ,
	{name ="singleenergychain", interval = 6000, chance = 24, minDamage = -200, maxDamage = -800, range = 4, effect = CONST_ME_ENERGYHIT, target = true},
    {name ="combat", interval = 3000, chance = 39, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -800, length = 5, spread = 2, effect = CONST_ME_SOUND_PURPLE, target = false},
    {name ="combat", interval = 2000, chance = 28, type = COMBAT_ENERGYDAMAGE, minDamage = -950, maxDamage = -1200, range = 4, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
}

monster.defenses = {
	defense = 95,
	armor = 95
}

monster.loot = {
	{ name = "great spirit potion", chance = 33333},
	{ name = "cry-stal", chance = 31111},
	{ name = "crystal coin", chance = 22222, maxCount = 3},
	{ name = "violet gem", chance = 11111},
	{ name = "rusted armor", chance = 11111},
	{ name = "green crystal fragment", chance = 11111},
	{ name = "small diamond", chance = 11111, maxCount = 3},
	{ name = "terra boots", chance = 9510},
	{ name = "protection amulet", chance = 9510},
	{ name = "gold ring", chance = 5000},
	{ name = "green gem", chance = 5000},
}
mType:register(monster)