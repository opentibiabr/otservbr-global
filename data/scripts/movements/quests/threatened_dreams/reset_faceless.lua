local function revertAid(position)
	local tile = Tile(position):getItemById(8284) -- Tile item ID that requires the AID
	if tile then
		tile:setAttribute(ITEM_ATTRIBUTE_ACTIONID, 51010) -- Requires AID to be placed on map on all 13 sqm's that are used to activate the boss on global.
	end
end

local facelessImmune = MoveEvent()
function facelessImmune.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local spark = Tile(position):getItemById(8284)
	if spark then
        if Game.getStorageValue(43010) < 1 then
            return true
        elseif Game.getStorageValue(43010) < 13 then
            item:getPosition():sendMagicEffect(CONST_ME_ENERGYHIT)
            item:removeAttribute(ITEM_ATTRIBUTE_ACTIONID)
            Game.setStorageValue(43010, Game.getStorageValue(43010) +1)
            addEvent(revertAid, 60 * 1000, position)
        elseif Game.getStorageValue(43010) == 13 then
            item:getPosition():sendMagicEffect(CONST_ME_ENERGYHIT)
            Game.setStorageValue(43010, 0)
            addEvent(revertAid, 60 * 1000, position)
        end
	end
	return true
end

facelessImmune:type("stepin")
facelessImmune:aid(51010)
facelessImmune:register()