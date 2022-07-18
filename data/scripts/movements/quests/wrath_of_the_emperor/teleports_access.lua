local config =
{
	[35004] = {Access = Storage.WrathoftheEmperor.TeleportAccess.Rebel, teleportPos = Position(33136, 31248, 6), destinationA = Position(33211, 31065, 9), destinationB = Position(33138, 31248, 6)},
	[35005] = {Access = Storage.WrathoftheEmperor.TeleportAccess.Zlak, teleportPos = Position(33216, 31067, 9), destinationA = Position(33078, 31219, 8), destinationB = Position(33216, 31069, 9)},
	[35006] = {Access = Storage.WrathoftheEmperor.TeleportAccess.Zizzle, teleportPos = Position(33084, 31213, 8), destinationA = Position(33094, 31122, 12), destinationB = Position(33083, 31214, 8), itemPos = Position(33086, 31214, 8)},
	[35007] = {Access = Storage.WrathoftheEmperor.TeleportAccess.sleepingDragon, teleportPos = Position(33111, 31123, 12), destinationA = Position(33240, 31247, 10), destinationB = Position(33109, 31122, 12), destinationC = Position(33028, 31086, 13)},
	[35008] = {Access = Storage.WrathoftheEmperor.TeleportAccess.awarnessEmperor, teleportPos = Position(33072, 31150, 15), destinationA = Position(33361, 31397, 9), destinationB = Position(33071, 31152, 15)},
	[35009] = {Access = Storage.WrathoftheEmperor.TeleportAccess.bossRoom, teleportPos = Position(33136, 31249, 6), destinationA = Position(33360, 31397, 9), destinationB = Position(33138, 31249, 6)},
	[50374] = {Access = Storage.WrathoftheEmperor.TeleportAccess.innerSanctum, teleportPos = Position(33028, 31084, 13), destinationA = Position(33109, 31122, 12), destinationB = Position(33028, 31086, 13)}
}

local teleport = MoveEvent()

function teleport.onStepIn(player, item, position, fromPosition)
	if not player then
		return true
	end
	for i, v in pairs(config) do
		if item.actionid == i then
			if player:getStorageValue(config[i].Access) == 1 then
				if position == config[i].teleportPos then
					player:teleportTo(config[i].destinationA)
					config[i].destinationA:sendMagicEffect(CONST_ME_TELEPORT)
				else
					player:teleportTo(config[i].destinationB)
					config[i].destinationB:sendMagicEffect(CONST_ME_TELEPORT)
				end
			elseif player:getStorageValue(config[i].Access) == 2 then
				if position == config[i].teleportPos then
					player:teleportTo(config[i].destinationC)
					config[i].destinationC:sendMagicEffect(CONST_ME_TELEPORT)
				else
					player:teleportTo(config[i].destinationB)
					config[i].destinationB:sendMagicEffect(CONST_ME_TELEPORT)
				end
			elseif player:getStorageValue(config[i].Access) == 3 then
				if position == config[i].teleportPos then
					if Tile(config[i].itemPos):getItemById(11673) then
						config[i].itemPos:removeItem(11673, 1)
						player:teleportTo(config[i].destinationA)
						config[i].destinationA:sendMagicEffect(CONST_ME_TELEPORT)
					else
						player:teleportTo(fromPosition)
						fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
						player:say("This teleporter constantly flickers. It seems to be instable and completely unworking.", TALKTYPE_MONSTER_SAY)
					end
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

for index, value in pairs(config) do
	teleport:aid(index)
end
teleport:register()
