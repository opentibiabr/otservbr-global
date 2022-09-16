local mType = Game.createMonsterType("Gore Horn")
local monster = {}

monster.name = "Gore Horn"
monster.description = "a gore horn"
monster.experience = 14610 
monster.outfit = {
	lookType = 1548,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2266
monster.health = 18900
monster.maxHealth = 18900
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39283
monster.speed = 191
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
	{text = "Rraaaaa!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
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
	defense = 78,
	armor = 78
}

monster.loot = {
	{ name = "gore horn", chance = 36981},
	{ name = "crystal coin", chance = 31321},
	{ name = "big bone", chance = 6981},
	{ id = 3097, chance = 3585}, -- dwarven ring
	{ name = "metal spats", chance = 3019},
	{ name = "diamond sceptre", chance = 2642},
	{ name = "knight legs", chance = 1887},
	{ name = "hammer of wrath", chance = 943},
	{ name = "doublet", chance = 943}
}

mType:register(monster)