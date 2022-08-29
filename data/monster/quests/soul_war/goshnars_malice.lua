local mType = Game.createMonsterType("Goshnar's Malice")
local monster = {}

monster.description = "Goshnar's Malice"
monster.experience = 200000
monster.outfit = {
	lookType = 1306,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 300000
monster.maxHealth = 300000
monster.race = "undead"
monster.corpse = 33871
monster.speed = 300

monster.changeTarget = {
	interval = 2000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 4,
	summons = {
		{name = "dreadful harvester", chance = 40, interval = 1000, max = 2},
		{name = "malicious soul", chance = 30, interval = 1000, max = 2}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "GOSHNAR'S MALICE PREPARES TO DEVOUR A TRAPPED SOUL!", yell = true}
}

monster.loot = {
	{name = "crystal coin", chance = 55000, minCount = 70, maxCount = 75},
	{id = 281, chance = 1150}, -- giant shimmering pearl (green)
	{name = "giant sapphire", chance = 10000, maxCount = 1},
	{name = "giant topaz", chance = 10000, maxCount = 1},
	{name = "violet gem", chance = 6000, maxCount = 1},
	{name = "blue gem", chance = 10000, maxCount = 3},
	{id= 3039, chance = 10000, maxCount = 3}, -- red gem
	{name = "green gem", chance = 10000, maxCount = 3},
	{name = "yellow gem", chance = 10000, maxCount = 3},
	{name = "white gem", chance = 6000, maxCount = 3},
	{name = "dragon figurine", chance = 10000, maxCount = 1},
	{name = "bullseye potion", chance = 15000, minCount = 10, maxCount = 25},
	{name = "mastermind potion", chance = 15000, minCount = 10, maxCount = 25},
	{name = "berserk potion", chance = 15000, minCount = 10, maxCount = 25},
	{name = "ultimate mana potion", chance = 18000, minCount = 50, maxCount = 100},
	{name = "supreme health potion", chance = 18000, minCount = 50, maxCount = 100},
	{name = "ultimate spirit potion", chance = 18000, minCount = 50, maxCount = 100},
	{name = "malice's spine", chance = 2000, maxCount = 1},
	{name = "malice's horn", chance = 2000, maxCount = 1},
	{name = "bracelet of strengthening", chance = 400, unique = true},
	{name = "spectral horseshoe", chance = 400, unique = true},
	{name = "the skull of a beast", chance = 400, unique = true},
	{name = "figurine of malice", chance = 400, unique = true},
	{name = "bag you desire", chance = 100, unique = true},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_ICEDAMAGE, minDamage = -450, maxDamage = -1400, length = 10, spread = 4, effect = CONST_ME_ICEAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -1000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="speed", interval = 1000, chance = 20, speedChange = 100, effect = CONST_ME_MAGIC_RED, target = false, duration = 30000},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 350, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
