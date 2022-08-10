local Teleport = MoveEvent()

function Teleport.onStepIn(player)
	if not player then
		return true
	end
	player:teleportTo(Position(33492, 31546, 13))
	return true
end

Teleport:position({x = 32174, y = 31916, z = 8})
Teleport:register()
