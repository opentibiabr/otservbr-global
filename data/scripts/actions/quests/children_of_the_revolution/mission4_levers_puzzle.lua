local puzzle = {
[1] = Position(33352, 31126, 5),
[2] = Position(33353, 31126, 5),
[3] = Position(33354, 31126, 5),
[4] = Position(33355, 31126, 5)
}

local function revertLever(fromPosition)
	if Tile(fromPosition):getItemById(9126) then
		Tile(fromPosition):getItemById(9126):transform(9125)
	end
end

local function puzzle1()
	if Tile(puzzle[1]):getItemById(9935) then
		Tile(puzzle[1]):getItemById(9935):transform(9933)
	else
		Tile(puzzle[1]):getItemById(9933):transform(9935)
	end
end

local function puzzle2()
	if Tile(puzzle[2]):getItemById(9936) then
		Tile(puzzle[2]):getItemById(9936):transform(9937)
	else
		Tile(puzzle[2]):getItemById(9937):transform(9936)
	end
end

local function puzzle3()
	if Tile(puzzle[3]):getItemById(9939) then
		Tile(puzzle[3]):getItemById(9939):transform(9934)
	else
		Tile(puzzle[3]):getItemById(9934):transform(9939)
	end
end

local function puzzle4()
	if Tile(puzzle[4]):getItemById(9929) then
		Tile(puzzle[4]):getItemById(9929):transform(9938)
	else
		Tile(puzzle[4]):getItemById(9938):transform(9929)
	end
end

local childrenGrease = Action()
function childrenGrease.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.ChildrenoftheRevolution.Questline) == 14 then
		if fromPosition == Position(33349, 31123, 5) then
			puzzle1()
			puzzle2()
			puzzle4()
		end
		if fromPosition == Position(33349, 31124, 5) then
			puzzle1()
			puzzle2()
			puzzle4()
		end
		if fromPosition == Position(33349, 31125, 5) then
			puzzle3()
			puzzle4()
		end
		if fromPosition == Position(33349, 31126, 5) then
			puzzle2()
			puzzle3()
		end
		if fromPosition == Position(33349, 31127, 5) then
			puzzle1()
			puzzle3()
		end
		if Tile(puzzle[1]):getItemById(9933) and Tile(puzzle[2]):getItemById(9936) and Tile(puzzle[3]):getItemById(9939) and Tile(puzzle[4]):getItemById(9938) then
			player:say("After a cracking noise a deep humming suddenly starts from somewhere below.", TALKTYPE_MONSTER_SAY)
			player:setStorageValue(Storage.ChildrenoftheRevolution.Questline, 17)
			player:setStorageValue(Storage.ChildrenoftheRevolution.Mission04, 5)
		end
		item:transform(item.itemid == 9125 and 9126 or 9125)
		if Tile(fromPosition):getItemById(9126) then
			addEvent(revertLever, 5000, fromPosition)
		end
		return true
	end
	return true
end

childrenGrease:aid(8013)
childrenGrease:register()
