local mType = Game.createMonsterType("Mercurial Menace")
local monster = {}

monster.name = "Mercurial Menace"
monster.description = "a mercurial menace"
monster.experience = 14030 
monster.outfit = {
	lookType = 1561,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2279
monster.health = 16800
monster.maxHealth = 16800
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 190
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
	{text = "Shwooo...", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -600, range = 7, shootEffect = CONST_ANI_ENERGY, target = true},
	{name ="combat", interval = 2500, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -950, maxDamage = -1200, range = 5, radius = 5, effect = CONST_ME_PURPLESMOKE, target = false},
}

monster.defenses = {
	defense = 91,
	armor = 91
}

monster.loot = {
	{ name = "crystal coin", chance = 28571, maxCount = 2},
	{ name = "mercurial wing", chance = 15000},
	{ name = "terra rod", chance = 12000},
	{ name = "wand of defiance", chance = 12000},
	{ name = "terra boots", chance = 12000},
	{ name = "coral brooch", chance = 12000},
	{ name = "silver brooch", chance = 12000},
	{ name = "lightning boots", chance = 6000},
	{ name = "wand of cosmic energy", chance = 6000},
	{ name = "gemmed figurine", chance = 6000},
	{ name = "dream blossom staff", chance = 6000},
}

mType:register(monster)