local questKeysUpdate = {
	[1] = { -- Add a new table to the bottow of this array with the following numver versioning.
		-- The New Frontier Quest
		{old = 51080, new = 9999999}, -- Questline = 51080,
		{old = 51081, new = XXXXXXX}, -- Mission01 = 51081,
		{old = 51082, new = XXXXXXX}, -- Mission02 = 51082,
		{old = 51083, new = XXXXXXX}, -- Mission03 = 51083,
		{old = 51084, new = XXXXXXX}, -- Mission04 = 51084,
		{old = 51085, new = XXXXXXX}, -- Mission05 = 51085,
		{old = 51086, new = XXXXXXX}, -- Mission06 = 51086,
		{old = 51087, new = XXXXXXX}, -- Mission07 = 51087,
		{old = 51088, new = XXXXXXX}, -- Mission08 = 51088,
		{old = 51089, new = XXXXXXX}, -- Mission09 = 51089,
		{old = 51090, new = XXXXXXX}, -- Mission10 = 51090,
		{old = 51091, new = XXXXXXX}, -- TomeofKnowledge = 51091,
		{old = 51092, new = XXXXXXX}, -- Beaver1 = 51092,
		{old = 51093, new = XXXXXXX}, -- Beaver2 = 51093,
		{old = 51094, new = XXXXXXX}, -- Beaver3 = 51094,
		{old = 51095, new = XXXXXXX}, -- BribeKing = 51095,
		{old = 51096, new = XXXXXXX}, -- BribeLeeland = 51096,
		{old = 51097, new = XXXXXXX}, -- BribeExplorerSociety = 51097,
		{old = 51098, new = XXXXXXX}, -- BribeWydrin = 51098,
		{old = 51099, new = XXXXXXX}, -- BribeTelas = 51099,
		{old = 51100, new = XXXXXXX}, -- BribeHumgolf = 51100
		{old = 3158, new = XXXXXXX}, -- Reward 1
		{old = 3159, new = XXXXXXX}, -- Reward 2
		{old = 3160, new = XXXXXXX}, -- Reward 3
	},
}
local update = 1 -- Increase +1 every time this above table suffer a modification
local lastUpdate = GlobalStorage.KeyUpdate

if update == getGlobalStorageValue(GlobalStorage.KeyUpdate) then
	return true
end
if getGlobalStorageValue(GlobalStorage.KeyUpdate) == -1 then
	setGlobalStorageValue(GlobalStorage.KeyUpdate, 0)
end



Spdlog.info("Updating quest keys storages...")

for u = lastUpdate+1, update do
	for i = 1, #questKeysUpdate do
		db.query("UPDATE `player_storage` SET `key` = '" .. questKeysUpdate[u][i].new .. "' WHERE `key` = '" .. questKeysUpdate[u][i].old .. "';")
	end
end

setGlobalStorageValue(GlobalStorage.KeyUpdate, update)

