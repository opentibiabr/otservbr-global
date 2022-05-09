local corymChests = MoveEvent()

function corymChests.onStepOut(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getStorageValue(Storage.Quest.HiddenThreats.Reward.keyFragment01) == 1 and player:getStorageValue(Storage.Quest.HiddenThreats.Reward.keyFragment02) == 1 and player:getStorageValue(Storage.Quest.HiddenThreats.QuestLine) == 2 then
		player:setStorageValue(Storage.Quest.HiddenThreats.QuestLine, 3)
	end
	return true
end

corymChests:aid(50364)
corymChests:register()