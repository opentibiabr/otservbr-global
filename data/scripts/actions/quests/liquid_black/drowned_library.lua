local bookshelves = {15469,15470,15471,15472,15473,15474}

local keyToTheDrownedLibrary = Action()

function keyToTheDrownedLibrary.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if isInArray(bookshelves, target.itemid) then
		local random = math.random(1, 100);

		if (random < 50) then
			local book = math.random(1, 3)

			if book == 1 then player:addItem(15573, 1) end
			if book == 2 then player:addItem(15574, 1) end
			if book == 3 then player:addItem(15575, 1) end

			toPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
		else
			toPosition:sendMagicEffect(CONST_ME_POFF)
		end

		player:removeItem(15422, 1)
	else
		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
	end
	
	return true
end

keyToTheDrownedLibrary:id(15422)
keyToTheDrownedLibrary:register()
