local internalNpcName = "Gnomux"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 493,
	lookHead = 12,
	lookBody = 82,
	lookLegs = 39,
	lookFeet = 114,
	lookAddons = 0
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.shop = {
	{clientId = 19214, buy = 250, count = 4, storage = SPIKE_MIDDLE_MUSHROOM_MAIN},
	{clientId = 19205, buy = 150, count = 3, storage = SPIKE_UPPER_TRACK_MAIN},
	{clientId = 19219, buy = 100, count = 4, storage = SPIKE_LOWER_PARCEL_MAIN},
	{clientId = 19207, buy = 250, count = 1, storage = SPIKE_MIDDLE_CHARGE_MAIN},
	{clientId = 19203, buy = 150, count = 4, storage = SPIKE_UPPER_MOUND_MAIN},
	{clientId = 19206, buy = 500, count = 1, storage = SPIKE_LOWER_LAVA_MAIN},
	{clientId = 19204, buy = 150, count = 7, storage = SPIKE_UPPER_PACIFIER_MAIN}
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

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
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

function creatureSayCallback(npc, creature, type, message)
	if msgcontains(message, 'job') then
		npcHandler:say("I'm responsible for resupplying foolish adventurers with equipment that they may have lost. If you're one of them, just ask me about a {trade}. ", npc, creature)
	end

	if msgcontains(message, 'gnome') then
		npcHandler:say("What could I say about gnomes that anyone would not know? I mean, we're interesting if not fascinating, after all.", npc, creature)
	end

	if msgcontains(message, 'spike') then
		npcHandler:say({"I came here as a crystal farmer and know the Spike all the way back to when it was a little baby crystal. I admit I feel a little fatherly pride in how big and healthy it has become.","When most other crystal experts left for new assignments, I decided to stay and help here a bit."}, npc, creature)
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)