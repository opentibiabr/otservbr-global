local tiquandasRevengeKill = CreatureEvent("TiquandasRevengeKill")
function tiquandasRevengeKill.onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end
	if targetMonster:getName():lower() ~= "tiquandas revenge" then
		return true
	end
	local player = creature:getPlayer()
	if player:getStorageValue(Storage.KillingInTheNameOf.MissionTiquandasRevenge) == 1 then
		player:setStorageValue(Storage.KillingInTheNameOf.MissionTiquandasRevenge, 2)
	end
	return true
end

tiquandasRevengeKill:register()
