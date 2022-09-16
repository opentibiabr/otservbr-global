local mType = Game.createMonsterType("Emerald Tortoise")
local monster = {}

monster.name = "Emerald Tortoise"
monster.description = "an emerald tortoise"
monster.experience = 12129
monster.outfit = {
	lookType = 1550,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2268
monster.health = 21040
monster.maxHealth = 21040
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39291
monster.speed = 179
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
	{text = "Shllpp...", yell = false}
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
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
}

monster.defenses = {
	defense = 97,
	armor = 97
}

monster.loot = {
	{ name = "emerald tortoise shell", chance = 27098},
	{ name = "crystal coin", chance = 14510, maxCount = 3},
	{ name = "great spirit potion", chance = 12063, maxCount = 2},
	{ name = "yellow gem", chance = 4196},
	{ name = "violet gem", chance = 3846},
	{ id = 3039, chance = 459}, -- red gem
	{ name = "white pearl", chance = 3671},
	{ name = "red crystal fragment", chance = 3147},
	{ name = "green crystal fragment", chance = 2797},
	{ name = "orichalcum pearl", chance = 2797, maxCount = 2},
	{ name = "black pearl", chance = 2448, maxCount = 2},
	{ name = "blue crystal shard", chance = 2448},
	{ name = "green gem", chance = 2273},
	{ name = "green crystal shard", chance = 2098},
	{ id = 281, chance = 2098} -- giant shimmering pearl
}

mType:register(monster)

