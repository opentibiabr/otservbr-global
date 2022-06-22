QuestKeysUpdate = {
	[0] = {latest = 2}, -- Increase +1 every time this below table suffer a modification
	-- Add a new table to the bottow of this array with the following number versioning.
	[1] = {
		-- Deeper Fibula
		{old = 10001, new = 70001}, -- RewardTowerShield
		{old = 10002, new = 70002}, -- RewardWarriorHelmet
		{old = 10003, new = 70003}, -- RewardDwarvenRing
		{old = 10004, new = 70004}, -- RewardElvenAmulet
		{old = 10005, new = 70005}, -- RewardKnightAxe
		-- Ornamented Shield
		{old = 10006, new = 70006}, -- Bag
		{old = 10007, new = 70007}, -- RedBag
		-- Short Sword
		{old = 10008, new = 70008}, -- Book
		-- Thais Lighthouse
		{old = 10009, new = 70009}, -- BattleHammer
		{old = 10010, new = 70010}, -- DarkShield
		-- Studded Shield
		{old = 10011, new = 70021}, -- BananaFree
		{old = 10012, new = 70022}, -- BananaPremium
		-- Emperor's Cookies
		{old = 10016, new = 70031}, -- Bag With Cookies and Prison Key
		-- Explorer Brooch
		{old = 10017, new = 70032}, -- Brooch
		-- Orc Fortress
		{old = 10018, new = 70033}, -- Knight Axe
		{old = 10019, new = 70034}, -- Knight Armor
		{old = 10020, new = 70035}, -- Fire Sword
		-- Panpipe
		{old = 10022, new = 70036}, -- Panpipe
		-- Draconia Quest
		{old = 10023, new = 70051}, -- BagWithWeapons
		{old = 10024, new = 70052}, -- BagWithAmulets
		-- Adorned UH Rune
		{old = 10025, new = 70071}, -- Silver Rune Emblem
		-- Barbarian Axe
		{old = 10026, new = 70072}, -- Barbarian Axe
		{old = 10027, new = 70073}, -- Scimitar
		-- Berserker Treasure
		{old = 10028, new = 70074}, -- White Pearls
		-- Dark Armor
		{old = 10029, new = 70075}, --Dark Armor
		-- Demon Helmet
		{old = 10030, new = 70076}, -- Steel Boots
		{old = 10031, new = 70077}, -- Demon Helmet
		{old = 10032, new = 70078}, -- Demon Shield
		-- Double Hero
		{old = 10033, new = 70079}, -- Red Gem
		{old = 10034, new = 70080}, -- Club Ring
		-- Edron Goblin
		{old = 10035, new = 70081}, -- Silver Amulet
		{old = 10036, new = 70082}, -- Steel Shield
		-- Fire Axe
		{old = 10037, new = 70083}, -- Bag
		{old = 10038, new = 70084}, -- Fire Axe
		-- Poison Daggers
		{old = 10039, new = 70085}, -- Backpack Reward
		-- Shaman Treasure
		{old = 10042, new = 70086}, -- Blank Runes
		-- Troll Cave
		{old = 10044, new = 70087}, -- Garlic Necklace
		{old = 10045, new = 70088}, -- Brass Legs
		-- Vampire Shield
		{old = 10046, new = 70089}, -- Bag
		{old = 10047, new = 70090}, -- DragonLance
		{old = 10048, new = 70091}, -- VampireShield
		-- WeddingRing
		{old = 10049, new = 70092}, -- DragonNecklace
		{old = 10050, new = 70093}, -- WeedingRing
		-- AlawarsVault
		{old = 10051, new = 70111}, -- WhitePearl
		{old = 10052, new = 70112}, -- Broadsword
		-- BlackKnight
		{old = 10054, new = 70121}, -- CrownArmor
		{old = 10055, new = 70122}, -- CrownShield
		-- DragonTower
		{old = 10056, new = 70123}, -- Backpack1
		{old = 10057, new = 70124}, -- Backpack2
		-- Ring
		{old = 10040, new = 70125}, -- TimeRing
		{old = 10041, new = 70126}, -- SwordRing
		-- TimeRing
		{old = 10058, new = 70127}, -- CrystallBall
		{old = 10059, new = 70128}, -- TimeRing
		{old = 10060, new = 70129}, -- ElvenAmulet

	},
	[2] = {
		-- TheNewFrontier
		{old = 51080, new = 72701}, -- Questline = 51080,
		{old = 51081, new = 72703}, -- Mission01 = 51081,
		{old = 51082, new = 72704}, -- Mission02 = 51082,
		{old = 51092, new = 72705}, -- Beaver1 = 51092,
		{old = 51093, new = 72706}, -- Beaver2 = 51093,
		{old = 51094, new = 72707}, -- Beaver3 = 51094,
		{old = 51083, new = 72708}, -- Mission03 = 51083,
		{old = 51084, new = 72709}, -- Mission04 = 51084,
		{old = 51085, new = 72710}, -- Mission05 = 51085,
		{old = 51095, new = 72711}, -- BribeKing = 51095,
		{old = 51096, new = 72712}, -- BribeLeeland = 51096,
		{old = 51097, new = 72713}, -- BribeExplorerSociety = 51097,
		{old = 51098, new = 72714}, -- BribeWydrin = 51098,
		{old = 51099, new = 72715}, -- BribeTelas = 51099,
		{old = 51100, new = 72716}, -- BribeHumgolf = 51100
		{old = 51086, new = 72717}, -- Mission06 = 51086,
		{old = 51087, new = 72718}, -- Mission07 = 51087,
		{old = 51088, new = 72720}, -- Mission08 = 51088,
		{old = 51089, new = 72721}, -- Mission09 = 51089,
		{old = 51090, new = 72724}, -- Mission10 = 51090,
		{old = 3158, new = 72726}, -- Reward 1
		{old = 3159, new = 72727}, -- Reward 2
		{old = 3160, new = 72728}, -- Reward 3
		{old = 51091, new = 72729}, -- TomeofKnowledge = 51091,
	},
--[[
	[2] = { -- New table version, allows the updated servers apply the changes to the only new revised quest.
		-- Example of new quest revised to be migrated
		{old = 10001, new = 80001}, -- Example
		{old = 10002, new = 80002}, -- Example
		{old = 10003, new = 80003}, -- Example
		{old = 10004, new = 80004}, -- Example
		{old = 10005, new = 80005}, -- Example
	},
]]--
}
