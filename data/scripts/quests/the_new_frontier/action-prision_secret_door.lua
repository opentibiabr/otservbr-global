local prisionSecretDoor = Action()
function prisionSecretDoor.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if player:getStorageValue(Storage.Quest.TheNewFrontier.Mission7_HiddenNote) == 1 then
		local destination = Position(33170, 31247, 11)
		player:teleportTo(destination)
		destination:sendMagicEffect(CONST_ME_POFF)
		if player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) < 23 then
			player:setStorageValue(Storage.Quest.TheNewFrontier.Questline, 23)
		end
		return true
	end

end

prisionSecretDoor:uid(3156)
prisionSecretDoor:register()