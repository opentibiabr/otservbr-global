local internalNpcName = "Hireling"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 136,
	lookHead = 97,
	lookBody = 34,
	lookLegs = 3,
	lookFeet = 116,
	lookAddons = 0
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.shop = {
	-- Various
	{itemName = "amphora", clientId = 2023, buy = 4},
	{itemName = "armor rack kit", clientId = 6114, buy = 90},
	{itemName = "bamboo drawer kit", clientId = 3921, buy = 20},
	{itemName = "bamboo table kit", clientId = 3914, buy = 25},
	{itemName = "barrel kit", clientId = 3919, buy = 12},
	{itemName = "big table kit", clientId = 3911, buy = 30},
	{itemName = "birdcage kit", clientId = 3922, buy = 50},
	{itemName = "blue bed kit", clientId = 7907, buy = 80},
	{itemName = "blue pillow", clientId = 1686, buy = 25},
	{itemName = "blue tapestry", clientId = 1872, buy = 25},
	{itemName = "bookcase kit", clientId = 6373, buy = 70},
	{itemName = "box", clientId = 1738, buy = 10},
	{itemName = "canopy bed kit", clientId = 20252, buy = 200},
	{itemName = "chest", clientId = 1740, buy = 10},
	{itemName = "chest of drawers", clientId = 3915, buy = 18},
	{itemName = "chimney kit", clientId = 8692, buy = 200},
	{itemName = "coal basin kit", clientId = 3932, buy = 25},
	{itemName = "cookie", clientId = 2687, buy = 2},
	{itemName = "crate", clientId = 1739, buy = 10},
	{itemName = "cuckoo clock", clientId = 1877, buy = 40},
	{itemName = "dresser kit", clientId = 3916, buy = 25},
	{itemName = "goldfish bowl", clientId = 5928, buy = 50},
	{itemName = "exercise axe", clientId = 32385, buy = 262500, subType = 500},
	{itemName = "exercise bow", clientId = 32387, buy = 262500, subType = 500},
	{itemName = "exercise club", clientId = 32386, buy = 262500, subType = 500},
	{itemName = "exercise rod", clientId = 32388, buy = 262500, subType = 500},
	{itemName = "exercise sword", clientId = 32384, buy = 262500, subType = 500},
	{itemName = "exercise wand", clientId = 32389, buy = 262500, subType = 500},
	{itemName = "fireworks rocket", clientId = 6576, buy = 100},
	{itemName = "flower bowl", clientId = 2102, buy = 6},
	{itemName = "globe", clientId = 3923, buy = 50},
	{itemName = "goblin statue kit", clientId = 3930, buy = 50},
	{itemName = "god flowers", clientId = 2100, buy = 5},
	{itemName = "green balloons", clientId = 6577, buy = 500},
	{itemName = "green bed kit", clientId = 7904, buy = 80},
	{itemName = "green cushioned chair kit", clientId = 3902, buy = 40},
	{itemName = "green pillow", clientId = 1688, buy = 25},
	{itemName = "green tapestry", clientId = 1860, buy = 25},
	{itemName = "harp kit", clientId = 3934, buy = 50},
	{itemName = "heart pillow", clientId = 1685, buy = 30},
	{itemName = "honey flower", clientId = 2103, buy = 5},
	{itemName = "indoor plant kit", clientId = 3937, buy = 8},
	{itemName = "ivory chair kit", clientId = 3907, buy = 25},
	{itemName = "knight statue kit", clientId = 3928, buy = 50},
	{itemName = "large amphora kit", clientId = 3931, buy = 50},
	{itemName = "large trunk", clientId = 3920, buy = 10},
	{itemName = "locker kit", clientId = 3917, buy = 30},
	{itemName = "minotaur statue kit", clientId = 3929, buy = 50},
	{itemName = "orange tapestry", clientId = 1866, buy = 25},
	{itemName = "oven kit", clientId = 6372, buy = 80},
	{itemName = "party hat", clientId = 6578, buy = 800},
	{itemName = "party trumpet", clientId = 6572, buy = 500},
	{itemName = "pendulum clock kit", clientId = 3927, buy = 75},
	{itemName = "piano kit", clientId = 3933, buy = 200},
	{itemName = "potted flower", clientId = 2104, buy = 5},
	{itemName = "present", clientId = 1990, buy = 10},
	{itemName = "purple tapestry", clientId = 1857, buy = 25},
	{itemName = "red balloons", clientId = 6575, buy = 500},
	{itemName = "red bed kit", clientId = 7906, buy = 80},
	{itemName = "red cushioned chair kit", clientId = 3901, buy = 40},
	{itemName = "red pillow", clientId = 1687, buy = 25},
	{itemName = "red tapestry", clientId = 1869, buy = 25},
	{itemName = "rocking horse", clientId = 3926, buy = 30},
	{itemName = "round blue pillow", clientId = 1690, buy = 25},
	{itemName = "round purple pillow", clientId = 1692, buy = 25},
	{itemName = "round red pillow", clientId = 1691, buy = 25},
	{itemName = "round turquoise pillow", clientId = 1693, buy = 25},
	{itemName = "small blue pillow", clientId = 1681, buy = 20},
	{itemName = "small green pillow", clientId = 1679, buy = 20},
	{itemName = "small ice statue", clientId = 7447, buy = 50},
	{itemName = "small ice statue", clientId = 7448, buy = 50},
	{itemName = "small orange pillow", clientId = 1682, buy = 20},
	{itemName = "small purple pillow", clientId = 1678, buy = 20},
	{itemName = "small red pillow", clientId = 1680, buy = 20},
	{itemName = "small round table", clientId = 14328, buy = 25},
	{itemName = "small table kit", clientId = 3908, buy = 20},
	{itemName = "small trunk", clientId = 3821, buy = 20},
	{itemName = "small turquoise pillow", clientId = 1683, buy = 20},
	{itemName = "small white pillow", clientId = 1684, buy = 20},
	{itemName = "sofa chair kit", clientId = 3905, buy = 55},
	{itemName = "square table kit", clientId = 14329, buy = 25},
	{itemName = "stone table kit", clientId = 3912, buy = 30},
	{itemName = "table lamp kit", clientId = 3924, buy = 35},
	{itemName = "telescope kit", clientId = 3925, buy = 70},
	{itemName = "thick trunk", clientId = 3811, buy = 20},
	{itemName = "treasure chest", clientId = 1746, buy = 1000},
	{itemName = "trophy stand", clientId = 7936, buy = 50},
	{itemName = "trough kit", clientId = 3918, buy = 7},
	{itemName = "tusk chair kit", clientId = 3906, buy = 25},
	{itemName = "tusk table kit", clientId = 3913, buy = 25},
	{itemName = "vase", clientId = 2008, buy = 3},
	{itemName = "venorean cabinet", clientId = 20254, buy = 90},
	{itemName = "venorean drawer", clientId = 20257, buy = 40},
	{itemName = "venorean wardrobe", clientId = 20255, buy = 50},
	{itemName = "wall mirror", clientId = 1851, buy = 40},
	{itemName = "wall mirror", clientId = 1848, buy = 40},
	{itemName = "wall mirror", clientId = 1845, buy = 40},
	{itemName = "water pipe", clientId = 2099, buy = 40},
	{itemName = "weapon rack kit", clientId = 6115, buy = 90},
	{itemName = "white tapestry", clientId = 1880, buy = 25},
	{itemName = "wooden chair kit", clientId = 3903, buy = 15},
	{itemName = "yellow bed kit", clientId = 7905, buy = 80},
	{itemName = "yellow pillow", clientId = 1689, buy = 25},
	{itemName = "yellow tapestry", clientId = 1863, buy = 25},
	-- Equipment
	{itemName = "axe", clientId = 2386, buy = 20, sell = 7},
	{itemName = "battle axe", clientId = 2378, buy = 235, sell = 80},
	{itemName = "battle hammer", clientId = 2417, buy = 350, sell = 120},
	{itemName = "bone sword", clientId = 2450, buy = 75, sell = 20},
	{itemName = "brass armor", clientId = 2465, buy = 450, sell = 150},
	{itemName = "brass helmet", clientId = 2460, buy = 120, sell = 30},
	{itemName = "brass legs", clientId = 2478, buy = 195, sell = 49},
	{itemName = "brass shield", clientId = 2511, buy = 65, sell = 25},
	{itemName = "carlin sword", clientId = 2395, buy = 473, sell = 118},
	{itemName = "chain armor", clientId = 2464, buy = 200, sell = 70},
	{itemName = "chain helmet", clientId = 2458, buy = 52, sell = 17},
	{itemName = "chain legs", clientId = 2648, buy = 80, sell = 25},
	{itemName = "club", clientId = 2382, buy = 5, sell = 1},
	{itemName = "coat", clientId = 2651, buy = 8, sell = 1},
	{itemName = "crowbar", clientId = 2416, buy = 260, sell = 50},
	{itemName = "dagger", clientId = 2379, buy = 5, sell = 2},
	{itemName = "doublet", clientId = 2485, buy = 16, sell = 3},
	{itemName = "dwarven shield", clientId = 2525, buy = 500, sell = 100},
	{itemName = "exercise axe", clientId = 32385, buy = 262500, sell = 500, subType = 500},
	{itemName = "exercise bow", clientId = 32387, buy = 262500, sell = 500, subType = 500},
	{itemName = "exercise club", clientId = 32386, buy = 262500, sell = 500, subType = 500},
	{itemName = "exercise sword", clientId = 32384, buy = 262500, sell = 500, subType = 500},
	{itemName = "hand axe", clientId = 2380, buy = 8, sell = 4},
	{itemName = "iron helmet", clientId = 2459, buy = 390, sell = 150},
	{itemName = "jacket", clientId = 2650, buy = 12, sell = 1},
	{itemName = "leather armor", clientId = 2467, buy = 35, sell = 12},
	{itemName = "leather boots", clientId = 2643, buy = 10, sell = 2},
	{itemName = "leather helmet", clientId = 2461, buy = 12, sell = 4},
	{itemName = "leather legs", clientId = 2649, buy = 10, sell = 9},
	{itemName = "longsword", clientId = 2397, buy = 160, sell = 51},
	{itemName = "mace", clientId = 2398, buy = 90, sell = 30},
	{itemName = "morning star", clientId = 2394, buy = 430, sell = 100},
	{itemName = "plate armor", clientId = 2463, buy = 1200, sell = 400},
	{itemName = "plate shield", clientId = 2510, buy = 125, sell = 45},
	{itemName = "rapier", clientId = 2384, buy = 15, sell = 5},
	{itemName = "sabre", clientId = 2385, buy = 35, sell = 12},
	{itemName = "scale armor", clientId = 2483, buy = 260, sell = 75},
	{itemName = "short sword", clientId = 2406, buy = 26, sell = 10},
	{itemName = "sickle", clientId = 2405, buy = 7, sell = 3},
	{itemName = "soldier helmet", clientId = 2481, buy = 110, sell = 16},
	{itemName = "spike sword", clientId = 2383, buy = 8000, sell = 240},
	{itemName = "steel helmet", clientId = 2457, buy = 580, sell = 293},
	{itemName = "steel shield", clientId = 2509, buy = 240, sell = 80},
	{itemName = "studded armor", clientId = 2484, buy = 90, sell = 25},
	{itemName = "studded helmet", clientId = 2482, buy = 63, sell = 20},
	{itemName = "studded legs", clientId = 2468, buy = 50, sell = 15},
	{itemName = "studded shield", clientId = 2526, buy = 50, sell = 16},
	{itemName = "sword", clientId = 2376, buy = 85, sell = 25},
	{itemName = "throwing knife", clientId = 2410, buy = 25, sell = 2},
	{itemName = "two handed sword", clientId = 2377, buy = 950, sell = 450},
	{itemName = "viking helmet", clientId = 2473, buy = 265, sell = 66},
	{itemName = "viking shield", clientId = 2531, buy = 260, sell = 85},
	{itemName = "war hammer", clientId = 2391, buy = 10000, sell = 470},
	{itemName = "wooden shield", clientId = 2512, buy = 15, sell = 5},
	-- Distance
	{itemName = "arrow", clientId = 2544, buy = 2},
	{itemName = "blue quiver", clientId = 40683, buy = 400},
	{itemName = "bolt", clientId = 2580, buy = 4},
	{itemName = "bow", clientId = 2456, buy = 400, sell = 100},
	{itemName = "crossbow", clientId = 2455, buy = 500, sell = 120},
	{itemName = "crystalline arrow", clientId = 18304, buy = 20},
	{itemName = "drill bolt", clientId = 18436, buy = 12},
	{itemName = "diamond arrow", clientId = 40736, buy = 100},
	{itemName = "earth arrow", clientId = 7850, buy = 5},
	{itemName = "envenomed arrow", clientId = 18437, buy = 12},
	{itemName = "flaming arrow", clientId = 7840, buy = 5},
	{itemName = "flash arrow", clientId = 7838, buy = 5},
	{itemName = "onyx arrow", clientId = 7365, buy = 7},
	{itemName = "piercing bolt", clientId = 7363, buy = 5},
	{itemName = "power bolt", clientId = 2547, buy = 7},
	{itemName = "prismatic bolt", clientId = 18435, buy = 20},
	{itemName = "quiver", clientId = 40397, buy = 400},
	{itemName = "red quiver", clientId = 40684, buy = 400},
	{itemName = "royal spear", clientId = 7378, buy = 15},
	{itemName = "shiver arrow", clientId = 7839, buy = 5},
	{itemName = "sniper arrow", clientId = 7364, buy = 5},
	{itemName = "spear", clientId = 2389, buy = 9, sell = 3},
	{itemName = "spectral bolt", clientId = 40737, buy = 70},
	{itemName = "tarsal arrow", clientId = 15648, buy = 6},
	{itemName = "throwing star", clientId = 2399, buy = 42},
	{itemName = "vortex bolt", clientId = 15649, buy = 6},
	-- Wands
	{itemName = "exercise rod", clientId = 32388, buy = 262500, subType = 500},
	{itemName = "exercise wand", clientId = 32389, buy = 262500, subType = 500},
	{itemName = "hailstorm rod", clientId = 2183, buy = 15000},
	{itemName = "moonlight rod", clientId = 2186, buy = 1000},
	{itemName = "necrotic rod", clientId = 2185, buy = 5000},
	{itemName = "northwind rod", clientId = 8911, buy = 7500},
	{itemName = "snakebite rod", clientId = 2182, buy = 500},
	{itemName = "spellwand", clientId = 651, sell = 299},
	{itemName = "springsprout rod", clientId = 8912, buy = 18000},
	{itemName = "terra rod", clientId = 2181, buy = 10000},
	{itemName = "underworld rod", clientId = 8910, buy = 22000},
	{itemName = "wand of cosmic energy", clientId = 2189, buy = 10000},
	{itemName = "wand of decay", clientId = 2188, buy = 5000},
	{itemName = "wand of draconia", clientId = 8921, buy = 7500},
	{itemName = "wand of dragonbreath", clientId = 2191, buy = 1000},
	{itemName = "wand of inferno", clientId = 2187, buy = 15000},
	{itemName = "wand of starstorm", clientId = 8920, buy = 18000},
	{itemName = "wand of voodoo", clientId = 8922, buy = 22000},
	{itemName = "wand of vortex", clientId = 2190, buy = 500},
	-- Rods
	{itemName = "exercise rod", clientId = 32388, buy = 262500, subType = 500},
	{itemName = "exercise wand", clientId = 32389, buy = 262500, subType = 500},
	{itemName = "hailstorm rod", clientId = 2183, buy = 15000},
	{itemName = "moonlight rod", clientId = 2186, buy = 1000},
	{itemName = "necrotic rod", clientId = 2185, buy = 5000},
	{itemName = "northwind rod", clientId = 8911, buy = 7500},
	{itemName = "snakebite rod", clientId = 2182, buy = 500},
	{itemName = "springsprout rod", clientId = 8912, buy = 18000},
	{itemName = "terra rod", clientId = 2181, buy = 10000},
	{itemName = "underworld rod", clientId = 8910, buy = 22000},
	{itemName = "wand of cosmic energy", clientId = 2189, buy = 10000},
	{itemName = "wand of decay", clientId = 2188, buy = 5000},
	{itemName = "wand of draconia", clientId = 8921, buy = 7500},
	{itemName = "wand of dragonbreath", clientId = 2191, buy = 1000},
	{itemName = "wand of inferno", clientId = 2187, buy = 15000},
	{itemName = "wand of starstorm", clientId = 8920, buy = 18000},
	{itemName = "wand of voodoo", clientId = 8922, buy = 22000},
	{itemName = "wand of vortex", clientId = 2190, buy = 500},
	-- Potions
	{itemName = "great health potion", clientId = 7591, buy = 225},
	{itemName = "great mana potion", clientId = 7590, buy = 144},
	{itemName = "great spirit potion", clientId = 8472, buy = 228},
	{itemName = "health potion", clientId = 7618, buy = 50},
	{itemName = "mana potion", clientId = 7620, buy = 56},
	{itemName = "strong health potion", clientId = 7588, buy = 115},
	{itemName = "strong mana potion", clientId = 7589, buy = 93},
	{itemName = "supreme health potion", clientId = 26031, buy = 625},
	{itemName = "ultimate health potion", clientId = 8473, buy = 379},
	{itemName = "ultimate mana potion", clientId = 26029, buy = 438},
	{itemName = "ultimate spirit potion", clientId = 26030, buy = 438},
	{itemName = "empty potion flask", clientId = 283, sell = 5},
	{itemName = "empty potion flask", clientId = 284, sell = 5},
	{itemName = "empty potion flask", clientId = 285, sell = 5},
	{itemName = "vial", clientId = 375, sell = 5},
	-- Runes
	{itemName = "animate dead rune", clientId = 2316, buy = 375},
	{itemName = "avalanche rune", clientId = 2274, buy = 57},
	{itemName = "blank rune", clientId = 2260, buy = 10},
	{itemName = "chameleon rune", clientId = 2291, buy = 210},
	{itemName = "convince creature rune", clientId = 2290, buy = 80},
	{itemName = "cure poison rune", clientId = 2266, buy = 65},
	{itemName = "destroy field rune", clientId = 2261, buy = 15},
	{itemName = "disintegrate rune", clientId = 2310, buy = 26},
	{itemName = "energy bomb rune", clientId = 2262, buy = 203},
	{itemName = "energy field rune", clientId = 2277, buy = 38},
	{itemName = "energy wall rune", clientId = 2279, buy = 85},
	{itemName = "explosion rune", clientId = 2313, buy = 31},
	{itemName = "fire bomb rune", clientId = 2305, buy = 147},
	{itemName = "fire field rune", clientId = 2301, buy = 28},
	{itemName = "fire wall rune", clientId = 2303, buy = 61},
	{itemName = "fireball rune", clientId = 2302, buy = 30},
	{itemName = "great fireball rune", clientId = 2304, buy = 57},
	{itemName = "heavy magic missile rune", clientId = 2311, buy = 12},
	{itemName = "holy missile rune", clientId = 2295, buy = 16},
	{itemName = "icicle rune", clientId = 2271, buy = 30},
	{itemName = "intense healing rune", clientId = 2265, buy = 95},
	{itemName = "light magic missile rune", clientId = 2287, buy = 4},
	{itemName = "magic wall rune", clientId = 2293, buy = 116},
	{itemName = "paralyse rune", clientId = 2278, buy = 700},
	{itemName = "poison bomb rune", clientId = 2286, buy = 85},
	{itemName = "poison field rune", clientId = 2285, buy = 21},
	{itemName = "poison wall rune", clientId = 2289, buy = 52},
	{itemName = "soulfire rune", clientId = 2308, buy = 46},
	{itemName = "stalagmite rune", clientId = 2292, buy = 12},
	{itemName = "stone shower rune", clientId = 2288, buy = 37},
	{itemName = "sudden death rune", clientId = 2268, buy = 135},
	{itemName = "thunderstorm rune", clientId = 2315, buy = 47},
	{itemName = "ultimate healing rune", clientId = 2273, buy = 175},
	{itemName = "wild growth rune", clientId = 2269, buy = 160},
	-- Supplies
	{itemName = "brown mushroom", clientId = 2789, buy = 10},
	{itemName = "ham", clientId = 2671, buy = 10},
	{itemName = "meat", clientId = 2666, buy = 5},
	-- Tools
	{itemName = "basket", clientId = 1989, buy = 6},
	{itemName = "bottle", clientId = 2007, buy = 3},
	{itemName = "bucket", clientId = 2005, buy = 4},
	{itemName = "candelabrum", clientId = 2041, buy = 8},
	{itemName = "candlestick", clientId = 2047, buy = 2},
	{itemName = "closed trap", clientId = 2578, buy = 280, sell = 75},
	{itemName = "crowbar", clientId = 2416, buy = 260, sell = 50},
	{itemName = "fishing rod", clientId = 2580, buy = 150, sell = 40},
	{itemName = "machete", clientId = 2420, buy = 35, sell = 6},
	{itemName = "pick", clientId = 2553, buy = 50, sell = 15},
	{itemName = "rope", clientId = 2120, buy = 50, sell = 15},
	{itemName = "scythe", clientId = 2550, buy = 50, sell = 10},
	{itemName = "shovel", clientId = 2554, buy = 50, sell = 8},
	{itemName = "spellwand", clientId = 651, sell = 299},
	{itemName = "torch", clientId = 2050, buy = 2},
	{itemName = "watch", clientId = 2036, buy = 20, sell = 6},
	{itemName = "worm", clientId = 3976, buy = 1},
	-- Postal
	{itemName = "label", clientId = 2599, buy = 1},
	{itemName = "letter", clientId = 2597, buy = 8},
	{itemName = "parcel", clientId = 2595, buy = 15}
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	npc:talk(player, string.format("You've bought %i %s for %i gold coins.", amount, name, totalCost))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, amount, name, totalCost)
	npc:talk(player, string.format("You've sold %i %s for %i gold coins.", amount, name, totalCost))
end

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local hireling = nil
local count = {} -- for banking
local transfer = {} -- for banking

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)

	if not hireling then
		local creature = Creature(creature)
		local position = creature:getPosition()

		hireling = getHirelingByPosition(position)
		hireling:setCreature(creature)
	end
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

local TOPIC = {
	NONE = 1000,
	LAMP = 1001,
	SERVICES = 1100,
	BANK = 1200,
	FOOD = 1300,
	GOODS = 1400
}

local TOPIC_FOOD = {
	SKILL_CHOOSE = 1301
}

local TOPIC_GOODS = {
	VARIOUS = 1401,
	EQUIPMENT = 1402,
	DISTANCE = 1403,
	WANDS = 1404,
	RODS = 1405,
	POTIONS = 1406,
	RUNES = 1407,
	SUPPLIES = 1408,
	TOOLS = 1409,
	POSTAL = 1410
}

local GREETINGS = {
	BANK = "Alright! What can I do for you and your bank business, |PLAYERNAME|?",
	FOOD = "Hmm, yes! A variety of fine food awaits! However, a small expense of 15000 gold is expected to make these delicious masterpieces happen. Shall I?",
	STASH = "Of course, here is your stash! Well-maintained and neatly sorted for your convenience!"
}

local function getHirelingSkills()

	local skills = {}
	if hireling:hasSkill(HIRELING_SKILLS.BANKER) then
		table.insert(skills,HIRELING_SKILLS.BANKER)
	end
	if hireling:hasSkill(HIRELING_SKILLS.COOKING) then
		table.insert(skills,HIRELING_SKILLS.COOKING)
	end
	if hireling:hasSkill(HIRELING_SKILLS.STEWARD) then
		table.insert(skills,HIRELING_SKILLS.STEWARD)
	end
	-- ignoring trader skills as it shows the same message about {goods}
	return skills
end

local function getHirelingServiceString(creature)
	local skills = getHirelingSkills()
	local str = "Do you want to see my {goods}"

	for i=1,#skills do
		if i == #skills then
			str = str .. ' or '
		else
			str = str .. ', '
		end

		if skills[i]== HIRELING_SKILLS.BANKER then
			str = str .. 'to access your {bank} account' -- TODO: this setence is not official
		elseif skills[i]== HIRELING_SKILLS.COOKING then
			str = str .. 'to order {food}'
		elseif skills[i]== HIRELING_SKILLS.STEWARD then
			str = str .. 'to open your {stash}'
		end
	end
	str = str .. "?"

	local player = Player(creature)
	if player:getGuid() == hireling:getOwnerId() then
		str = str .. " If you want, I can go back to my {lamp} or maybe change my {outfit}."
	end
	return str
end

local function getTopic(creature)
	playerId = creature:getId()
	return npcHandler:getTopic(playerId) and npcHandler:getTopic(playerId) > 0 and npcHandler:getTopic(playerId) or TOPIC.SERVICES
end

local function sendSkillNotLearned(creature, SKILL)
	local message = "Sorry, but I do not have mastery in this skill yet."
	local profession
	if SKILL == HIRELING_SKILLS.BANKER then
		profession = "banker"
	elseif SKILL == HIRELING_SKILLS.COOKING then
		profession = "cooker"
	elseif SKILL == HIRELING_SKILLS.STEWARD then
		profession = "steward"
	elseif SKILL == HIRELING_SKILLS.TRADER then
		profession = "trader"
	end

	if profession then
		message = string.format("I'm not a %s and would not know how to help you with that, sorry. I can start a %s apprenticeship if you buy it for me in the store!", profession, profession)
	end

	npcHandler:say(message, npc, creature)
end
-- ----------------------[[ END STEWARD FUNCTIONS ]] ------------------------------
--[[
############################################################################
############################################################################
############################################################################
]]
-- ----------------------[[ BANKING FUNCTIONS ]] ------------------------------
-------------------------------- guild bank -----------------------------------------------
local receiptFormat = 'Date: %s\nType: %s\nGold Amount: %d\nReceipt Owner: %s\nRecipient: %s\n\n%s'
local function getReceipt(info)
	local receipt = Game.createItem(info.success and 21932 or 21933)
	receipt:setAttribute(ITEM_ATTRIBUTE_TEXT, receiptFormat:format(os.date('%d. %b %Y - %H:%M:%S'), info.type, info.amount, info.owner, info.recipient, info.message))

	return receipt
end

local function getGuildIdByName(name, func)
	db.asyncStoreQuery('SELECT `id` FROM `guilds` WHERE `name` = ' .. db.escapeString(name),
		function(resultId)
			if resultId then
				func(result.getNumber(resultId, 'id'))
				result.free(resultId)
			else
				func(nil)
			end
		end
	)
end

local function getGuildBalance(id)
	local guild = Guild(id)
	if guild then
		return guild:getBankBalance()
	else
		local balance
		local resultId = db.storeQuery('SELECT `balance` FROM `guilds` WHERE `id` = ' .. id)
		if resultId then
			balance = result.getNumber(resultId, 'balance')
			result.free(resultId)
		end

		return balance
	end
end

local function setGuildBalance(id, balance)
	local guild = Guild(id)
	if guild then
		guild:setBankBalance(balance)
	else
		db.query('UPDATE `guilds` SET `balance` = ' .. balance .. ' WHERE `id` = ' .. id)
	end
end

local function transferFactory(playerName, amount, fromGuildId, info)
	return function(toGuildId)
		if not toGuildId then
			local player = Player(playerName)
			if player then
				info.success = false
				info.message = 'We are sorry to inform you that we could not fulfil your request, because we could not find the recipient guild.'
				local inbox = player:getInbox()
				local receipt = getReceipt(info)
				inbox:addItemEx(receipt, INDEX_WHEREEVER, FLAG_NOLIMIT)
			end
		else
			local fromBalance = getGuildBalance(fromGuildId)
			if fromBalance < amount then
				info.success = false
				info.message = 'We are sorry to inform you that we could not fulfill your request, due to a lack of the required sum on your guild account.'
			else
				info.success = true
				info.message = 'We are happy to inform you that your transfer request was successfully carried out.'
				setGuildBalance(fromGuildId, fromBalance - amount)
				setGuildBalance(toGuildId, getGuildBalance(toGuildId) + amount)
			end

			local player = Player(playerName)
			if player then
				local inbox = player:getInbox()
				local receipt = getReceipt(info)
				inbox:addItemEx(receipt, INDEX_WHEREEVER, FLAG_NOLIMIT)
			end
		end
	end
end
--------------------------------end guild bank-----------------------------------------------
local function handleBankActions(creature, message)
	local player = Player(creature)
	local playerId = player:getId()
---------------------------- help ------------------------
	if msgcontains(message, 'bank account') then
		npcHandler:say({
			'Every citizen has one. The big advantage is that you can access your money in every branch of the Global Bank! ...',
			'Would you like to know more about the {basic} functions of your bank account, the {advanced} functions, or are you already bored, perhaps?'
		}, npc, creature)
		npcHandler:setTopic(playerId, 1445)
		return true
---------------------------- balance ---------------------
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'guild balance') then
		npcHandler:setTopic(playerId, 1445)
		if not player:getGuild() then
			npcHandler:say('You are not a member of a guild.', npc, creature)
			return false
		end
		npcHandler:say('Your guild account balance is ' .. player:getGuild():getBankBalance() .. ' gold.', npc, creature)
		return true
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'balance') then
		npcHandler:setTopic(playerId, 1445)
		if player:getBankBalance() >= 100000000 then
			npcHandler:say('I think you must be one of the richest inhabitants in the world! Your account balance is ' .. player:getBankBalance() .. ' gold.', npc, creature)
			return true
		elseif player:getBankBalance() >= 10000000 then
			npcHandler:say('You have made ten millions and it still grows! Your account balance is ' .. player:getBankBalance() .. ' gold.', npc, creature)
			return true
		elseif player:getBankBalance() >= 1000000 then
			npcHandler:say('Wow, you have reached the magic number of a million gp!!! Your account balance is ' .. player:getBankBalance() .. ' gold!', npc, creature)
			return true
		elseif player:getBankBalance() >= 100000 then
			npcHandler:say('You certainly have made a pretty penny. Your account balance is ' .. player:getBankBalance() .. ' gold.', npc, creature)
			return true
		else
			npcHandler:say('Your account balance is ' .. player:getBankBalance() .. ' gold.', npc, creature)
			return true
		end
---------------------------- deposit ---------------------
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'guild deposit') then
		if not player:getGuild() then
			npcHandler:say('You are not a member of a guild.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		end
	   -- count[playerId] = player:getMoney()
	   -- if count[playerId] < 1 then
		   -- npcHandler:say('You do not have enough gold.', npc, creature)
		   -- npcHandler:setTopic(playerId, 1445)
		   -- return false
		--end
		if string.match(message, '%d+') then
			count[playerId] = getMoneyCount(message)
			if count[playerId] < 1 then
				npcHandler:say('You do not have enough gold.', npc, creature)
				npcHandler:setTopic(playerId, 1445)
				return false
			end
			npcHandler:say('Would you really like to deposit ' .. count[playerId] .. ' gold to your {guild account}?', npc, creature)
			npcHandler:setTopic(playerId, 1642)
			return true
		else
			npcHandler:say('Please tell me how much gold it is you would like to deposit.', npc, creature)
			npcHandler:setTopic(playerId, 1641)
			return true
		end
	elseif npcHandler:getTopic(playerId) == 1641 then
		count[playerId] = getMoneyCount(message)
		if isValidMoney(count[playerId]) then
			npcHandler:say('Would you really like to deposit ' .. count[playerId] .. ' gold to your {guild account}?', npc, creature)
			npcHandler:setTopic(playerId, 1642)
			return true
		else
			npcHandler:say('You do not have enough gold.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return true
		end
	elseif npcHandler:getTopic(playerId) == 1642 then
		if msgcontains(message, 'yes') then
			npcHandler:say('Alright, we have placed an order to deposit the amount of ' .. count[playerId] .. ' gold to your guild account. Please check your inbox for confirmation.', npc, creature)
			local guild = player:getGuild()
			local info = {
				type = 'Guild Deposit',
				amount = count[playerId],
				owner = player:getName() .. ' of ' .. guild:getName(),
				recipient = guild:getName()
			}
			local playerBalance = player:getBankBalance()
			if playerBalance < tonumber(count[playerId]) then
				info.message = 'We are sorry to inform you that we could not fulfill your request, due to a lack of the required sum on your bank account.'
				info.success = false
			else
				info.message = 'We are happy to inform you that your transfer request was successfully carried out.'
				info.success = true
				guild:setBankBalance(guild:getBankBalance() + tonumber(count[playerId]))
				player:setBankBalance(playerBalance - tonumber(count[playerId]))
			end

			local inbox = player:getInbox()
			local receipt = getReceipt(info)
			inbox:addItemEx(receipt, INDEX_WHEREEVER, FLAG_NOLIMIT)
		elseif msgcontains(message, 'no') then
			npcHandler:say('As you wish. Is there something else I can do for you?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
		return true
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'deposit') then
		count[playerId] = player:getMoney()
		if count[playerId] < 1 then
			npcHandler:say('You do not have enough gold.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		end
		if msgcontains(message, 'all') then
			count[playerId] = player:getMoney()
			npcHandler:say('Would you really like to deposit ' .. count[playerId] .. ' gold?', npc, creature)
			npcHandler:setTopic(playerId, 1447)
			return true
		else
			if string.match(message,'%d+') then
				count[playerId] = getMoneyCount(message)
				if count[playerId] < 1 then
					npcHandler:say('You do not have enough gold.', npc, creature)
					npcHandler:setTopic(playerId, 1445)
					return false
				end
				npcHandler:say('Would you really like to deposit ' .. count[playerId] .. ' gold?', npc, creature)
				npcHandler:setTopic(playerId, 1447)
				return true
			else
				npcHandler:say('Please tell me how much gold it is you would like to deposit.', npc, creature)
				npcHandler:setTopic(playerId, 1446)
				return true
			end
		end
		if not isValidMoney(count[playerId]) then
			npcHandler:say('Sorry, but you can\'t deposit that much.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		end
	elseif npcHandler:getTopic(playerId) == 1446 then
		count[playerId] = getMoneyCount(message)
		if isValidMoney(count[playerId]) then
			npcHandler:say('Would you really like to deposit ' .. count[playerId] .. ' gold?', npc, creature)
			npcHandler:setTopic(playerId, 1447)
			return true
		else
			npcHandler:say('You do not have enough gold.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return true
		end
	elseif npcHandler:getTopic(playerId) == 1447 then
		if msgcontains(message, 'yes') then
			if player:depositMoney(count[playerId]) then
				npcHandler:say('Alright, we have added the amount of ' .. count[playerId] .. ' gold to your {balance}. You can {withdraw} your money anytime you want to.', npc, creature)
			else
				npcHandler:say('You do not have enough gold.', npc, creature)
			end
		elseif msgcontains(message, 'no') then
			npcHandler:say('As you wish. Is there something else I can do for you?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
		return true
---------------------------- withdraw --------------------
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'guild withdraw') then
		if not player:getGuild() then
			npcHandler:say('I am sorry but it seems you are currently not in any guild.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		elseif player:getGuildLevel() < 2 then
			npcHandler:say('Only guild leaders or vice leaders can withdraw money from the guild account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		end

		if string.match(message,'%d+') then
			count[playerId] = getMoneyCount(message)
			if isValidMoney(count[playerId]) then
				npcHandler:say('Are you sure you wish to withdraw ' .. count[playerId] .. ' gold from your guild account?', npc, creature)
				npcHandler:setTopic(playerId, 1644)
			else
				npcHandler:say('There is not enough gold on your guild account.', npc, creature)
				npcHandler:setTopic(playerId, 1445)
			end
			return true
		else
			npcHandler:say('Please tell me how much gold you would like to withdraw from your guild account.', npc, creature)
			npcHandler:setTopic(playerId, 1643)
			return true
		end
	elseif npcHandler:getTopic(playerId) == 1643 then
		count[playerId] = getMoneyCount(message)
		if isValidMoney(count[playerId]) then
			npcHandler:say('Are you sure you wish to withdraw ' .. count[playerId] .. ' gold from your guild account?', npc, creature)
			npcHandler:setTopic(playerId, 1644)
		else
			npcHandler:say('There is not enough gold on your guild account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
		return true
	elseif npcHandler:getTopic(playerId) == 1644 then
		if msgcontains(message, 'yes') then
			local guild = player:getGuild()
			local balance = guild:getBankBalance()
			npcHandler:say('We placed an order to withdraw ' .. count[playerId] .. ' gold from your guild account. Please check your inbox for confirmation.', npc, creature)
			local info = {
				type = 'Guild Withdraw',
				amount = count[playerId],
				owner = player:getName() .. ' of ' .. guild:getName(),
				recipient = player:getName()
			}
			if balance < tonumber(count[playerId]) then
				info.message = 'We are sorry to inform you that we could not fulfill your request, due to a lack of the required sum on your guild account.'
				info.success = false
			else
				info.message = 'We are happy to inform you that your transfer request was successfully carried out.'
				info.success = true
				guild:setBankBalance(balance - tonumber(count[playerId]))
				local playerBalance = player:getBankBalance()
				player:setBankBalance(playerBalance + tonumber(count[playerId]))
			end

			local inbox = player:getInbox()
			local receipt = getReceipt(info)
			inbox:addItemEx(receipt, INDEX_WHEREEVER, FLAG_NOLIMIT)
			npcHandler:setTopic(playerId, 1445)
		elseif msgcontains(message, 'no') then
			npcHandler:say('As you wish. Is there something else I can do for you?', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
		return true
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'withdraw') then
		if string.match(message,'%d+') then
			count[playerId] = getMoneyCount(message)
			if isValidMoney(count[playerId]) then
				npcHandler:say('Are you sure you wish to withdraw ' .. count[playerId] .. ' gold from your bank account?', npc, creature)
				npcHandler:setTopic(playerId, 1626)
			else
				npcHandler:say('There is not enough gold on your account.', npc, creature)
				npcHandler:setTopic(playerId, 1445)
			end
			return true
		else
			npcHandler:say('Please tell me how much gold you would like to withdraw.', npc, creature)
			npcHandler:setTopic(playerId, 1625)
			return true
		end
	elseif npcHandler:getTopic(playerId) == 1625 then
		count[playerId] = getMoneyCount(message)
		if isValidMoney(count[playerId]) then
			npcHandler:say('Are you sure you wish to withdraw ' .. count[playerId] .. ' gold from your bank account?', npc, creature)
			npcHandler:setTopic(playerId, 1626)
		else
			npcHandler:say('There is not enough gold on your account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
		return true
	elseif npcHandler:getTopic(playerId) == 1626 then
		if msgcontains(message, 'yes') then
			if player:getFreeCapacity() >= getMoneyWeight(count[playerId]) then
				if not player:withdrawMoney(count[playerId]) then
					npcHandler:say('There is not enough gold on your account.', npc, creature)
				else
					npcHandler:say('Here you are, ' .. count[playerId] .. ' gold. Please let me know if there is something else I can do for you.', npc, creature)
				end
			else
				npcHandler:say('Whoah, hold on, you have no room in your inventory to carry all those coins. I don\'t want you to drop it on the floor, maybe come back with a cart!', npc, creature)
			end
			npcHandler:setTopic(playerId, 1445)
		elseif msgcontains(message, 'no') then
			npcHandler:say('The customer is king! Come back anytime you want to if you wish to {withdraw} your money.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
		return true
---------------------------- transfer --------------------
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'guild transfer') then
		if not player:getGuild() then
			npcHandler:say('I am sorry but it seems you are currently not in any guild.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		elseif player:getGuildLevel() < 2 then
			npcHandler:say('Only guild leaders or vice leaders can transfer money from the guild account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return false
		end

		if string.match(message, '%d+') then
			count[playerId] = getMoneyCount(message)
			if isValidMoney(count[playerId]) then
				transfer[playerId] = string.match(message, 'to%s*(.+)$')
				if transfer[playerId] then
					npcHandler:say('So you would like to transfer ' .. count[playerId] .. ' gold from your guild account to guild ' .. transfer[playerId] .. '?', npc, creature)
					npcHandler:setTopic(playerId, 1647)
				else
					npcHandler:say('Which guild would you like to transfer ' .. count[playerId] .. ' gold to?', npc, creature)
					npcHandler:setTopic(playerId, 1646)
				end
			else
				npcHandler:say('There is not enough gold on your guild account.', npc, creature)
				npcHandler:setTopic(playerId, 1445)
			end
		else
			npcHandler:say('Please tell me the amount of gold you would like to transfer.', npc, creature)
			npcHandler:setTopic(playerId, 1645)
		end
		return true
	elseif npcHandler:getTopic(playerId) == 1645 then
		count[playerId] = getMoneyCount(message)
		if player:getGuild():getBankBalance() < count[playerId] then
			npcHandler:say('There is not enough gold on your guild account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return true
		end
		if isValidMoney(count[playerId]) then
			npcHandler:say('Which guild would you like to transfer ' .. count[playerId] .. ' gold to?', npc, creature)
			npcHandler:setTopic(playerId, 1646)
		else
			npcHandler:say('There is not enough gold on your account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
		return true
	elseif npcHandler:getTopic(playerId) == 1646 then
		transfer[playerId] = message
		if player:getGuild():getName() == transfer[playerId] then
			npcHandler:say('Fill in this field with person who receives your gold!', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return true
		end
		npcHandler:say('So you would like to transfer ' .. count[playerId] .. ' gold from your guild account to guild ' .. transfer[playerId] .. '?', npc, creature)
		npcHandler:setTopic(playerId, 1647)
		return true
	elseif npcHandler:getTopic(playerId) == 1647 then
		if msgcontains(message, 'yes') then
			npcHandler:say('We have placed an order to transfer ' .. count[playerId] .. ' gold from your guild account to guild ' .. transfer[playerId] .. '. Please check your inbox for confirmation.', npc, creature)
			local guild = player:getGuild()
			local balance = guild:getBankBalance()
			local info = {
				type = 'Guild to Guild Transfer',
				amount = count[playerId],
				owner = player:getName() .. ' of ' .. guild:getName(),
				recipient = transfer[playerId]
			}
			if balance < tonumber(count[playerId]) then
				info.message = 'We are sorry to inform you that we could not fulfill your request, due to a lack of the required sum on your guild account.'
				info.success = false
				local inbox = player:getInbox()
				local receipt = getReceipt(info)
				inbox:addItemEx(receipt, INDEX_WHEREEVER, FLAG_NOLIMIT)
			else
				getGuildIdByName(transfer[playerId], transferFactory(player:getName(), tonumber(count[playerId]), guild:getId(), info))
			end
			npcHandler:setTopic(playerId, 1445)
		elseif msgcontains(message, 'no') then
			npcHandler:say('Alright, is there something else I can do for you?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
--------------------------------guild bank-----------------------------------------------
	elseif msgcontains(message, 'transfer') then
		npcHandler:say('Please tell me the amount of gold you would like to transfer.', npc, creature)
		npcHandler:setTopic(playerId, 1630)
	elseif npcHandler:getTopic(playerId) == 1630 then
		count[playerId] = getMoneyCount(message)
		if player:getBankBalance() < count[playerId] then
			npcHandler:say('There is not enough gold on your account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return true
		end
		if isValidMoney(count[playerId]) then
			npcHandler:say('Who would you like transfer ' .. count[playerId] .. ' gold to?', npc, creature)
			npcHandler:setTopic(playerId, 1631)
		else
			npcHandler:say('There is not enough gold on your account.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
	elseif npcHandler:getTopic(playerId) == 1631 then
		transfer[playerId] = message
		if player:getName() == transfer[playerId] then
			npcHandler:say('Fill in this field with person who receives your gold!', npc, creature)
			npcHandler:setTopic(playerId, 1445)
			return true
		end
		if playerExists(transfer[playerId]) then
		local arrayDenied = {"accountmanager", "rooksample", "druidsample", "sorcerersample", "knightsample", "paladinsample"}
			if isInArray(arrayDenied, string.gsub(transfer[playerId]:lower(), " ", "")) then
				npcHandler:say('This player does not exist.', npc, creature)
				npcHandler:setTopic(playerId, 1445)
				return true
			end
			npcHandler:say('So you would like to transfer ' .. count[playerId] .. ' gold to ' .. transfer[playerId] .. '?', npc, creature)
			npcHandler:setTopic(playerId, 1632)
		else
			npcHandler:say('This player does not exist.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
	elseif npcHandler:getTopic(playerId) == 1632 then
		if msgcontains(message, 'yes') then
			if not player:transferMoneyTo(transfer[playerId], count[playerId]) then
				npcHandler:say('You cannot transfer money to this account.', npc, creature)
			else
				npcHandler:say('Very well. You have transferred ' .. count[playerId] .. ' gold to ' .. transfer[playerId] ..'.', npc, creature)
				transfer[playerId] = nil
			end
		elseif msgcontains(message, 'no') then
			npcHandler:say('Alright, is there something else I can do for you?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
---------------------------- money exchange --------------
	elseif msgcontains(message, 'change gold') then
		npcHandler:say('How many platinum coins would you like to get?', npc, creature)
		npcHandler:setTopic(playerId, 1633)
	elseif npcHandler:getTopic(playerId) == 1633 then
		if getMoneyCount(message) < 1 then
			npcHandler:say('Sorry, you do not have enough gold coins.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		else
			count[playerId] = getMoneyCount(message)
			npcHandler:say('So you would like me to change ' .. count[playerId] * 100 .. ' of your gold coins into ' .. count[playerId] .. ' platinum coins?', npc, creature)
			npcHandler:setTopic(playerId, 1634)
		end
	elseif npcHandler:getTopic(playerId) == 1634 then
		if msgcontains(message, 'yes') then
			if player:removeItem(3031, count[playerId] * 100) then
				player:addItem(3035, count[playerId])
				npcHandler:say('Here you are.', npc, creature)
			else
				npcHandler:say('Sorry, you do not have enough gold coins.', npc, creature)
			end
		else
			npcHandler:say('Well, can I help you with something else?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
	elseif msgcontains(message, 'change platinum') then
		npcHandler:say('Would you like to change your platinum coins into gold or crystal?', npc, creature)
		npcHandler:setTopic(playerId, 1635)
	elseif npcHandler:getTopic(playerId) == 1635 then
		if msgcontains(message, 'gold') then
			npcHandler:say('How many platinum coins would you like to change into gold?', npc, creature)
			npcHandler:setTopic(playerId, 1636)
		elseif msgcontains(message, 'crystal') then
			npcHandler:say('How many crystal coins would you like to get?', npc, creature)
			npcHandler:setTopic(playerId, 1638)
		else
			npcHandler:say('Well, can I help you with something else?', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		end
	elseif npcHandler:getTopic(playerId) == 1636 then
		if getMoneyCount(message) < 1 then
			npcHandler:say('Sorry, you do not have enough platinum coins.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		else
			count[playerId] = getMoneyCount(message)
			npcHandler:say('So you would like me to change ' .. count[playerId] .. ' of your platinum coins into ' .. count[playerId] * 100 .. ' gold coins for you?', npc, creature)
			npcHandler:setTopic(playerId, 1637)
		end
	elseif npcHandler:getTopic(playerId) == 1637 then
		if msgcontains(message, 'yes') then
			if player:removeItem(3035, count[playerId]) then
				player:addItem(3031, count[playerId] * 100)
				npcHandler:say('Here you are.', npc, creature)
			else
				npcHandler:say('Sorry, you do not have enough platinum coins.', npc, creature)
			end
		else
			npcHandler:say('Well, can I help you with something else?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
	elseif npcHandler:getTopic(playerId) == 1638 then
		if getMoneyCount(message) < 1 then
			npcHandler:say('Sorry, you do not have enough platinum coins.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		else
			count[playerId] = getMoneyCount(message)
			npcHandler:say('So you would like me to change ' .. count[playerId] * 100 .. ' of your platinum coins into ' .. count[playerId] .. ' crystal coins for you?', npc, creature)
			npcHandler:setTopic(playerId, 1641)
		end
	elseif npcHandler:getTopic(playerId) == 1639 then
		if msgcontains(message, 'yes') then
			if player:removeItem(3035, count[playerId] * 100) then
				player:addItem(3043, count[playerId])
				npcHandler:say('Here you are.', npc, creature)
			else
				npcHandler:say('Sorry, you do not have enough platinum coins.', npc, creature)
			end
		else
			npcHandler:say('Well, can I help you with something else?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
	elseif msgcontains(message, 'change crystal') then
		npcHandler:say('How many crystal coins would you like to change into platinum?', npc, creature)
		npcHandler:setTopic(playerId, 1640)
	elseif npcHandler:getTopic(playerId) == 1640 then
		if getMoneyCount(message) < 1 then
			npcHandler:say('Sorry, you do not have enough crystal coins.', npc, creature)
			npcHandler:setTopic(playerId, 1445)
		else
			count[playerId] = getMoneyCount(message)
			npcHandler:say('So you would like me to change ' .. count[playerId] .. ' of your crystal coins into ' .. count[playerId] * 100 .. ' platinum coins for you?', npc, creature)
			npcHandler:setTopic(playerId, 1641)
		end
	elseif npcHandler:getTopic(playerId) == 1641 then
		if msgcontains(message, 'yes') then
			if player:removeItem(3043, count[playerId])  then
				player:addItem(3035, count[playerId] * 100)
				npcHandler:say('Here you are.', npc, creature)
			else
				npcHandler:say('Sorry, you do not have enough crystal coins.', npc, creature)
			end
		else
			npcHandler:say('Well, can I help you with something else?', npc, creature)
		end
		npcHandler:setTopic(playerId, 1445)
	elseif msgcontains(message, 'money') then
		npcHandler:say('We can {change} money for you. You can also access your {bank account}.', npc, creature)
	elseif msgcontains(message, 'change') then
		npcHandler:say('There are three different coin types in Global Bank: 100 gold coins equal 1 platinum coin, 100 platinum coins equal 1 crystal coin. So if you\'d like to change 100 gold into 1 platinum, simply say \'{change gold}\' and then \'1 platinum\'.', npc, creature)
	elseif msgcontains(message, 'bank') then
		npcHandler:say('We can {change} money for you. You can also access your {bank account}.', npc, creature)
	elseif msgcontains(message, 'advanced') then
		npcHandler:say('Your bank account will be used automatically when you want to {rent} a house or place an offer on an item on the {market}. Let me know if you want to know about how either one works.', npc, creature)
	elseif msgcontains(message, 'help') then
		npcHandler:say('You can check the {balance} of your bank account, {deposit} money or {withdraw} it. You can also {transfer} money to other characters, provided that they have a vocation.', npc, creature)
	elseif msgcontains(message, 'functions') then
		npcHandler:say('You can check the {balance} of your bank account, {deposit} money or {withdraw} it. You can also {transfer} money to other characters, provided that they have a vocation.', npc, creature)
	elseif msgcontains(message, 'basic') then
		npcHandler:say('You can check the {balance} of your bank account, {deposit} money or {withdraw} it. You can also {transfer} money to other characters, provided that they have a vocation.', npc, creature)
	elseif msgcontains(message, 'job') then
		npcHandler:say('I work in this house. I can change money for you and help you with your bank account.', npc, creature)
	end
	return true
end
-- ======================[[ END BANKING FUNCTIONS ]] ======================== --
--[[
############################################################################
############################################################################
############################################################################
]]
-- ========================[[ TRADER FUNCTIONS ]] ========================== --

local function getGoodsGreetingMessage()
	local str
	if not hireling:hasSkill(HIRELING_SKILLS.TRADER) then
		str = "While I'm not a trader, I still have a collection of {various} items to sell if you like!"
	else
		str = "I sell a {selection} of {various} items, {equipment}, " ..
			"{distance} weapons, {wands} and {rods}, {potions}, {runes}, " ..
			"{supplies}, {tools} and {postal} goods. Just ask!"
	end
	return str
end

-- ========================[[ COOKER FUNCTIONS ]] ========================== --

local function getDeliveredMessageByFoodId(food_id) -- remove the hardcoded food ids
	local message = ""
	if food_id == 29408 then
		message = "Oh yes, a tasty roasted wings to make you even tougher and skilled with the defensive arts."
	elseif food_id == 29409 then
		message = "Divine! Carrot is a well known nourishment that makes the eyes see even more sharply."
	elseif food_id == 29410 then
		message = "Magnifique! A tiger meat that has been marinated for several hours in magic spices."
	elseif food_id == 29411 then
		message = "Aaah, the beauty of the simple dishes! A delicate salad made of selected ingredients, capable of bring joy to the hearts of bravest warriors and their weapons."
	elseif food_id == 29412 then
		message = "Oh yes, very spicy chilly combined with delicious minced carniphila meat and a side dish of fine salad!"
	elseif food_id == 29413 then
		message = "Aaah, the northern cuisine! A catch of fresh salmon right from the coast Svargrond is the base of this extraordinary fish dish."
	elseif food_id == 29414 then
		message = "A traditional and classy meal. A beefy casserole which smells far better than it sounds!"
	elseif food_id == 29415 then
		message = "A tasty chunk of juicy beef with an aromatic sauce and parsley potatoes, mmh!"
	elseif food_id == 29416 then
		message = "Oooh, well... that one didn't quite turn out as it was supposed to be, I'm sorry."
	end

	return message
end

local function deliverFood(creature, food_id)
	local playerId = creature:getId()
	local player = Player(creature)
	local itType = ItemType(food_id)
	local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)

	if player:getFreeCapacity() < itType:getWeight(1) then
		npcHandler:say("Sorry, but you don't have enough capacity.", npc, creature)
	elseif not inbox or inbox:getEmptySlots() == 0 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		npcHandler:say("Sorry, you don't have enough room on your inbox", npc, creature)
	elseif not player:removeMoneyBank(15000) then
		npcHandler:say("Sorry, you don't have enough money.", npc, creature)
	else
		local message = getDeliveredMessageByFoodId(food_id)
		npcHandler:say(message, npc, creature)
		inbox:addItem(food_id, 1, INDEX_WHEREEVER, FLAG_NOLIMIT)
	end
	npcHandler:setTopic(playerId, TOPIC.SERVICES)
end

local function cookFood(creature)
	local playerId = creature:getId()
	local random = math.random(6)
	if random == 6 then
		-- ask for preferred skill
		npcHandler:setTopic(playerId, TOPIC_FOOD.SKILL_CHOOSE)
		npcHandler:say("Yay! I have the ingredients to make a skill boost dish. Would you rather like to boost your {magic}, {melee}, {shielding} or {distance} skill?", npc, creature)
	else -- deliver the random generated index
		deliverFood(creature, HIRELING_FOODS[random])
	end
end

local function handleFoodActions(creature, message)
	local playerId = creature:getId()
	if npcHandler:getTopic(playerId) == TOPIC.FOOD then --initial node
		if msgcontains(message, "yes") then
			cookFood(creature)
		elseif msgcontains(message, "no") then
			npcHandler:setTopic(playerId, TOPIC.SERVICES)
			npcHandler:say("Alright then, ask me for other {services}, if you want.", npc, creature)
		else --invalid word

		end
	elseif npcHandler:getTopic(playerId) == TOPIC_FOOD.SKILL_CHOOSE then
		if msgcontains(message, "magic") then
			deliverFood(creature, HIRELING_FOODS_BOOST.MAGIC)
		elseif msgcontains(message,"melee") then
			deliverFood(creature, HIRELING_FOODS_BOOST.MELEE)
		elseif msgcontains(message,"shielding") then
			deliverFood(creature, HIRELING_FOODS_BOOST.SHIELDING)
		elseif msgcontains(message,"distance") then
			deliverFood(creature, HIRELING_FOODS_BOOST.DISTANCE)
		else
			npcHandler:say("Sorry, but you must choose a valid skill class. Would you like to boost your {magic}, {melee}, {shielding} or {distance} skill?", npc, creature)
		end
	end
end

-- ======================[[ END COOKER FUNCTIONS ]] ======================== --
local function creatureSayCallback(npc, creature, type, message)
	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	local playerId = creature:getId()
	local player = Player(creature)

	if not hireling:canTalkTo(player) then
		return false
	end

	-- roleplay
	if msgcontains(message,"sword of fury") then
		npcHandler:say("In my youth I dreamt to wield it! Now I wield the broom of... brooming. I guess that's the next best thing!", npc, creature)
	elseif msgcontains(message,"rookgaard") then
		npcHandler:say("What an uncivilised place without any culture.", npc, creature)
	elseif msgcontains(message,"excalibug") then
		npcHandler:say("I'll keep an eye open for it when cleaning up the things you brought home!", npc, creature)
	-- end roleplay
	elseif(msgcontains(message, "service")) then
		npcHandler:setTopic(playerId, TOPIC.SERVICES)
		local servicesMsg = getHirelingServiceString(creature)
		npcHandler:say(servicesMsg, npc, creature)
	elseif(getTopic(creature) == TOPIC.SERVICES) then
		if msgcontains(message, "bank") then
			if hireling:hasSkill(HIRELING_SKILLS.BANKER) then
				npcHandler:setTopic(playerId, TOPIC.BANK)
				count[playerId], transfer[playerId] = nil, nil
				npcHandler:say(GREETINGS.BANK, npc, creature)
			else
				sendSkillNotLearned(creature, HIRELING_SKILLS.BANKER)
			end
		elseif msgcontains(message, "food") then
			if hireling:hasSkill(HIRELING_SKILLS.COOKING) then
				npcHandler:setTopic(playerId, TOPIC.FOOD)
				npcHandler:say(GREETINGS.FOOD, npc, creature)
			else
				sendSkillNotLearned(creature, HIRELING_SKILLS.COOKING)
			end
		elseif msgcontains(message, "stash") then
			if hireling:hasSkill(HIRELING_SKILLS.STEWARD) then
				npcHandler:say(GREETINGS.STASH, npc, creature)
				player:openStash(true)
			else
				sendSkillNotLearned(creature, HIRELING_SKILLS.STEWARD)
			end
		elseif msgcontains(message, "goods") or msgcontains(message, "trade") then
			npcHandler:setTopic(playerId, TOPIC.GOODS)
			local goodsMsg = getGoodsGreetingMessage()
			npcHandler:say(goodsMsg, npc, creature)
		elseif msgcontains(message, "lamp") then
			npcHandler:setTopic(playerId, TOPIC.LAMP)
			if player:getGuid() == hireling:getOwnerId() then
				npcHandler:say("Are you sure you want me to go back to my lamp?", npc, creature)
			else
				return false
			end
		elseif msgcontains(message, "outfit") then
			if player:getGuid() == hireling:getOwnerId() then
				hireling:requestOutfitChange()
				npcHandler:say("As you wish!", npc, creature)
			else
				return false
			end
		end
	elseif(getTopic(creature) == TOPIC.LAMP) then
		if msgcontains(message, "yes") then
			npcHandler:say("As you wish!", npc, creature)
			hireling:returnToLamp(player:getGuid())
		else
			npcHandler:setTopic(playerId, TOPIC.SERVICES)
			npcHandler:say("Alright then, I will be here.", npc, creature)
		end
	elseif(getTopic(creature) >= TOPIC.BANK and getTopic(creature) < TOPIC.FOOD) then
		handleBankActions(creature, message)
	elseif(getTopic(creature) >= TOPIC.FOOD and getTopic(creature) < TOPIC.GOODS) then
		handleFoodActions(creature, message)
	elseif(getTopic(creature) >= TOPIC.GOODS) then
		if msgcontains(message, "goods") or msgcontains(message, "trade") then
			npcHandler:setTopic(playerId, TOPIC.GOODS)
			local goodsMsg = getGoodsGreetingMessage()
			npcHandler:say(goodsMsg, npc, creature)
		else
			handleGoodsActions(creature, message)
		end
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "It is good to see you. I'm always at your {service}")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, |PLAYERNAME|, I'll be here if you need me again.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Come back soon!")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)
