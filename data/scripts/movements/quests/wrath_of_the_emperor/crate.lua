function catchPlayer(player)
	player:removeCondition(CONDITION_OUTFIT)
	player:removeItem(11328, 1)
	player:setStorageValue(Storage.WrathoftheEmperor.GuardcaughtYou, player:getStorageValue(Storage.WrathoftheEmperor.GuardcaughtYou) + 1)
	player:teleportTo({x = 33361, y = 31206, z = 8}, false)
	if player:getStorageValue(Storage.WrathoftheEmperor.GuardcaughtYou) == 1 then 
		player:say("The guards have spotted you. You were forcibly dragged into a small cell. It looks like you need to build another disguise.", TALKTYPE_MONSTER_SAY)
	end
	return true
end

local trapDoors =
{
	{doorPos = Position(33385, 31139, 8)},
	{doorPos = Position(33385, 31134, 8)},
	{doorPos = Position(33385, 31126, 8)},
	{doorPos = Position(33385, 31119, 8)},
	{doorPos = Position(33385, 31118, 8)},
	{doorPos = Position(33380, 31093, 8)},
	{doorPos = Position(33380, 31085, 8)}
}

local crate = MoveEvent()

function crate.onStepIn(player, item, position, fromPosition, toPosition)
	if not player then
		return true
	end
	-- if item.actionid == 8015 then
		-- player:say("You hear guards moving behind doors in the distance. \z
			-- If you have any sort of disguise with you, this is the moment to use it.", TALKTYPE_MONSTER_SAY)
	if item.actionid == 50372 then
		player:setStorageValue(Storage.WrathoftheEmperor.GuardcaughtYou, 0)		
		catchPlayer(player)
	elseif item.actionid == 50369 then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light01) ~= 1 then
			catchPlayer(player)
		end
	elseif item.actionid == 50370 then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light02) ~= 1 then
			catchPlayer(player)
		end
	elseif item.actionid == 50371 then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light03) ~= 1 then
			catchPlayer(player)
		end
	elseif item.actionid == 50368 and player:getStorageValue(Storage.WrathoftheEmperor.Message) ~= 1 then
		player:say("Guards heavily patrol this area. Try to stay hidden and do not draw any attention to yourself by trying to attack.", TALKTYPE_MONSTER_SAY)
		player:setStorageValue(Storage.WrathoftheEmperor.Message, 1)
	elseif item.actionid == 50373 then
		if player:removeCondition(CONDITION_OUTFIT) then
			player:say("On reaching the watchtower you remove your temporary disguise.", TALKTYPE_MONSTER_SAY)
		end
	elseif item.actionid == 50367 then
		if player:getOutfit().lookTypeEx ~= 11328 then
			return catchPlayer(player)
		end
		for i = 1, #trapDoors do
			local pos = trapDoors[i].doorPos
			if isInArray({Position(pos.x+1, pos.y, 8), Position(pos.x+2, pos.y, 8), Position(pos.x+3, pos.y, 8)}, player:getPosition()) and Tile(pos):getItemById(11257) then
				catchPlayer(player)
			elseif isInArray({Position(pos.x+1, pos.y, 8), Position(pos.x+2, pos.y, 8), Position(pos.x+3, pos.y, 8)}, player:getPosition()) and Tile(pos):getItemById(11258) then
				return true
			end
		end
	end
	return true
end

crate:type("stepin")
crate:aid(50367, 50368, 50369, 50370, 50371, 50372, 50373)
crate:register()
