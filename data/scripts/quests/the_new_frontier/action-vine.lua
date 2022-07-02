local config = {
	[4] = Position(33022, 31536, 6),
	[6] = Position(33020, 31536, 4)
}

local theNewFrontierVine = Action()

function theNewFrontierVine.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetPosition = config[player:getPosition().z]
	if not targetPosition then
		return true
	end

	player:teleportTo(targetPosition)
	targetPosition:sendMagicEffect(CONST_ME_POFF)
	return true
end

theNewFrontierVine:aid(40013)
theNewFrontierVine:register()
