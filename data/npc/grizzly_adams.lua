local internalNpcName = "Grizzly Adams"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 144,
	lookHead = 116,
	lookBody = 78,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.shop = {
	-- HuntsMan rank
	-- Sell offers
	{clientId = 10297, sell = 50, itemName = "antlers", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 9633, sell = 100, itemName = "bloody pincers", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10272, sell = 35, itemName = "crab pincers", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 9657, sell = 55, itemName = "cyclops toe", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12316, sell = 550, itemName = "cavebear skull", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 17818, sell = 150, itemName = "cheesy figurine", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11514, sell = 110, itemName = "colourful feather", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 7398, sell = 500, itemName = "cyclops trophy", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10398, sell = 15000, itemName = "draken trophy", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12309, sell = 800, itemName = "draptor scales", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 18994, sell = 115, itemName = "elven hoof", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 9648, sell = 30, itemName = "frosty ear of a troll", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12317, sell = 950, itemName = "giant crab pincer", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11539, sell = 20, itemName = "goblin ear", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12314, sell = 400, itemName = "hollow stampor hoof", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10282, sell = 600, itemName = "hydra head", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10455, sell = 80, itemName = "lancer beetle shell", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10419, sell = 8000, itemName = "lizard trophy", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11489, sell = 280, itemName = "mantassin tail", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 17461, sell = 65, itemName = "marsh stalker beak", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 17462, sell = 50, itemName = "marsh stalker feather", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12315, sell = 250, itemName = "maxilla", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 7401, sell = 500, itemName = "minotaur trophy", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 9662, sell = 420, itemName = "mutated bat ear", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12039, sell = 750, itemName = "panther head", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12040, sell = 300, itemName = "panther paw", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11491, sell = 500, itemName = "quara bone", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11491, sell = 350, itemName = "quara eye", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11490, sell = 410, itemName = "quara pincers", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 11487, sell = 140, itemName = "quara tentacle", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12172, sell = 50, itemName = "rabbit's foot", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 18993, sell = 70, itemName = "rorc feather", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10311, sell = 400, itemName = "sabretooth", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10456, sell = 20, itemName = "sandcrawler shell", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 9631, sell = 280, itemName = "scarab pincers", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12312, sell = 280, itemName = "stampor horn", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 12313, sell = 150, itemName = "stampor talons", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10454, sell = 60, itemName = "terramite legs", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10452, sell = 170, itemName = "terramite shell", storageKey = POINTSSTORAGE, storageValue = 10},
	{clientId = 10273, sell = 95, itemName = "terrorbird beak", storageKey = POINTSSTORAGE, storageValue = 10},
	-- Buy offers
	{clientId = 5907, buy = 35000, itemName = "slingshot", storageKey = POINTSSTORAGE, storageValue = 20},

	-- BigGameHunter rank
	{clientId = 10244, sell = 6000, itemName = "bonebeast trophy", storageKey = POINTSSTORAGE, storageValue = 40},
	{clientId = 7397, sell = 3000, itemName = "deer trophy", storageKey = POINTSSTORAGE, storageValue = 40},
	{clientId = 7400, sell = 3000, itemName = "lion trophy", storageKey = POINTSSTORAGE, storageValue = 40},
	{clientId = 7395, sell = 1000, itemName = "orc trophy", storageKey = POINTSSTORAGE, storageValue = 40},
	{clientId = 7394, sell = 3000, itemName = "wolf trophy", storageKey = POINTSSTORAGE, storageValue = 40},

	-- TrophyHunter rank
	-- Sell offers
	{clientId = 7396, sell = 20000, itemName = "behemoth trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 7393, sell = 40000, itemName = "demon trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 7399, sell = 10000, itemName = "dragon lord trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 10421, sell = 3000, itemName = "disgusting trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 22101, sell = 9000, itemName = "werebadger trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 22102, sell = 10000, itemName = "wereboar trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 22103, sell = 11000, itemName = "werebear trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 27706, sell = 9000, itemName = "werefox trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	{clientId = 34219, sell = 12000, itemName = "werehyaena trophy", storageKey = POINTSSTORAGE, storageValue = 70},
	-- Buy offers
	{clientId = 9601, buy = 1000, itemName = "demon backpack", storageKey = POINTSSTORAGE, storageValue = 70}
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

local function greetCallback(npc, creature)
	local player = Player(creature)
	local playerId = player:getId()

	if player:getStorageValue(JOIN_STOR) == -1 then
		npcHandler:setMessage(MESSAGE_GREET,
					"Hi there, do you want to to join the 'Paw and Fur - Hunting Elite'?")
	else
		npcHandler:setMessage(MESSAGE_GREET,
							"Welcome to the 'Paw and Fur - Hunting Elite' |PLAYERNAME|. "..
							"Feel free to do {tasks} for us.")
	end
	return true
end

local choose = {}
local cancel = {}

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	message = message:gsub("(%l)(%w*)", function(a,b) return string.upper(a)..b end)

	if MsgContains("trade", message) then
		startTrade(creature, player)
	elseif (MsgContains("join", message) or MsgContains("yes", message))
			and npcHandler:getTopic(playerId) == 0
			and player:getStorageValue(JOIN_STOR) ~= 1 then
		player:setStorageValue(JOIN_STOR, 1)
		npcHandler:say("Great! " ..
					"A warm welcome to our newest member: |PLAYERNAME|! " ..
					"Ask me for a {task} if you want to go on a hunt.", npc, creature)
	elseif isInArray({"tasks", "task", "mission"}, message:lower()) then
		if player:getStorageValue(JOIN_STOR) == -1 then
			return npcHandler:say("You'll have to {join}, to get any {tasks}.", npc, creature)
		end

		local can = player:getTasks()

		if #can > 0 then
			local text = ""
			local sep = ", "
			table.sort(can, function(a, b) return a < b end)
			local t = 0
			local id
			for i = 1, #can do
				id = can[i]
				t = t + 1
				if t == #can - 1 then
					sep = " and "
				elseif t == #can then
					sep = "."
				end
				text = text .. "{" .. (tasks[id].name or tasks[id].raceName) .. "}" .. sep
			end
			npcHandler:say("The current task" ..
						(#can > 1 and "s" or "") .. " that you can choose " ..
						(#can > 1 and "are" or "is") .. " " .. text, npc, creature)
			npcHandler:setTopic(playerId, 0)
		else
			npcHandler:say("I don't have any task for you right now.", npc, creature)
		end
	elseif message ~= "" and player:canStartTask(message) then
		if #player:getStartedTasks() >= tasksByPlayer then
			npcHandler:say("Sorry, but you already started " .. tasksByPlayer .. " tasks."..
						" ".."You can check their {status}, {cancel} or {report} a task.", npc, creature)
			return true
		end
		local task = getTaskByName(message)
		if task and player:getStorageValue(QUESTSTORAGE_BASE + task) > 0 then
			return false
		end
		npcHandler:say("In this task you must defeat " .. tasks[task].killsRequired .. " " .. tasks[task].raceName .. "."..
					" ".."Are you sure that you want to start this task?", npc, creature)
		choose[playerId] = task
		npcHandler:setTopic(playerId, 1)
	elseif message:lower() == "yes" and npcHandler:getTopic(playerId) == 1 then
		player:setStorageValue(QUESTSTORAGE_BASE + choose[playerId], 1)
		player:setStorageValue(KILLSSTORAGE_BASE + choose[playerId], 0)
		npcHandler:say("Excellent! You can check the {status} of your task saying {report} to me."..
					" ".."Also you can {cancel} tasks to.", npc, creature)
		choose[playerId] = nil
		npcHandler:setTopic(playerId, 0)
	elseif MsgContains("status", message) then
		local started = player:getStartedTasks()
		if started and #started > 0 then
			local text = ""
			table.sort(started, (function(a, b) return (a < b) end))
			local t = 0
			local id
			for i = 1, #started do
				id = started[i]
				t = t + 1
				text = text .. "Task name: " .. tasks[id].raceName .. ". "..
					"Current kills: " .. player:getStorageValue(KILLSSTORAGE_BASE + id) .. ".\n"
			end
			npcHandler:say({"The status of your current tasks is:\n" .. text}, npc, creature)
		else
			npcHandler:say("You haven't started any task yet.", npc, creature)
		end
	elseif MsgContains("report", message) then
		local started = player:getStartedTasks()
		local finishedAtLeastOne = false
		local finished = 0
		if started and #started > 0 then
			local id, reward
			for i = 1, #started do
				id = started[i]
				if player:getStorageValue(KILLSSTORAGE_BASE + id) >= tasks[id].killsRequired then
					for j = 1, #tasks[id].rewards do
						reward = tasks[id].rewards[j]
						local deny = false
						if reward.storage then
							if player:getStorageValue(reward.storage[1]) >= reward.storage[2] then
								deny = true
							end
						end
						if isInArray({REWARD_MONEY, "money"}, reward.type:lower()) and not deny then
							player:addMoney(reward.value[1])
						elseif isInArray({REWARD_EXP, "exp", "experience"}, reward.type:lower()) and not deny then
							player:addExperience(reward.value[1], true)
						elseif isInArray({REWARD_ACHIEVEMENT, "achievement", "ach"}, reward.type:lower()) and not deny then
							player:addAchievement(reward.value[1])
						elseif isInArray({REWARD_STORAGE, "storage", "stor"}, reward.type:lower()) and not deny then
							player:setStorageValue(reward.value[1], reward.value[2])
						elseif isInArray({REWARD_POINT, "points", "point"}, reward.type:lower()) and not deny then
							player:setStorageValue(POINTSSTORAGE, getPlayerTasksPoints(creature) + reward.value[1])
						elseif isInArray({REWARD_ITEM, "item", "items", "object"}, reward.type:lower()) and not deny then
							player:addItem(reward.value[1], reward.value[2])
						end

						if reward.storage then
							player:setStorageValue(reward.storage[1], reward.storage[2])
						end
					end

					player:setStorageValue(QUESTSTORAGE_BASE + id, (tasks[id].norepeatable and 2 or 0))
					player:setStorageValue(KILLSSTORAGE_BASE + id, -1)
					player:setStorageValue(REPEATSTORAGE_BASE + id, math.max(player:getStorageValue(REPEATSTORAGE_BASE + id), 0))
					player:setStorageValue(REPEATSTORAGE_BASE + id, player:getStorageValue(REPEATSTORAGE_BASE + id) + 1)
					finishedAtLeastOne = true
					finished = finished + 1
				end
			end
			if not finishedAtLeastOne then
				local started = player:getStartedTasks()
				if started and #started > 0 then
					local text = ""
					local sep = ", "
					table.sort(started, (function(a, b) return (a < b) end))
					local t = 0
					local id
					for i = 1, #started do
						id = started[i]
						t = t + 1
						if (t == #started - 1) then
							sep = " and "
						elseif (t == #started) then
							sep = "."
						end
						text = text .. "{" .. (tasks[id].name or tasks[id].raceName) .. "}" .. sep
					end
					npcHandler:say("The current task" .. (#started > 1 and "s" or "") ..
								" that you started " .. (#started > 1 and "are" or "is") .. " " .. text, npc, creature)
				end
			else
				npcHandler:say("Awesome! "..
							"You finished "..(finished > 1 and "various" or "a").." task"..(finished > 1 and "s" or "").."."..
							"Talk to me again if you want to start a {task}.", npc, creature)
			end
		else
			npcHandler:say("You haven't started any task yet.", npc, creature)
		end
	elseif message:lower() == "started" then
		local started = player:getStartedTasks()
		if started and #started > 0 then
			local text = ""
			local sep = ", "
			table.sort(started, (function(a, b) return (a < b) end))
			local t = 0
			local id
			for i = 1, #started do
				id = started[i]
				t = t + 1
				if t == #started - 1 then
					sep = " and "
				elseif t == #started then
					sep = "."
				end
				text = text .. "{" .. (tasks[id].name or tasks[id].raceName) .. "}" .. sep
			end

			npcHandler:say("The current task" .. (#started > 1 and "s" or "") .. " that you started" ..
				" " .. (#started > 1 and "are" or "is") .. " " .. text, npc, creature)
		else
			npcHandler:say("You haven't started any task yet.", npc, creature)
		end
	elseif message:lower() == "cancel" then
		local started = player:getStartedTasks()
		local text = ""
		local sep = ", "
		table.sort(started, (function(a, b) return (a < b) end))
		local t = 0
		local id
		for i = 1, #started do
			id = started[i]
			t = t + 1
			if t == #started - 1 then
				sep = " or "
			elseif t == #started then
				sep = "?"
			end
			text = text .. "{" .. (tasks[id].name or tasks[id].raceName) .. "}" .. sep
		end
		if started and #started > 0 then
			npcHandler:say("Canceling a task will make the counter restart. " ..
						"Which of these tasks you want cancel?" .. (#started > 1 and "" or "") .. " " .. text, npc, creature)
			npcHandler:setTopic(playerId, 2)
		else
			npcHandler:say("You haven't started any task yet.", npc, creature)
		end
	elseif ((getTaskByName(message)) and
			(npcHandler:getTopic(playerId) == 2) and
			(isInArray(getPlayerStartedTasks(creature), getTaskByName(message)))) then
		local task = getTaskByName(message)
		if player:getStorageValue(KILLSSTORAGE_BASE + task) > 0 then
			npcHandler:say("You currently killed " .. player:getStorageValue(KILLSSTORAGE_BASE + task) .. "/" ..
						tasks[task].killsRequired .. " " .. tasks[task].raceName .. "."..
						" ".."Canceling this task will restart the count."..
						" ".."Are you sure you want to cancel this task?", npc, creature)
		else
			npcHandler:say("Are you sure you want to cancel this task?", npc, creature)
		end
		npcHandler:setTopic(playerId, 3)
		cancel[playerId] = task
	elseif ((getTaskByName(message)) and
			(npcHandler:getTopic(playerId) == 1) and
			(isInArray(getPlayerStartedTasks(creature), getTaskByName(message)))) then
		local task = getTaskByName(message)
		if player:getStorageValue(KILLSSTORAGE_BASE + task) > 0 then
			npcHandler:say("You currently killed " ..
						player:getStorageValue(KILLSSTORAGE_BASE + task) .. "/" ..
						tasks[task].killsRequired .. " " ..
						tasks[task].raceName .. ".", npc, creature)
		else
			npcHandler:say("You currently killed 0/" .. tasks[task].killsRequired .. " " .. tasks[task].raceName .. ".", npc, creature)
		end
		npcHandler:setTopic(playerId, 0)
	elseif message:lower() == "yes" and npcHandler:getTopic(playerId) == 3 then
		player:setStorageValue(QUESTSTORAGE_BASE + cancel[playerId], -1)
		player:setStorageValue(KILLSSTORAGE_BASE + cancel[playerId], -1)
		npcHandler:say("You have canceled the task " ..
					(tasks[cancel[playerId]].name or tasks[cancel[playerId]].raceName) .. ".", npc, creature)
		npcHandler:setTopic(playerId, 0)
	elseif isInArray({"points", "rank"}, message:lower()) then
		npcHandler:say("At this time, you have " .. player:getPawAndFurPoints() .. " Paw & Fur points. You " ..
					(player:getPawAndFurRank() == 6 and "are an Elite Hunter" or
					player:getPawAndFurRank() == 5 and "are a Trophy Hunter" or
					player:getPawAndFurRank() == 4 and "are a Big Game Hunter" or
					player:getPawAndFurRank() == 3 and "are a Ranger" or
					player:getPawAndFurRank() == 2 and "are a Huntsman" or
					player:getPawAndFurRank() == 1 and "are a Member"  or
					"haven't been ranked yet") .. ".", npc, creature)
		npcHandler:setTopic(playerId, 0)
	elseif isInArray({"special task"}, message:lower()) then
		if (player:getPawAndFurPoints() >= 70) then
			if ((player:getLevel() > 90) and
				(player:getStorageValue(Storage.KillingInTheNameOf.MissionTiquandasRevenge) == 1) and
				(player:getStorageValue(Storage.KillingInTheNameOf.TiquandasRevengeTeleport) ~= 0)) then
				npcHandler:say("You have already started the task. Go find Tiquandas Revenge and take revenge yourself!", npc, creature)
			else
				npcHandler:say({"Have you heard about Tiquandas Revenge? " ..
							"It is said that the jungle itself is alive and takes revenge for all the bad things people have done to it." ..
							"...",
							"I myself believe that there is some truth in this clap trap." ..
							"Something 'real' which therefore must have a hideout somewhere." ..
							"Go find it and take revenge yourself!"}, npc, creature)
				player:setStorageValue(Storage.KillingInTheNameOf.TiquandasRevengeTeleport, 1)
				player:setStorageValue(Storage.KillingInTheNameOf.MissionTiquandasRevenge, 1)
			end

			if ((player:getLevel() > 100) and
				(player:getStorageValue(Storage.KillingInTheNameOf.MissionDemodras) == 1) and
				(player:getStorageValue(Storage.KillingInTheNameOf.DemodrasTeleport) ~= 0)) then
				npcHandler:say("You have already started the special task. Find Demodras and kill it.", npc, creature)
			else
				if ((player:getStorageValue(Storage.KillingInTheNameOf.MissionTiquandasRevenge) == 1) and
					(player:getStorageValue(Storage.KillingInTheNameOf.TiquandasRevengeTeleport) == 0)) then
					npcHandler:say("This task is a very dangerous one. I want you to look for Demodras' hideout. "..
								"It might be somewhere under the Plains of Havoc. Good luck, old chap.", npc, creature)
					player:setStorageValue(Storage.KillingInTheNameOf.DemodrasTeleport, 1)
					player:setStorageValue(Storage.KillingInTheNameOf.MissionDemodras, 1)

				end
			end

			if (player:getStorageValue(Storage.KillingInTheNameOf.MissionDemodras) == 1 and
				player:getStorageValue(Storage.KillingInTheNameOf.DemodrasTeleport) == 0 and
				player:getStorageValue(Storage.KillingInTheNameOf.MissionTiquandasRevenge) == 1 and
				player:getStorageValue(Storage.KillingInTheNameOf.TiquandasRevengeTeleport) == 0) then
				npcHandler:say("You have already finished all special tasks.", npc, creature)
			end
			npcHandler:setTopic(playerId, 0)
		end
	end
end

npcHandler:setMessage(MESSAGE_FAREWELL, "Happy hunting, old chap!")
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)