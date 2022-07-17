local config =
{
	toZizzle = Position(33093, 31122, 12),
	itemPos = Position(33086, 31214, 8),
	fromZizzle = Position(33083, 31214, 8),
	checkPos = Position(33084, 31213, 8)
}

local teleport = MoveEvent()

function teleport.onStepIn(player, item, position, fromPosition)
	if not player then
		return true
	end
	if player:getPosition() == config.toZizzle then
		return true
	end
	if player:getStorageValue(Storage.WrathoftheEmperor.TeleportAccess.Zizzle) == 1 then
		if position == config.checkPos then
			if Tile(config.itemPos):getItemById(11673) then
				config.itemPos:removeItem(11673, 1)
				player:teleportTo(config.toZizzle)
				config.toZizzle:sendMagicEffect(CONST_ME_TELEPORT)
			else
				player:teleportTo(fromPosition)
				fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
			end
		else
			player:teleportTo(config.fromZizzle)
			config.fromZizzle:sendMagicEffect(CONST_ME_TELEPORT)
		end
	else
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

teleport:aid(35006)
teleport:register()
