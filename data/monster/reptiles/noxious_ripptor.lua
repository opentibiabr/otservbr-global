local mType = Game.createMonsterType("Noxious Ripptor")
local monster = {}

monster.description = "a noxious ripptor"
monster.experience = 15300 
monster.outfit = {
	lookType = 1558,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2276
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Crystal Enigma"
}
monster.health = 21500
monster.maxHealth = 21500
monster.race = "blood"
monster.corpse = 39323
monster.speed = 180 
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
	{text = "Krccchht!", yell = false}
}

monster.loot = {
	{ name = "crystal coin", chance = 26316, maxCount = 2},
	{ name = "ultimate health potion", chance = 21053, maxCount = 2},
	{ name = "ripptor claw", chance = 15789, maxCount = 2},
	{ name = "ripptor scales", chance = 10526},
	{ name = "muck rod", chance = 9510},
	{ name = "serpent sword", chance = 9510},
	{ name = "sacred tree amulet", chance = 5263},
	{ name = "terra legs", chance = 2000},
	{ name = "wooden spellbook", chance = 2000},
}

monster.attacks = {
    {name ="combat", interval = 2000, chance = 100, minDamage = -300, maxDamage = -1100 } ,
    {name ="speed", interval = 2000, chance = 15, speedChange = -700, target = true, range = 1, shootEffect = CONST_ANI_ENERGYBALL, duration = 13000},
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)

