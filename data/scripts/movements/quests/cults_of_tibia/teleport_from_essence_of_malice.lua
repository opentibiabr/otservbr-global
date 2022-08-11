local Teleport = MoveEvent()

function Teleport.onStepIn(player)
	if not player then
		return true
	end
	player:teleportTo(Position(32349, 31668, 10))
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

Teleport:position({x = 33085, y = 31963, z = 15})
Teleport:register()
