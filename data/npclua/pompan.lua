local internalNpcName = "Pompan"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 132,
	lookHead = 78,
	lookBody = 13,
	lookLegs = 32,
	lookFeet = 108,
	lookAddons = 0
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.shop = {
	{ name = "backpack", clientId = 2854, buy = 20 },
	{ name = "bag", clientId = 2853, buy = 5 },
	{ name = "basket", clientId = 2855, buy = 6 },
	{ name = "blue quiver", clientId = 35848, buy = 400 },
	{ name = "bucket", clientId = 2873, buy = 4 },
	{ name = "candlestick", clientId = 2917, buy = 2 },
	{ name = "closed trap", clientId = 3481, buy = 280, sell=75 },
	{ name = "crowbar", clientId = 3304, buy = 260, sell=50 },
	{ name = "expedition backpack", clientId = 10324, buy = 100 },
	{ name = "expedition bag", clientId = 10325, buy = 50 },
	{ name = "fishing rod", clientId = 3483, buy = 150, sell=40 },
	{ name = "lamp", clientId = 2914, buy = 8 },
	{ name = "pick", clientId = 3456, buy = 50, sell=15 },
	{ name = "quiver", clientId = 35562, buy = 400 },
	{ name = "red quiver", clientId = 35849, buy = 400 },
	{ name = "rope", clientId = 3003, buy = 50, sell=15 },
	{ name = "scythe", clientId = 3453, buy = 50, sell=10 },
	{ name = "shovel", clientId = 3457, buy = 50, sell=8 },
	{ name = "torch", clientId = 2920, buy = 2 },
	{ name = "watch", clientId = 2906, buy = 20, sell=6 },
	{ name = "worm", clientId = 3492, buy = 1 },
	{ name = "inkwell", clientId = 3509, sell=8 },
	{ name = "mirror", clientId = 3463, sell=10 },
	{ name = "sickle", clientId = 3293, sell=3 },
	-- 1 tome
	{ name = "arrow", clientId = 3447, buy = 3 },
	{ name = "bolt", clientId = 3446, buy = 4 },
	{ name = "bow", clientId = 3350, buy = 400, sell=100 },
	{ name = "crossbow", clientId = 3349, buy = 500, sell=120 },
	{ name = "crystalline arrow", clientId = 15793, buy = 20 },
	{ name = "diamond arrow", clientId = 35901, buy = 100 },
	{ name = "dragon tapestry", clientId = 10347, buy = 80 },
	{ name = "drill bolt", clientId = 16142, buy = 12 },
	{ name = "earth arrow", clientId = 774, buy = 5 },
	{ name = "envenomed arrow", clientId = 16143, buy = 12 },
	{ name = "flaming arrow", clientId = 763, buy = 5 },
	{ name = "flash arrow", clientId = 761, buy = 5 },
	{ name = "onyx arrow", clientId = 7365, buy = 7 },
	{ name = "piercing bolt", clientId = 7363, buy = 5 },
	{ name = "power bolt", clientId = 3450, buy = 7 },
	{ name = "prismatic bolt", clientId = 16141, buy = 20 },
	{ name = "royal spear", clientId = 7378, buy = 15 },
	{ name = "shiver arrow", clientId = 762, buy = 5 },
	{ name = "sniper arrow", clientId = 7364, buy = 5 },
	{ name = "spear", clientId = 3277, buy = 9, sell=3 },
	{ name = "spectral bolt", clientId = 35902, buy = 70 },
	{ name = "tarsal arrow", clientId = 14251, buy = 6 },
	{ name = "throwing star", clientId = 3287, buy = 42 },
	{ name = "vortex bolt", clientId = 14252, buy = 6 },
	{ name = "corrupted flag", clientId = 10409, sell=700 },
	{ name = "high guard flag", clientId = 10415, sell=550 },
	{ name = "legionnaire flags", clientId = 10417, sell=500 },
	{ name = "zaogun flag", clientId = 10413, sell=600 },
	-- 2 tomes
	{ name = "minotaur backpack", clientId = 10327, buy = 200 },
	-- 5 tomes
	{ name = "dragon backpack", clientId = 10326, buy = 200 }
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcHandler:setMessage(MESSAGE_GREET, 'Hello.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'It was a pleasure to help you, |PLAYERNAME|.')
npcHandler:setMessage(MESSAGE_SENDTRADE, "Keep in mind you won't find better offers here. Just browse through my wares.")

npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)
