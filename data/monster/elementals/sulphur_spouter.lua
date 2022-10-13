local mType = Game.createMonsterType("Sulphur Spouter")
local monster = {}

monster.description = "a sulphur spouter"
monster.experience = 13360
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
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Monster Graveyard"
}
monster.health = 17100
monster.maxHealth = 17100
monster.race = "blood"
monster.corpse = 39279
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
	{text = "Gruugl...", yell = false}
}

monster.loot = {
	{ name = "sulphur powder", chance = 44954},
	{ name = "crystal coin", chance = 20183, maxCount = 2},
	{ name = "ultimate mana potion", chance = 11927, maxCount = 2},
	{ name = "slightly rusted legs", chance = 4587},
	{ name = "yellow gem", chance = 2752},
	{ name = "warrior's shield", chance = 2752},
	{ id = 281, chance = 2500}, -- giant shimmering pearl (green)
    { id = 282, chance = 2294}, -- giant shimmering pearl
	{ name = "knight legs", chance = 1835},
	{ name = "fire sword", chance = 1376},
	{ name = "crystal crossbow", chance = 917},
	{ id = 3039, chance = 459}, -- red gem
    { id = 23533, chance = 459} -- ring of red plasma
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -720},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1500, length = 4, spread = 2, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 3000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1500, radius = 4, effect = CONST_ME_YELLOW_RINGS, target = false},

}

monster.defenses = {
	defense = 84,
	armor = 84
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

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}
mType:register(monster)