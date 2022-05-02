local positions = {
    {position = {x = 32962, y = 31497, z = 7}, destination = {x = 33647, y = 31445, z = 10}},
    {position = {x = 32963, y = 31497, z = 7}, destination = {x = 33647, y = 31445, z = 10}}
}

local bossTeleport = MoveEvent()

function bossTeleport.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    for index, value in pairs(positions) do
        if Tile(position) == Tile(value.position) then
            player:teleportTo(value.destination)
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        end
    end
    return true
end

for index, value in pairs(positions) do
    bossTeleport:position(value.position)
end

bossTeleport:register()