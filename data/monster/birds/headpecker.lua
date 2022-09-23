local mType = Game.createMonsterType("Headpecker")
local monster = {}

monster.description = "a headpecker"
monster.experience = 13950
monster.outfit = {
	lookType = 1557,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2275
monster.Bestiary = {
	class = "Bird",
	race = BESTY_RACE_BIRD,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Crystal Enigma"
}

monster.health = 14700
monster.maxHealth = 14700
monster.race = "blood"
monster.corpse = 39319
monster.speed = 217
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
}

monster.loot = {
	{ name= "crystal coin", chance = 42857, maxCount = 1},
	{ name= "headpecker feather", chance = 15000},
	{ name= "headpecker beak", chance = 14286},
	{ name= "wand of starstorm", chance = 7500},
	{ name= "gold ingot", chance = 7500},
	{ name= "furry club", chance = 7143},
	{ id= 3595 , chance = 7143, maxCount = 7}, -- carrot
	{ name= "blue gem", chance = 2500},
	{ name= "spike sword", chance = 2500},
	{ name= "war hammer", chance = 2500},
	{ name= "knife", chance = 2500},
	{ name= "titan axe", chance = 2500}
}

monster.attacks = {
    {name ="combat", interval = 2000, chance = 100, minDamage = -250, maxDamage = -600 } ,
    {name ="headpeckerslash", interval = 4000, chance = 25, target = false, minDamage = -500, maxDamage = -1000},
    {name ="combat", interval = 3500, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -950, maxDamage = -1500, range = 1, radius = 3, effect = CONST_ME_POISONAREA, target = false},
}

monster.defenses = {
	defense = 68,
	armor = 68
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
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

