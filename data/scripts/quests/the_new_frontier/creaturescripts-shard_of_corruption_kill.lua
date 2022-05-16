local shardOfCorruptionKill = CreatureEvent("ShardOfCorruptionKill")
function shardOfCorruptionKill.onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	if targetMonster:getName():lower() ~= 'shard of corruption' then
		return true
	end

	local player = creature:getPlayer()
	if player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) == 11 then
		player:setStorageValue(Storage.Quest.TheNewFrontier.Questline, 12)
	end
	return true
end

shardOfCorruptionKill:register()
