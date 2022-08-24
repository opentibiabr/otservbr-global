local config = {
	{position = {x = 33615, y = 31422, z = 10}, destination = {x = 33988, y = 31001, z = 9}},  -- hunt infernal demon
	{position = {x = 33618, y = 31422, z = 10}, destination = {x = 33948, y = 31027, z = 11}}, -- hunt rotten
	{position = {x = 33621, y = 31422, z = 10}, destination = {x = 33881, y = 31001, z = 8}},  -- hunt bony sea devil
	{position = {x = 33624, y = 31422, z = 10}, destination = {x = 33856, y = 31833, z = 3}},  -- hunt cloak
	{position = {x = 33627, y = 31422, z = 10}, destination = {x = 33887, y = 31188, z = 10}}, -- hunt many faces
	{position = {x = 33936, y = 31092, z = 8}, destination = {x = 34100, y = 31063, z = 11}}, -- goshnar's spite entrance
	{position = {x = 33937, y = 31217, z = 11}, destination = {x = 34096, y = 31091, z = 11}}, -- goshnar's greed entrance
	{position = {x = 33999, y = 31078, z = 11}, destination = {x = 34068, y = 30995, z = 11}}, -- goshnar's malice entrance
	{position = {x = 33856, y = 31885, z = 5}, destination = {x = 33857, y = 31865, z = 6}},  -- goshnar's cruelty entrance
	{position = {x = 33888, y = 31874, z = 3}, destination = {x = 33830, y = 31881, z = 4}},  -- 1st to 2nd floor cloak
	{position = {x = 33828, y = 31881, z = 4}, destination = {x = 33856, y = 31890, z = 5}}  -- 2nd to 3rd floor cloak
	}	
	
local portal = {position = {x = 33890, y = 31018, z = 12}, destination = {x = 34154, y = 30996, z = 11}} -- goshnar's hatred entrance

local soulWarEntrances = MoveEvent()
function soulWarEntrances.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getLevel() < 250 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need at least level 250 to enter.")
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return false
	end
	for value in pairs(config) do
		if Position(config[value].position) == player:getPosition() then
			player:teleportTo(Position(config[value].destination))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	end
end

soulWarEntrances:type("stepin")
for value in pairs(config) do
	soulWarEntrances:position(config[value].position)
end
soulWarEntrances:register()

local portalHatred = Action()
function portalHatred.onUse(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getLevel() < 250 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need at least level 250 to enter.")
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return false
	end
	doSendMagicEffect(item:getPosition(), CONST_ME_TELEPORT)
	player:teleportTo(Position(portal.destination))
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)		
	return true
end

portalHatred:position(portal.position)
portalHatred:register()
