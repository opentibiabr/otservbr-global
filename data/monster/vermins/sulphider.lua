local mType = Game.createMonsterType("Sulphider")
local monster = {}

monster.name = "Sulphider"
monster.description = "a sulphider"
monster.experience = 15460
monster.outfit = {
	lookType = 1546,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2264
monster.health = 18900
monster.maxHealth = 18900
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39275
monster.speed = 215
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
	{text = "Tikkee...Takka...", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.attacks = {
}

monster.defenses = {
	defense = 83,
	armor = 83
}

monster.loot = {
	{ name="sulphur powder" , chance = 30853},
	{ name="sulphider shell" , chance = 23632},
	{ name="ultimate mana potion", chance = 14661},
	{ name="crystal coin" , chance = 13348, maxCount = 3},
	{ name="white pearl" , chance = 4376},
	{ name="fire axe" , chance = 2845},
	{ name="crown shield" , chance = 2188},
	{ name="amber staff" , chance = 1969},
	{ name="amulet of loss", chance = 1969},
	{ name="magma boots" , chance = 1313}
}

mType:register(monster)