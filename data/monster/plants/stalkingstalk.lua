local mType = Game.createMonsterType("Stalking Stalk")
local monster = {}

monster.name = "Stalking Stalk"
monster.description = "a stalking stalk"
monster.experience = 11569
monster.outfit = {
	lookType = 1554,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2272
monster.health = 15600
monster.maxHealth = 15600
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 380
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
	targetDistance = 4,
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
	{text = "Sizzzle...", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -25},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
}

monster.defenses = {
	defense = 76,
	armor = 76
}

monster.loot = {
	{ name = "crystal coin", chance = 19196, maxCount = 3},
	{ name = "stalking seeds", chance = 16071},
	{ name = "small diamond", chance = 4911, maxCount = 2},
	{ name = "dragon necklace", chance = 4018},
	{ name = "green crystal fragment", chance = 4018},
	{ name = "opal", chance = 3571, maxCount = 2},
	{ name = "magma coat", chance = 2679},
	{ name = "warrior's axe", chance = 2679},
	{ name = "green gem", chance = 1339},
	{ name = "bow", chance = 893},
	{ name = "muck rod", chance = 446}
}

mType:register(monster)

