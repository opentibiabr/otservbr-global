local positions = {
    {position = {x = 33615, y = 31422, z = 10}, destination = {x = 33948, y = 31029, z = 11}},
    {position = {x = 33618, y = 31422, z = 10}, destination = {x = 33988, y = 31001, z = 9}},
    {position = {x = 33621, y = 31422, z = 10}, destination = {x = 33880, y = 31002, z = 8}},
    {position = {x = 33624, y = 31422, z = 10}, destination = {x = 33857, y = 31833, z = 3}},
    {position = {x = 33627, y = 31422, z = 10}, destination = {x = 33888, y = 31185, z = 10}}
}

local soulwarhuntsaccess = MoveEvent()

function soulwarhuntsaccess.onStepIn(creature, item, position, fromPosition)
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
    soulwarhuntsaccess:position(value.position)
end

soulwarhuntsaccess:register()