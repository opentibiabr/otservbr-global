local config = {
	storage = Storage.ThreatenedDreams.FacelessBaneTime,
	uniqueId = 1039,
	bossName = "Faceless Bane",
	requiredLevel = 250,
	leverId = 9111,
	timeToFightAgain = 20, -- In hour
	timeToDefeatBoss = 15, -- In minutes
	daily = true, -- set to false if you want to make the room, without timeToFightAgain timer
    centerRoom = Position(33617, 32562, 13), -- center of the room
    fromPos = Position(33608, 32554, 13), -- the upper left corner of the room
    toPos = Position(33627, 32570, 13), -- the lower right corner of the room
	playerPositions = {
		Position(33638, 32562, 13),
		Position(33639, 32562, 13),
		Position(33640, 32562, 13),
		Position(33641, 32562, 13),
		Position(33642, 32562, 13)
    },
	teleportPosition = Position(33617, 32567, 13), -- Players teleport to this position
	bossPosition = Position(33617, 32561, 13), -- Boss spawn position
	specPos = Position(33618, 32523, 15),  --kick out position
    mechanic = true -- Set to false if you don't want to use Faceless Bane's mechanics.
}

local function isInPos(pos, pos1, pos2)
    if pos.x >= pos1.x and pos.x <= pos2.x then
        if pos.y >= pos1.y and pos.y <= pos2.y then
            if pos.z >= pos1.z and pos.z <= pos2.z then
                return true
            end
        end
    end

    return false
end

local function playerExitQuest(playerId)
    local player = Player(playerId)
    if not player then
        return
    end
    if isInPos(player:getPosition(), config.fromPos, config.toPos) then
        player:teleportTo(config.specPos)
    end
end

local threatenedLever = Action()
function threatenedLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == config.leverId then
		-- Check if the player that pulled the lever is on the correct position
		if player:getPosition() ~= config.playerPositions[1] then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can\'t start the battle.")
			return true
		end

		local team, participant = {}
		for i = 1, #config.playerPositions do
			participant = Tile(config.playerPositions[i]):getTopCreature()

			-- Check there is a participant player
			if participant and participant:isPlayer() then
				-- Check participant level
				if participant:getLevel() < config.requiredLevel then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All the players need to be level ".. config.requiredLevel .." or higher.")
					return true
				end

				-- Check participant boss timer
				if config.daily and participant:getStorageValue(config.storage) > os.time() then
					player:getPosition():sendMagicEffect(CONST_ME_POFF)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You or a member in your team have to wait ".. config.timeToFightAgain .."  hours to face ".. config.bossName .." again!")
					return true
				end
				team[#team + 1] = participant
			end
		end

	local clearRoom = Game.getSpectators(Position(config.centerRoom), false, false, 10, 10, 10, 10)  --must specify the area to scan depending on the arena size       
	for index, spectatorcheckface in ipairs(clearRoom) do
		if spectatorcheckface:isPlayer() then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Someone is already fighting the boss! You need to wait for your turn.")
			return false
		end
	end	
	for index, removeBoss in ipairs(clearRoom) do
		if (removeBoss:isMonster()) then
			removeBoss:remove()
		end
	end

		-- Teleport team participants
		for i = 1, #team do
			team[i]:getPosition():sendMagicEffect(CONST_ME_POFF)
			team[i]:teleportTo(config.teleportPosition)
			team[i]:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have ".. config.timeToDefeatBoss .." minutes to kill and loot this boss. Otherwise you will lose that chance and will be kicked out.")
			-- Assign boss timer
			team[i]:setStorageValue(config.storage, os.time() + config.timeToFightAgain * 60 * 60) -- 20 hours
			item:transform(config.leverId)
				
				addEvent(function()
                playerExitQuest(player:getId())
				end, config.timeToDefeatBoss * 60 * 1000)
				
		end
	end
	Game.createMonster(config.bossName, config.bossPosition)
    
    if config.mechanic then
        Game.setStorageValue(43009, 1)
        Game.setStorageValue(43010, 1)
	else Game.setStorageValue(43009, 0)
		Game.setStorageValue(43010, 0)
	end
end

threatenedLever:uid(config.uniqueId)
threatenedLever:register()