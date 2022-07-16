local function transformLamp(position, itemId, transformId)
	local lampItem = Tile(position):getItemById(itemId)
	if lampItem then
		lampItem:transform(transformId)
	end
end

local wrathEmperorMiss1Light = Action()
function wrathEmperorMiss1Light.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if(item.uid == 3171) then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light01) ~= 1 then
			Game.setStorageValue(GlobalStorage.WrathOfTheEmperor.Light01, 1)
			addEvent(Game.setStorageValue, 20 * 1000, GlobalStorage.WrathOfTheEmperor.Light01, 0)
			local pos = {
				Position(33369, 31075, 8),
				Position(33372, 31075, 8),
				Position(33375, 31075, 8)
			}
			for i = 1, #pos do
				transformLamp(pos[i], 10491, 10479)
				addEvent(transformLamp, 20 * 1000, pos[i], 10479, 10491)
			end
		end
	elseif(item.uid == 3172) then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light02) ~= 1 then
			Game.setStorageValue(GlobalStorage.WrathOfTheEmperor.Light02, 1)
			addEvent(Game.setStorageValue, 20 * 1000, GlobalStorage.WrathOfTheEmperor.Light02, 0)
			local pos = {
				Position(33357, 31077, 8),
				Position(33360, 31079, 8)
			}
			for i = 1, #pos do			
				transformLamp(pos[i], 10493, 10478)
				addEvent(transformLamp, 20 * 1000, pos[i], 10478, 10493)
			end
		end
	elseif(item.uid == 3173) then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light04) ~= 1 then
			Game.setStorageValue(GlobalStorage.WrathOfTheEmperor.Light04, 1)
			addEvent(Game.setStorageValue, 20 * 1000, GlobalStorage.WrathOfTheEmperor.Light04, 0)
			local wallItem, pos
			for i = 1, 4 do
				pos = Position(33355, 31067 + i, 9)
				if i == 1 or 4 then
					wallItem = Tile(pos):getItemById(8348)
					if wallItem then
						wallItem:transform(8290)
						addEvent(Game.createItem, 20 * 1000, 8348, 1, pos)
					end
				end
				if i == 2 then
					wallItem = Tile(pos):getItemById(8291)
					if wallItem then
						wallItem:transform(8290)
						addEvent(Game.createItem, 20 * 1000, 8291, 1, pos)
					end
				end
				if i == 3 then
					wallItem = Tile(pos):getItemById(8293)
					if wallItem then
						wallItem:transform(8290)
						addEvent(Game.createItem, 20 * 1000, 8293, 1, pos)
					end
				end
			end
		end
	elseif(item.uid == 3174) then
		if Game.getStorageValue(GlobalStorage.WrathOfTheEmperor.Light03) ~= 1 then
			Game.setStorageValue(GlobalStorage.WrathOfTheEmperor.Light03, 1)
			addEvent(Game.setStorageValue, 20 * 1000, GlobalStorage.WrathOfTheEmperor.Light03, 0)
			local pos = Position(33346, 31074, 8)
			transformLamp(pos, 10493, 10478)
			addEvent(transformLamp, 20 * 1000, pos, 10478, 10493)
		end
	end
	return item:transform(item.itemid == 9125 and 9126 or 9125)
end

wrathEmperorMiss1Light:uid(3171,3172,3173,3174)
wrathEmperorMiss1Light:register()