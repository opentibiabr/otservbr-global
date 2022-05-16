local prision = Position(33170, 31253, 11)

local lizardsTrap = MoveEvent()

function lizardsTrap.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) == 21
	and player:getStorageValue(Storage.Quest.TheNewFrontier.Mission07) == 1
	and player:getStorageValue(Storage.Quest.TheNewFrontier.Mission08) < 1 then
		player:setStorageValue(Storage.Quest.TheNewFrontier.Mission07, 2) -- Questlog, "Mission 07: Messengers Of Peace"
		player:setStorageValue(Storage.Quest.TheNewFrontier.Mission08, 1) -- Questlog, "Mission 08: An Offer You Can't Refuse"
		player:setStorageValue(Storage.Quest.TheNewFrontier.Questline, 22)
		prision:say("So far for the negotiating peace. Now you have other problems to handle.", TALKTYPE_MONSTER_SAY)
	end
	player:getPosition():sendMagicEffect(CONST_ME_POFF)
	player:teleportTo(prision)
	player:getPosition():sendMagicEffect(CONST_ME_POFF)
	return true
end

lizardsTrap:aid(50364)
lizardsTrap:register()
