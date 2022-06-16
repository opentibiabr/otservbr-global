local updateInterval = 5 * 60 -- The Memorial will be updated in 5 minutes

local goldenOutfitCache
local lastUpdated = 0
local function updateGoldenOutfitCache()
	if os.time() < lastUpdated + updateInterval then
		return
	end

	goldenOutfitCache = {[1] = {}, [2] = {}, [3] = {}}

	local resultId = db.storeQuery("SELECT `name`, `value` FROM `player_storage` INNER JOIN `players` as `p` ON `p`.`id` = `player_id` WHERE `key` = " .. Storage.OutfitQuest.GoldenOutfit .. " AND `value` >= 1;")
	if not resultId then
		result.free(resultId)
		lastUpdated = os.time()
		return
	end

	repeat
		local addons = result.getNumber(resultId, "value")
		local name = result.getString(resultId, "name")
		table.insert(goldenOutfitCache[addons], name)
	until not result.next(resultId)
	result.free(resultId)

	lastUpdated = os.time()
end

local function displayMemorialUI(player)
	local response = NetworkMessage()
	response:addByte(0xB0)

	local price = 500000000
	response:addU32(price)
	price = price + 250000000
	response:addU32(price)
	price = price + 250000000
	response:addU32(price)

	for i = 1, 3 do
		response:addU16(#goldenOutfitCache[i])
		for j = 1, #goldenOutfitCache[i] do
			response:addString(goldenOutfitCache[i][j])
		end
	end

	for i = 1, 3 do
		response:addU16(0) -- price in silver tokens
		response:addU16(0) -- price in golden tokens
	end

	for i = 1, 3 do
		response:addU16(0) -- list of spenders
	end

	response:sendToPlayer(player)
end

local goldenOutfitMemorial = Action()
function goldenOutfitMemorial.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	updateGoldenOutfitCache()
	displayMemorialUI(player)
	return true
end

goldenOutfitMemorial:id(31518, 31519, 31520, 31521, 31522, 31523)
goldenOutfitMemorial:register()
