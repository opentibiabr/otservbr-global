local condition = Condition(CONDITION_OUTFIT)
condition:setTicks(2000)
condition:setOutfit({lookType = 33}) -- skeleton looktype

local taskXRay = MoveEvent()

function taskXRay.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if item.actionid == 9200 then
		if player:getStorageValue(Storage.BigfootBurden.QuestLine) == 8 then
			player:addCondition(condition)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		end
	elseif item.actionid == 9201 then
		if player:getStorageValue(Storage.BigfootBurden.QuestLine) == 8 then
			player:addCondition(condition)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
			player:setStorageValue(Storage.BigfootBurden.QuestLine, 10)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
			"You have been succesfully g-rayed. Now let Doctor Gnomedix inspect your ears!")
		end
	end
	return true
end

taskXRay:type("stepin")
taskXRay:aid(9200, 9201)
taskXRay:register()
