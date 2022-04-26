local internalNpcName = "Satsu"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 158,
	lookHead = 78,
	lookBody = 96,
	lookLegs = 118,
	lookFeet = 96,
	lookAddons = 0
}

npcConfig.flags = {
	floorchange = false
}

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

npcHandler:addModule(FocusModule:new())

npcConfig.shop = {
	{ itemName = "cocktail glass", clientId = 9232, sell = 50 },
	{ itemName = "cocktail glass of beer", clientId = 9232, buy = 52, count = 3 },
	{ itemName = "cocktail glass of fruit juice", clientId = 9232, buy = 52, count = 14 },
	{ itemName = "cocktail glass of lemonade", clientId = 9232, buy = 52, count = 12 },
	{ itemName = "cocktail glass of mead", clientId = 9232, buy = 52, count = 16 },
	{ itemName = "cocktail glass of milk", clientId = 9232, buy = 52, count = 9 },
	{ itemName = "cocktail glass of rum", clientId = 9232, buy = 52, count = 13 },
	{ itemName = "cocktail glass of tea", clientId = 9232, buy = 52, count = 17 },
	{ itemName = "cocktail glass of water", clientId = 9232, buy = 52, count = 1 },
	{ itemName = "cocktail glass of wine", clientId = 9232, buy = 52, count = 2 }
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

npcType:register(npcConfig)
