local bosses = {
	["sir baeloc"] = {storage = Storage.Quest.U12_20.GraveDanger.BaelocNictrosKilled},
	["count vlarkorth"] = {storage = Storage.Quest.U12_20.GraveDanger.CountVlarkorthKilled},
	["duke krule"] = {storage = Storage.Quest.U12_20.GraveDanger.DukeKruleKilled},
	["earl osam"] = {storage = Storage.Quest.U12_20.GraveDanger.EarlOsamKilled},
	["lord azaram"] = {storage = Storage.Quest.U12_20.GraveDanger.LordAzaramKilled},
	["king zelos"] = {storage = Storage.Quest.U12_20.GraveDanger.KingZelosKilled},
}

local bossesGraveDanger = CreatureEvent("GraveDangerKill")
function bossesGraveDanger.onKill(creature, target)
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
	local bossesKilled = 0
	for value in pairs(bosses) do
		if creature:getStorageValue(bosses[value].storage) > 0 then
			bossesKilled = bossesKilled + 1
		end
	end
	if bossesKilled >= 5 then -- number of mini bosses
		creature:setStorageValue(Storage.Quest.U12_20.GraveDanger.KingZelosDoor, 1)
	end
	return true
end
bossesGraveDanger:register()