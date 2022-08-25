local bosses = {
	["ghulosh"] = {storage = Storage.Quest.U11_80.TheSecretLibrary.GhuloshKilled},
	["gorzindel"] = {storage = Storage.Quest.U11_80.TheSecretLibrary.GorzindelKilled},
	["lokathmor"] = {storage = Storage.Quest.U11_80.TheSecretLibrary.LokathmorKilled},
	["mazzinor"] = {storage = Storage.Quest.U11_80.TheSecretLibrary.MazzinorKilled},
	["scourge of oblivion"] = {storage = Storage.Quest.U11_80.TheSecretLibrary.ScourgeOfOblivionKilled},
}

local bossesSecretLibraryKill = CreatureEvent("bossesSecretLibraryKill")
function bossesSecretLibraryKill.onKill(player, target)
	local targetMonster = target:getMonster()
	if not targetMonster or targetMonster:getMaster() then
		return true
	end
	local bossConfig = bosses[targetMonster:getName():lower()]
	if not bossConfig then
		return true
	end
	for key, value in pairs(targetMonster:getDamageMap()) do
		local attackerPlayer = Player(key)
		if attackerPlayer then
			if bossConfig.storage then
				attackerPlayer:setStorageValue(bossConfig.storage, 1)
			end
		end
	end
	local bosseskilled = 0
	for value in pairs(bosses) do
		if player:getStorageValue(bosses[value].storage) > 0 then
			bosseskilled = bosseskilled + 1
		end
	end
	if bosseskilled == 4 then
		player:setStorageValue(Storage.Quest.U11_80.TheSecretLibrary.ScourgeOfOblivionDoor, 1)
	end
	return true
end
bossesSecretLibraryKill:register()