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
-- Green Djinns or Efreets / Blue Djinns or Marids
	if player:getStorageValue(Storage.KillingInTheNameOf.greendjinnTask) == 0 then
		if isInArray(tasks[45].creatures, targetName) then
			for d = 1, #tasks[45].creatures do
				if targetName == tasks[45].creatures[d] then
					local greendjinns = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.greendjinnCount + d - 1
					player:setStorageValue(greendjinns, player:getStorageValue(greendjinns) + 1)
				end
			end
			local killAmountGreenDjinns = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.greendjinnCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.greendjinnCount, killAmountGreenDjinns + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.greendjinnTask, player:getStorageValue(Storage.KillingInTheNameOf.greendjinnTask)) -- fake update quest tracker
		end
	end
	if player:getStorageValue(Storage.KillingInTheNameOf.bluedjinnTask) == 0 then
		if isInArray(tasks[46].creatures, targetName) then
			for e = 1, #tasks[46].creatures do
				if targetName == tasks[46].creatures[e] then
					local bluedjinns = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.bluedjinnCount + e - 1
					player:setStorageValue(bluedjinns, player:getStorageValue(bluedjinns) + 1)
				end
			end
			local killAmountBlueDjinns = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.bluedjinnCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.bluedjinnCount, killAmountBlueDjinns + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.bluedjinnTask, player:getStorageValue(Storage.KillingInTheNameOf.bluedjinnTask)) -- fake update quest tracker
		end
	end
-- Pirates
	if player:getStorageValue(Storage.KillingInTheNameOf.pirateTask) == 0 then
		if isInArray(tasks[47].creatures, targetName) then
			for f = 1, #tasks[47].creatures do
				if targetName == tasks[47].creatures[f] then
					local pirates = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.piratemarauderCount + f - 1
					player:setStorageValue(pirates, player:getStorageValue(pirates) + 1)
				end
			end
			local killAmountPirates = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.pirateCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.pirateCount, killAmountPirates + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.pirateTask, player:getStorageValue(Storage.KillingInTheNameOf.pirateTask)) -- fake update quest tracker
		end
	end
-- Trolls
	if player:getStorageValue(Storage.KillingInTheNameOf.trollTask) == 0 then
		if isInArray(tasks[1].creatures, targetName) then
			for g = 1, #tasks[1].creatures do
				if targetName == tasks[1].creatures[g] then
					local trolls = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.trollCount + g - 1
					player:setStorageValue(trolls, player:getStorageValue(trolls) + 1)
				end
			end
			local killAmountTrolls = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.trollCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.trollCount, killAmountTrolls + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.trollTask, player:getStorageValue(Storage.KillingInTheNameOf.trollTask)) -- fake update quest tracker
		end
	end
-- Goblins
	if player:getStorageValue(Storage.KillingInTheNameOf.goblinTask) == 0 then
		if isInArray(tasks[2].creatures, targetName) then
			for h = 1, #tasks[2].creatures do
				if targetName == tasks[2].creatures[h] then
					local goblins = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.goblinCount + h - 1
					player:setStorageValue(goblins, player:getStorageValue(goblins) + 1)
				end
			end
			local killAmountGoblins = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.goblinCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.goblinCount, killAmountGoblins + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.goblinTask, player:getStorageValue(Storage.KillingInTheNameOf.goblinTask)) -- fake update quest tracker
		end
	end
-- Rotworms
	if player:getStorageValue(Storage.KillingInTheNameOf.rotwormTask) == 0 then
		if isInArray(tasks[54].creatures, targetName) then
			for j = 1, #tasks[54].creatures do
				if targetName == tasks[54].creatures[j] then
					local rotworms = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.rotwormCount + j - 1
					player:setStorageValue(rotworms, player:getStorageValue(rotworms) + 1)
				end
			end
			local killAmountRotworms = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.rotwormCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.rotwormCount, killAmountRotworms + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.rotwormTask, player:getStorageValue(Storage.KillingInTheNameOf.rotwormTask)) -- fake update quest tracker
		end
	end
-- Cyclops
	if player:getStorageValue(Storage.KillingInTheNameOf.cyclopsTask) == 0 then
		if isInArray(tasks[55].creatures, targetName) then
			for k = 1, #tasks[55].creatures do
				if targetName == tasks[55].creatures[k] then
					local cyclops = Storage.Quest.U8_5.KillingInTheNameOf.altKillCount.cyclopsCount + k - 1
					player:setStorageValue(cyclops, player:getStorageValue(cyclops) + 1)
				end
			end
			local killAmountCyclops = player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.cyclopsCount)
			player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.monsterKillCount.cyclopsCount, killAmountCyclops + 1)
			player:setStorageValue(Storage.KillingInTheNameOf.cyclopsTask, player:getStorageValue(Storage.KillingInTheNameOf.cyclopsTask)) -- fake update quest tracker
		end
	end
	return true
end

killingInTheNameOfKill:register()
