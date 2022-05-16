local setting = {
	arenaPosition = Position(33154, 31415, 7),
	successPosition = Position(33145, 31419, 7),
}

local function completeTest(cid)
	local player = Player(cid)
	if not player then
		return false
	end
	if player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) == 17 then
		player:teleportTo(setting.successPosition)
		player:setStorageValue(Storage.Quest.TheNewFrontier.Questline, 18)
		player:setStorageValue(Storage.Quest.TheNewFrontier.Mission06, 3) --Questlog, The New Frontier Quest "Mission 06: Days Of Doom"
		player:say("You have braved the tiral of the Mooh'tah master.", TALKTYPE_MONSTER_SAY)
	end
end

local minotaurBoss = MoveEvent()

function minotaurBoss.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if Position.hasPlayer(setting.arenaPosition, 6, 6) or player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) ~= 17 then
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have access to this area.")
	end

	if player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) == 17 then
		addEvent(completeTest, 2 * 60 * 1000, player.uid)
		player:teleportTo(setting.arenaPosition)
		setting.arenaPosition:sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
end

minotaurBoss:type("stepin")
minotaurBoss:aid(12135)
minotaurBoss:register()
