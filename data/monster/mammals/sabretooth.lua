local mType = Game.createMonsterType("Sabretooth")
local monster = {}

monster.name = "Sabretooth"
monster.description = "a sabretooth"
monster.experience = 13840
monster.outfit = {
	lookType = 1549,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2267
monster.health = 15940
monster.maxHealth = 15940
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39287
monster.speed = 225 
monster.summonCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = false,
	boss = false,
	ignoreSpawnBlock = false,
	pushable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	healthHidden = false,
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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
}

monster.defenses = {
	defense = 63,
	armor = 63
}

monster.loot = {
	{ name = "crystal coin", chance = 23964, maxCount = 2},
	{ name = "sabretooth fur", chance = 22342},
	{ name = "elven amulet", chance = 5225},
	{ name = "dragon necklace", chance = 4505},
	{ name = "wand of inferno", chance = 4324},
	{ name = "fire sword", chance = 3243},
	{ name = "sacred tree amulet", chance = 2703},
	{ name = "wand of dragonbreath", chance = 2342},
	{ name = "magma coat", chance = 2162},
	{ name = "metal spats", chance = 1982}
}

mType:register(monster)
