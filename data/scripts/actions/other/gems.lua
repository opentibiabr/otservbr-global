local lionsRockSanctuaryPos = Position(33073, 32300, 9)
local lionsRockSanctuaryRockId = 1852
local lionsRockSanctuaryFountainId = 6389

local shrine = {
	-- ice shrine
	[3029] = {
		targetAction = 13527,
		-- shrinePosition = {x = 32194, y = 31418, z = 2}, -- read-only
		destination = {x = 33430, y = 32278, z = 7},
		effect = CONST_ME_ICEATTACK
	},
	-- fire shrine
	[3030] = {
		targetAction = 13528,
		-- shrinePosition = {x = 32910, y = 32338, z = 15}, -- read-only
		destination = {x = 33586, y = 32263, z = 7},
		effect = CONST_ME_MAGIC_RED
	},
	-- earth shrine
	[3032] = {
		targetAction = 13529,
		-- shrinePosition = {x = 32973, y = 32225, z = 7}, -- read-only
		destination = {x = 33539, y = 32209, z = 7},
		effect = CONST_ME_SMALLPLANTS
	},
	[3033] = {
		targetAction = 13530,
		-- shrinePosition = {x = 33060, y = 32713, z = 5}, -- read-only
		destination = {x = 33527, y = 32301, z = 4},
		effect = CONST_ME_ENERGYHIT
	}
}

local lionsRock = {
	[25006] = {
		itemId = 21442,
		itemPos = {x = 33069, y = 32298, z = 9},
		storage = Storage.LionsRock.Questline,
		value = 9,
		item = 3030,
		fieldId = 2123,
		message = "You place the ruby on the small socket. A red flame begins to burn.",
		effect = CONST_ME_MAGIC_RED
	},
	[25007] = {
		itemId = 21442,
		itemPos = {x = 33069, y = 32302, z = 9},
		storage = Storage.LionsRock.Questline,
		value = 9,
		item = 3029,
		fieldId = 21463,
		message = "You place the sapphire on the small socket. A blue flame begins to burn.",
		effect = CONST_ME_MAGIC_BLUE
	},
	[25008] = {
		itemId = 21440,
		itemPos = {x = 33077, y = 32302, z = 9},
		storage = Storage.LionsRock.Questline,
		value = 9,
		item = 3033,
		fieldId = 7465,
		message = "You place the amethyst on the small socket. A violet flame begins to burn.",
		effect = CONST_ME_PURPLESMOKE
	},
	[25009] = {
		itemId = 21437,
		itemPos = {x = 33077, y = 32298, z = 9},
		storage = Storage.LionsRock.Questline,
		value = 9,
		item = 9057,
		fieldId = 21465,
		message = "You place the topaz on the small socket. A yellow flame begins to burn.",
		effect = CONST_ME_BLOCKHIT
	}
}

local config = {
	manaCost = 300,
	soulCost = 2,
}

local spheres = {
	[675] = {VOCATION.BASE_ID.PALADIN},
	[676] = {VOCATION.BASE_ID.SORCERER},
	[677] = {VOCATION.BASE_ID.DRUID},
	[678] = {VOCATION.BASE_ID.KNIGHT}
}

local enchantableGems = {3030, 3029, 3032, 3033}
local enchantableItems = {3271, 7383, 7384, 7406, 7402, 3317, 3318, 7389, 7380, 3342, 3311, 3333, 7415, 7392, 3279, 3447, 8077}

local enchantingAltars = {
	{146, 147, 148, 149},
	{150, 151, 152, 153},
	{158, 159, 160, 161},
	{154, 155, 156, 157}
}

local enchantedGems = {676, 675, 677, 678}
local enchantedItems = {
	[3271] = {660, 679, 779, 794},
	[7383] = {661, 680, 780, 795},
	[7384] = {662, 681, 781, 796},
	[7406] = {663, 682, 782, 797},
	[7402] = {664, 683, 783, 798},
	[3317] = {665, 684, 784, 801},
	[3318] = {666, 685, 785, 802},
	[7389] = {667, 686, 786, 803},
	[7380] = {668, 687, 787, 804},
	[3342] = {669, 688, 788, 805},
	[3311] = {670, 689, 789, 806},
	[3333] = {671, 690, 790, 807},
	[7415] = {672, 691, 791, 808},
	[7392] = {673, 692, 792, 809},
	[3279] = {674, 693, 793, 810},
	[3447] = {763, 762, 774, 761},
	[8077] = {8078, 8079, 8081, 8080}
}

local gems = Action()

function gems.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- Enchanting items
	Spdlog.info("Enchanting")
	if table.contains({33268, 33269}, toPosition.x)
	and toPosition.y == 31830 and toPosition.z == 10
	and player:getStorageValue(Storage.ElementalSphere.QuestLine) > 0 then
		if not table.contains(spheres[item.itemid], player:getVocation():getBaseId()) then
			return false
		elseif table.contains({842, 843}, target.itemid) then
			player:say('Turn off the machine first.', TALKTYPE_MONSTER_SAY)
			return true
		else
			player:setStorageValue(Storage.ElementalSphere.MachineGemCount, math.max(1, player:getStorageValue(Storage.ElementalSphere.MachineGemCount) + 1))
			toPosition:sendMagicEffect(CONST_ME_PURPLEENERGY)
			item:transform(item.itemid, item.type - 1)
			return true
		end
	end

	if item.itemid == 3030 and target.itemid == 3229 then
		target:transform(3230)
		target:decay()
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	if item.itemid == 676 and isInArray({3123, 9020}, target.itemid) then
		target:transform(9019)
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	if item.itemid == 677 and isInArray({9035, 9040}, target.itemid) then
		target:transform(target.itemid - 1)
		target:decay()
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
		return true
	end

	if isInArray(enchantedGems, item.itemid) then
		if not isInArray(enchantableItems, target.itemid) then
			fromPosition:sendMagicEffect(CONST_ME_POFF)
			return false
		end

		local targetId = table.find(enchantedGems, item.itemid)
		if not targetId then
			return false
		end

		local subtype = target.type
		if not isInArray({3447, 8077}, target.itemid) then
			subtype = 1000
		end

		target:transform(enchantedItems[target.itemid][targetId], subtype)
		target:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
		return true
	end
	Spdlog.info("after enchanting")
	-- Small emerald for Kilmaresh quest
	-- see data\scripts\quests\kilmaresh\1-fafnars-wrath\7-four-masks.lua
	if item.itemid == 3032 and target.uid == 40032
				and player:getStorageValue(Storage.Kilmaresh.Sixth.Favor) >= 1
				and not testFlag(player:getStorageValue(Storage.Kilmaresh.Sixth.FourMasks), 4) then
		player:addItem(31371, 1) -- Ivory mask
		item:remove(1)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You hear a *click*. You can now lift the floor tile and discover a secret compartment. A mask made of ivory lies in it.")
		player:setStorageValue(Storage.Kilmaresh.Sixth.Favor, player:getStorageValue(Storage.Kilmaresh.Sixth.Favor) + 1)
		player:setStorageValue(Storage.Kilmaresh.Sixth.FourMasks, setFlag(player:getStorageValue(Storage.Kilmaresh.Sixth.FourMasks), 4))
		return true
	-- Enchanted helmet of the ancients
	elseif player:getItemCount(3030) >= 1 and target.itemid == 3229 then
		target:transform(3230)
		target:decay()
		item:remove(1)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	-- Gems teleport to feyrist
	for index, value in pairs(shrine) do
		if target.actionid == value.targetAction then
			if (player:getStorageValue(Storage.ThreatenedDreams.TroubledMission01) == 17) then
				if item.itemid == index then
					player:teleportTo(value.destination)
					player:getPosition():sendMagicEffect(value.effect)
					item:remove(1)
					return true
				else
					player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
					return true
				end
			else
				player:say("When the time comes, '" ..item:getName() .. "' will be accepted at this shrine.")
				return true
			end
		end
	end

	-- Use gems in the tile of lions rock quest
	local setting = lionsRock[target.uid]
	if not setting then
		if isInArray(enchantableGems, item.itemid) then
			local subtype = item.type
			if subtype == 0 then
				subtype = 1
			end

			local mana = config.manaCost * subtype
			if player:getMana() < mana then
				player:say('Not enough mana, separate one gem in your backpack and try again.', TALKTYPE_MONSTER_SAY)
				return false
			end

			local soul = config.soulCost * subtype
			if player:getSoul() < soul then
				player:sendCancelMessage(RETURNVALUE_NOTENOUGHSOUL)
				return false
			end

			local targetId = table.find(enchantableGems, item.itemid)
			if not targetId or not isInArray(enchantingAltars[targetId], target.itemid) then
				return false
			end

			player:addMana(-mana)
			player:addSoul(-soul)
			item:transform(enchantedGems[targetId])
			player:addManaSpent(mana)
			player:getPosition():sendMagicEffect(CONST_ME_HOLYDAMAGE)
			return true
		end
		return false
	end
	-- Reset lion's fields
	local function lionsRockFieldReset()
		local gemSpot = Tile(setting.itemPos):getItemById(setting.fieldId)
		if gemSpot then
			Game.setStorageValue(GlobalStorage.LionsRockFields, Game.getStorageValue(GlobalStorage.LionsRockFields) - 1)
			gemSpot:remove()
			return true
		end
	end

	-- Check if all lion's fields are set
	local function checkLionsRockFields(storage)
		if Game.getStorageValue(GlobalStorage.LionsRockFields) == 3 then
			local stone = Tile(lionsRockSanctuaryPos):getItemById(lionsRockSanctuaryRockId)
			if stone then
				stone:transform(lionsRockSanctuaryFountainId)
				lionsRockSanctuaryPos:sendMagicEffect(CONST_ME_THUNDER)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Something happens at the center of the room ...')
				player:setStorageValue(storage, 10)
				return true
			end
		end
	end

	-- Delay to create lion's field
	local function lionsRockCreateField(itemPos, fieldId, storage)
		local gemSpot = Tile(itemPos):getItemById(fieldId)
		if not gemSpot then
			Game.createItem(fieldId, 1, itemPos)
			Game.setStorageValue(GlobalStorage.LionsRockFields, Game.getStorageValue(GlobalStorage.LionsRockFields) + 1)
			checkLionsRockFields(storage)
			return true
		end
	end

	-- Enchant gem
	if player:getStorageValue(setting.storage) >= setting.value then
		if setting.item == item.itemid then
			local gemSpot = Tile(setting.itemPos):getItemById(setting.fieldId)
			if not gemSpot then
				toPosition:sendMagicEffect(setting.effect)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, setting.message)
				item:remove(1)
				addEvent(lionsRockCreateField, 2 * 1000, setting.itemPos, setting.fieldId, setting.storage)
				addEvent(lionsRockFieldReset, 60 * 1000)
				return true
			end
		end
	end
	return false
end

for index, value in pairs(shrine) do
	gems:id(index)
end

gems:id(9057)
gems:register()
