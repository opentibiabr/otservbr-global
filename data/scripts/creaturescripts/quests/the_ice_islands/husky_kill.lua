local huskyKill = CreatureEvent("HuskyKill")

function huskyKill.onKill(player, target)
	if target:isPlayer() or target:getMaster() then
		return true
	end

	if not target:getName():lower() == "husky" then
		return true
	end
	player:setStorageValue(Storage.TheIceIslands.HuskyKill, player:getStorageValue(Storage.TheIceIslands.HuskyKill) + 1)
	return true
end

huskyKill:register()
