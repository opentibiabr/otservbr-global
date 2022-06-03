local periods = {
	[LIGHT_STATE_NIGHT] = "Night",
	[LIGHT_STATE_DAY] = "Day",
	[LIGHT_STATE_SUNRISE] = "Sunrise",
	[LIGHT_STATE_SUNSET] = "Sunset"
}

local config = {
	-- createByType day / night
	[1] = { -- create in night
		bushId = 25783,
		createItem = LIGHT_STATE_NIGHT,
		removeItem = LIGHT_STATE_SUNRISE,
		pos = Position(33497, 32196, 7),
		herbId = 5953,
		herbWeight = 1,
		storage = Storage.Quest.ThreatenedDreams.Mission03.RavenHerbTimer
	}
}

local createRavenHerb = GlobalEvent("createRavenHerb")

function createRavenHerb.onPeriodChange(period, light)
	local time = getWorldTime()

	if configManager.getBoolean(configKeys.ALL_CONSOLE_LOG) then
		Spdlog.info(string.format("Starting %s Current light is %s and it's %s Tibian Time",
			periods[period], light, getFormattedWorldTime(time)))
	end
	for index, item in pairs(config) do
		if item.createItem == period then -- Adding
			local createItem = Game.createItem(item.bushId, 1, item.pos)
			createItem:setActionId(item.storage)
			if createItem then
				item.pos:sendMagicEffect(CONST_ME_BIGPLANTS)
			end
		elseif item.removeItem == period then -- Removing
			local target = Tile(item.pos):getItemById(item.bushId)
			if target then
				item.pos:removeItem(item.bushId, CONST_ME_BIGPLANTS)
			end
		end
	end

	return true
end

createRavenHerb:register()


local ravenHerb = Action()

function ravenHerb.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local ravenHerb = config[1]
	local message = "You have found a " .. getItemName(ravenHerb.herbId) .. "."
	local backpack = player:getSlotItem(CONST_SLOT_BACKPACK)

	if not backpack or backpack:getEmptySlots(true) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message .. " But you have no room to take it.")
		return true
	end
	if (player:getFreeCapacity() / 100) < ravenHerb.herbWeight then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		message .. ". Weighing " .. ravenHerb.herbWeight .. " oz, it is too heavy for you to carry.")
		return true
	end

	if player:getStorageValue(ravenHerb.storage) > os.time() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The raven herb cannot be collected right now.")
		return true
	end

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. getItemName(ravenHerb.herbId) .. ".")
	player:setStorageValue(Storage.Quest.ThreatenedDreams.Mission03.RavenHerbTimer, os.time() + 60 * 30 * 1000) -- Can be collected on next cycle
	player:addItem(ravenHerb.herbId, 1)
	return true
end

ravenHerb:aid(Storage.Quest.ThreatenedDreams.Mission03.RavenHerbTimer)
ravenHerb:register()