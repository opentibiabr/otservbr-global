local demodrasKill = CreatureEvent("DemodrasKill")
function demodrasKill.onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end
	if targetMonster:getName():lower() ~= "demodras" then
		return true
	end
	local player = creature:getPlayer()
	if player:getStorageValue(Storage.KillingInTheNameOf.MissionDemodras) == 1 then
		player:setStorageValue(Storage.KillingInTheNameOf.MissionDemodras, 2)
	end
	return true
end

demodrasKill:register()
