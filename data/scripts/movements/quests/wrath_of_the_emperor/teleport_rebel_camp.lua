local config =
{
	[35004] = {Access = Storage.WrathoftheEmperor.TeleportAccess.Rebel, teleportPos = Position(33136, 31248, 6), destinationA = Position(33211, 31065, 9), destinationB = Position(33138, 31248, 6)},
	[35005] = {Access = Storage.WrathoftheEmperor.TeleportAccess.Zlak, teleportPos = Position(33216, 31067, 9), destinationA = Position(33078, 31219, 8), destinationB = Position(33216, 31069, 9)}
}

local teleport = MoveEvent()

function teleport.onStepIn(player, item, position, fromPosition)
	if not player then
		return true
	end
	for i = 35004, 35005 do
		if item.actionid == i then
			if player:getStorageValue(config[i].Access) == 1 then
				if position == config[i].teleportPos then
					player:teleportTo(config[i].destinationA)
					config[i].destinationA:sendMagicEffect(CONST_ME_TELEPORT)
				else
					player:teleportTo(config[i].destinationB)
					config[i].destinationB:sendMagicEffect(CONST_ME_TELEPORT)
				end
			else
				player:teleportTo(fromPosition)
				fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
			end
		end
	end
	return true
end

teleport:aid(35004, 35005)
teleport:register()
