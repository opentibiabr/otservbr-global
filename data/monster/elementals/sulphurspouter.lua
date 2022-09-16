local mType = Game.createMonsterType("Sulphur Spouter")
local monster = {}

monster.name = "Sulphur Spouter"
monster.description = "a sulphur spouter"
monster.experience = 11517
monster.outfit = {
	lookType = 1547,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2265
monster.health = 17100
monster.maxHealth = 17100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39279
monster.speed = 180
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
	{text = "Gruugl...", yell = false}
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
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.loot = {
	{ name = "sulphur powder", chance = 44954},
	{ name = "crystal coin", chance = 20183, maxCount = 2},
	{ name = "ultimate mana potion", chance = 11927, maxCount = 2},
	{ name = "slightly rusted legs", chance = 4587},
	{ name = "yellow gem", chance = 2752},
	{ name = "warrior's shield", chance = 2752},
	{ name = "giant shimmering pearl (green)", chance = 2500},
    { name = "giant shimmering pearl", chance = 2294},
	{ name = "knight legs", chance = 1835},
	{ name = "fire sword", chance = 1376},
	{ name = "crystal crossbow", chance = 917},
	{ name = "red gem", chance = 459},
    { name = "ring of red plasma", chance = 459}
}

mType:register(monster)