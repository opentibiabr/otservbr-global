local TheNewFrontier = Storage.Quest.U8_54.TheNewFrontier

local prisionSecretDoor = Action()

function prisionSecretDoor.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(TheNewFrontier.Mission07.HiddenNote) == 1 then
		local destination = Position(33170, 31247, 11)
		player:teleportTo(destination)
		destination:sendMagicEffect(CONST_ME_POFF)
		if player:getStorageValue(TheNewFrontier.Questline) < 23 then
			player:setStorageValue(TheNewFrontier.Questline, 23)
		end
		return true
	end

end

prisionSecretDoor:aid(40014)
prisionSecretDoor:register()
