-- /mount playername, mountId

local addMount = TalkAction("/mount")

function addMount.onSay(player, words, param)
  if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	if param == "" then
		player:sendTextMessage(MESSAGE_ATTENTION, 'Unlocks mount for certain player. Usage: /mount <player name>, <mount id>')
    return false
	end

	local split = param:split(",")
	if not split[2] then
		player:sendCancelMessage("Insufficient parameters.")
		return false
	end

	local target = Player(split[1])
	if not target then
		player:sendCancelMessage("A player with that name is not online.")
		return false
	end

	split[2] = split[2]:gsub("^%s*(.-)$", "%1")
	local mountId = split[2]

	if type(mountId) ~= "number" or mountId < 1 or mountId > 181 then
		player:sendCancelMessage("Invalid mount id.")
		return false
	end

  target:addMount(mountId)
  player:sendTextMessage(MESSAGE_ATTENTION, 'Mount ' .. mountId .. ' mounts unlocked for: ' .. target:getName())

  return false
end

addMount:separator(" ")
addMount:register()
