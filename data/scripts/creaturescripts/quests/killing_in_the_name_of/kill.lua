local taskBoss = {
	[0] = "the snapper",
	[1] = "hide",
	[2] = "deathbine",
	[3] = "the bloodtusk",
	[4] = "shardhead",
	[5] = "esmeralda",
	[6] = "fleshcrawler",
	[7] = "ribstride",
	[8] = "the bloodweb",
	[9] = "thul",
	[10] = "the old widow",
	[11] = "hemming",
	[12] = "tormentor",
	[13] = "flameborn",
	[14] = "fazzrah",
	[15] = "tromphonyte",
	[16] = "sulphur scuttler",
	[17] = "bruise payne",
	[18] = "the many",
	[19] = "the noxious spawn",
	[20] = "gorgo",
	[21] = "stonecracker",
	[22] = "leviathan",
	[23] = "kerberos",
	[24] = "ethershreck",
	[25] = "paiz the pauperizer",
	[26] = "bretzecutioner",
	[27] = "zanakeph",
	[28] = "tiquandas revenge",
	[29] = "demodras",
	[30] = "necropharus",
	[31] = "the horned fox"
}
local killCounter = Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.placeHolder00
local bossKillCount = Storage.Quest.U8_5.KillingInTheNameOf.bossKillCount.snapperCount
local killingInTheNameOfKill = CreatureEvent("KillingInTheNameOfKill")
function killingInTheNameOfKill.onKill(player, target)
	if target:isPlayer() or target:getMaster() then
		return true
	end

	local targetName, startedTasks, taskId = target:getName():lower(), player:getStartedTasks()
	for i = 1, #startedTasks do
		taskId = startedTasks[i]
		if isInArray(tasks[taskId].creatures, targetName) then
			if #tasks[taskId].creatures > 1 then
				for a = 1, #tasks[taskId].creatures do
					if targetName == tasks[taskId].creatures[a] then
						if tasks[taskId].raceName == "Apes" then
							local apes = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.kongraCount + a - 1
							player:setStorageValue(apes, player:getStorageValue(apes) + 1)
						elseif	tasks[taskId].raceName == "Quara Scouts" then
							local scouts = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.quaraconstrictorscoutCount + a - 1
							player:setStorageValue(scouts, player:getStorageValue(scouts) + 1)
						elseif	tasks[taskId].raceName == "Underwater Quara" then
							local underwater = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.quaraconstrictorCount + a - 1
							player:setStorageValue(underwater, player:getStorageValue(underwater) + 1)
						elseif	tasks[taskId].raceName == "Nightmares" then
							local nightmares = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.nightmareCount + a - 1
							player:setStorageValue(nightmares, player:getStorageValue(nightmares) + 1)
						elseif	tasks[taskId].raceName == "High Class Lizards" then
							local lizards = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.lizardchosenCount + a - 1
							player:setStorageValue(lizards, player:getStorageValue(lizards) + 1)
						elseif	tasks[taskId].raceName == "Sea Serpents" then
							local serpents = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.seaserpentCount + a - 1
							player:setStorageValue(serpents, player:getStorageValue(serpents) + 1)
						elseif	tasks[taskId].raceName == "Drakens" then
							local drakens = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.drakenabominationCount + a - 1
							player:setStorageValue(drakens, player:getStorageValue(drakens) + 1)
						end
					end
				end
			end
			local killAmount = player:getStorageValue(killCounter + taskId)
			player:setStorageValue(killCounter + taskId, killAmount + 1)
			player:setStorageValue(KILLSSTORAGE_BASE + taskId, player:getStorageValue(KILLSSTORAGE_BASE + taskId)) -- fake update quest tracker
		end
	end
	for j = 0, #taskBoss do
		if targetName == taskBoss[j] then
			if player:getStorageValue(bossKillCount + j) == 0 then
				player:setStorageValue(bossKillCount + j, 1)
			end
		end
	end
-- Minotaurs
	if player:getStorageValue(Storage.KillingInTheNameOf.BudrikMinos) == 0 then
		if isInArray(tasks[49].creatures, targetName) then
			for b = 1, #tasks[49].creatures do
				if targetName == tasks[49].creatures[b] then
					local minotaurs = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.minotaurCount + b - 1
					player:setStorageValue(minotaurs, player:getStorageValue(minotaurs) + 1)
				end
			end
			local killAmountMinotaurs = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.minotaurCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.minotaurCount, killAmountMinotaurs + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.BudrikMinos, player:getStorageValue(Storage.KillingInTheNameOf.BudrikMinos)) -- fake update quest tracker
		end
	end
-- Necromancers and Priestesses
	if player:getStorageValue(Storage.KillingInTheNameOf.LugriNecromancers) == 0 or player:getStorageValue(Storage.KillingInTheNameOf.LugriNecromancers) == 3 then
		if isInArray(tasks[50].creatures, targetName) then
			for c = 1, #tasks[50].creatures do
				if targetName == tasks[50].creatures[c] then
					local necromancers = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.necromancerCount + c - 1
					player:setStorageValue(necromancers, player:getStorageValue(necromancers) + 1)
				end
			end
			local killAmountNecromancers = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.necromancerCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.necromancerCount, killAmountNecromancers + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.LugriNecromancers, player:getStorageValue(Storage.KillingInTheNameOf.LugriNecromancers)) -- fake update quest tracker
		end
	end
	return true
end

killingInTheNameOfKill:register()
