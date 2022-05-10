local perfectlyForgedKey = Action()

function perfectlyForgedKey.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		if target.actionid == 10123 or target.actionid == 10124 or target.actionid == 10125 then
			if target.actionid == 10123 and player:getStorageValue(Storage.Quest.HiddenThreats.CorymWorksDoor01) < 0 then
				player:setStorageValue(Storage.Quest.HiddenThreats.CorymWorksDoor01, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The forged key unlocks the door.")
				return true
			elseif target.actionid == 10124 and player:getStorageValue(Storage.Quest.HiddenThreats.CorymWorksDoor02) < 0 then
				player:setStorageValue(Storage.Quest.HiddenThreats.CorymWorksDoor02, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The forged key unlocks the door.")
				return true
			elseif target.actionid == 10125 and player:getStorageValue(Storage.Quest.HiddenThreats.CorymWorksDoor03) < 0 then
				player:setStorageValue(Storage.Quest.HiddenThreats.CorymWorksDoor03, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The forged key unlocks the door.")
				return true
			end
		end
end

perfectlyForgedKey:id(27269)
perfectlyForgedKey:register()
