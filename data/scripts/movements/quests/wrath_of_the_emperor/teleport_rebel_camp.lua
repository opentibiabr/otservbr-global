local config = {teleportPos = Position(33136, 31248, 6), campPos = Position(33211, 31065, 9), plainPos = Position(33138, 31248, 6)}
local teleport = MoveEvent()

function teleport.onStepIn(player, item, position, fromPosition)
	if not player then
		return true
	end
	if player:getStorageValue(Storage.WrathoftheEmperor.TeleportAccess) == 1 then
		if position == config.teleportPos then 
			player:teleportTo(config.campPos)
			config.campPos:sendMagicEffect(CONST_ME_TELEPORT)
		else
			player:teleportTo(config.plainPos)
			config.plainPos:sendMagicEffect(CONST_ME_TELEPORT)
		end
	else
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

teleport:aid(35004)
teleport:register()
