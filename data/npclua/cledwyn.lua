local internalNpcName = "Cledwyn"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 76,
	lookFeet = 94,
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.currency = 22516

npcConfig.shop = {
	{ clientId= 22521, buy = 100, itemName = "earthheart cuirass"},
	{ clientId= 22522, buy = 100, itemName = "earthheart hauberk"},
	{ clientId= 22523, buy = 100, itemName = "earthheart platemail"},
	{ clientId= 22535, buy = 100, itemName = "earthmind raiment"},
	{ clientId= 22531, buy = 100, itemName = "earthsoul tabard"},
	{ clientId= 22518, buy = 100, itemName = "fireheart cuirass"},
	{ clientId= 22519, buy = 100, itemName = "fireheart hauberk"},
	{ clientId= 22520, buy = 100, itemName = "fireheart platemail"},
	{ clientId= 22534, buy = 100, itemName = "firemind raiment"},
	{ clientId= 22530, buy = 100, itemName = "firesoul tabard"},
	{ clientId= 22527, buy = 100, itemName = "frostheart cuirass"},
	{ clientId= 22528, buy = 100, itemName = "frostheart hauberk"},
	{ clientId= 22529, buy = 100, itemName = "frostheart platemail"},
	{ clientId= 22537, buy = 100, itemName = "frostmind raiment"},
	{ clientId= 22533, buy = 100, itemName = "frostsoul tabard"},
	{ clientId= 35563, buy = 1, itemName = "magic shield potion"},
	{ clientId= 22524, buy = 100, itemName = "thunderheart cuirass"},
	{ clientId= 22525, buy = 100, itemName = "thunderheart hauberk"},
	{ clientId= 22526, buy = 100, itemName = "thunderheart platemail"},
	{ clientId= 22536, buy = 100, itemName = "thundermind raiment"},
	{ clientId= 22532, buy = 100, itemName = "thundersoul tabard"}
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

local talkState = {}
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

local chargeItem = {
	['pendulet'] = {noChargeID = 29429, ChargeID = 30345},
	['sleep shawl'] = {noChargeID = 29428, ChargeID = 30343},
	['blister ring'] = {noChargeID = 31557, ChargeID = 31621},
	['theurgic amulet'] = {noChargeID = 30401, ChargeID = 30403},
	['ring of souls'] = {noChargeID = 32621, ChargeID = 32636}
}

npcConfig.voices = {
	interval = 5000,
	chance = 50,
	{ text = 'Trading tokens! First-class bargains!' },
	{ text = 'Bespoke armor for all vocations! For the cost of some tokens only!' },
	{ text = 'Tokens! Bring your tokens!' }
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

function creatureSayCallback(npc, creature, type, message)
	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	local playerId = creature:getId()
	local player = Player(creature)
	if not player or not playerId then
		return false
	end

	if msgcontains(message, 'token') or msgcontains(message, 'tokens') then
		npcHandler:say("If you have any {silver} tokens with you, let's have a look! Maybe I can offer you something in exchange.", npc, creature)
	elseif msgcontains(message, 'information') then
		npcHandler:say("With pleasure. <bows> I trade {token}s. There are several ways to obtain the {token}s I am interested in - killing certain bosses, for example. In exchange for a certain amount of tokens, I can offer you some first-class items.", npc, creature)
	elseif msgcontains(message, 'talk') then
		npcHandler:say({"Why, certainly! I'm always up for some small talk. ...",
						 "The weather continues just fine here, don't you think? Just the day for a little walk around the town! ...",
						 "Actually, I haven't been around much yet, but I'm looking forward to exploring the city once I've finished trading {token}s."}, npc, creature)
	elseif msgcontains(message, 'silver') then
		npc:openShopWindow(creature)
		npcHandler:say({"Here's the deal, " .. player:getName() .. ". For 100 of your silver tokens, I can offer you some first-class torso armor. These armors provide a solid boost to your main attack skill, as well as ...",
		"some elemental protection of your choice! I also sell a magic shield potion for one silver token. So these are my offers."}, npc, creature)
	elseif msgcontains(message, 'enchant') then
		npcHandler:say("The following items can be enchanted: {pendulet}, {sleep shawl}, {blister ring}, {theurgic amulet}. Make you choice!", npc, creature)
		npcHandler:setTopic(playerId, 1)
	elseif isInArray({'pendulet', 'sleep shawl', 'blister ring', 'theurgic amulet'}, message:lower()) and npcHandler:getTopic(playerId) == 1 then
		npcHandler:say("Should I enchant the item pendulet for 2 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?", npc, creature)
		charge = message:lower()
		npcHandler:setTopic(playerId, 2)
	elseif npcHandler:getTopic(playerId) == 2 then
		if msgcontains(message, 'yes') then
			if not chargeItem[charge] then
				npcHandler:say("Sorry, you don't have an unenchanted ".. charge ..".",creature)
			else
				if (player:getItemCount(Npc():getCurrency()) >= 2) and (player:getItemCount(chargeItem[charge].noChargeID) >= 1) then
					player:removeItem(Npc():getCurrency(), 2)
					player:removeItem(chargeItem[charge].noChargeID, 1)
					local itemAdd = player:addItem(chargeItem[charge].ChargeID, 1)
					npcHandler:say("Ah, excellent. Here is your " .. itemAdd:getName():lower() .. ".", npc, creature)
				else
					npcHandler:say("Sorry, friend, but one good turn deserves another. Bring enough ".. ItemType(Npc():getCurrency()):getPluralName():lower() .." and it's a deal.", npc, creature)
				end
				npcHandler:setTopic(playerId, 0)
			end
		elseif msgcontains(message, 'no') then
			npcHandler:say("Alright, come back if you have changed your mind.", npc, creature)
			npcHandler:setTopic(playerId, 0)
		end
	elseif msgcontains(message, 'addon') then
		if player:hasOutfit(846, 0) or player:hasOutfit(845, 0) then
			npcHandler:say("Ah, very good. Now choose your addon: {first} or {second}.", npc, creature)
			npcHandler:setTopic(playerId, 3)
		else
			npcHandler:say("Sorry, friend, but one good turn deserves another. You need to obtain the rift warrior outfit first.", npc, creature)
		end
	elseif isInArray({'first', 'second'}, message:lower()) and npcHandler:getTopic(playerId) == 3 then
		if message:lower() == 'first' then
			if not(player:hasOutfit(846, 1)) and not(player:hasOutfit(845, 1)) then
				if player:removeItem(22516, 100) then
					npcHandler:say("Ah, excellent. Obtain the first addon for your rift warrior outfit.", npc, creature)
					player:addOutfitAddon(846, 1)
					player:addOutfitAddon(845, 1)
					if (player:hasOutfit(846, 1) or player:hasOutfit(845, 1)) and (player:hasOutfit(846, 2) or player:hasOutfit(845, 2)) then
						player:addAchievement("Rift Warrior")
					end
				else
					npcHandler:say("Sorry, friend, but one good turn deserves another. Bring enough ".. ItemType(Npc():getCurrency()):getPluralName():lower() .." and it's a deal.", npc, creature)
				end
			else
				npcHandler:say("Sorry, friend, you already have the first Rift Warrior addon.", npc, creature)
			end
		elseif message:lower() == 'second' then
			if not(player:hasOutfit(846, 2)) and not(player:hasOutfit(845, 2)) then
				if player:removeItem(22516, 100) then
					npcHandler:say("Ah, excellent. Obtain the second addon for your rift warrior outfit.", npc, creature)
					player:addOutfitAddon(846, 2)
					player:addOutfitAddon(845, 2)
					if (player:hasOutfit(846, 1) or player:hasOutfit(845, 1)) and (player:hasOutfit(846, 2) or player:hasOutfit(845, 2)) then
						player:addAchievement("Rift Warrior")
					end
				else
					npcHandler:say("Sorry, friend, but one good turn deserves another. Bring enough ".. ItemType(Npc():getCurrency()):getPluralName():lower() .." and it's a deal.", npc, creature)
				end
			else
				npcHandler:say("Sorry, friend, you already have the second Rift Warrior addon.", npc, creature)
			end
		end
		npcHandler:setTopic(playerId, 0)
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Blessings, Player! How may I be of service? Do you wish to trade some {token}s, or would you like some {information} or {talk}?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)