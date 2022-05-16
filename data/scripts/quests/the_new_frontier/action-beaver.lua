local config = {
	treesBeaver = {
		Position(32515, 31927, 7), -- Tree 01
		Position(32474, 31947, 7), -- Tree 02
		Position(32458, 31997, 7), -- Tree 03
	}
}

local beaverTrees = Action()

function beaverTrees.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if toPosition == config.treesBeaver[1] or toPosition == config.treesBeaver[2] or toPosition == config.treesBeaver[3] and player:getStorageValue(Storage.Quest.TheNewFrontier.Questline) == 5 then
		if toPosition == config.treesBeaver[1] and player:getStorageValue(Storage.Quest.TheNewFrontier.Beaver1) < 1 then
			for i = 1, 3 do
				pos = toPosition
				Game.createMonster("enraged squirrel", pos)
				toPosition:sendMagicEffect(CONST_ME_TELEPORT)
			end
			player:setStorageValue(Storage.Quest.TheNewFrontier.Beaver1, 1)
			player:say("You have marked the tree, but you also angered the aquirrel family who lived on it!", TALKTYPE_MONSTER_SAY)

		elseif toPosition == config.treesBeaver[2] and player:getStorageValue(Storage.Quest.TheNewFrontier.Beaver2) < 1 then
			for i = 1, 5 do
				pos = toPosition
				Game.createMonster("wolf", pos)
				toPosition:sendMagicEffect(CONST_ME_TELEPORT)
			end
			Game.createMonster("war wolf", toPosition)
			toPosition:sendMagicEffect(CONST_ME_TELEPORT)
			player:setStorageValue(Storage.Quest.TheNewFrontier.Beaver2, 1)
			player:say("You have marked the tree but it seems someone marked it already! He is not happy with your actions and he brought friends!", TALKTYPE_MONSTER_SAY)

		elseif toPosition == config.treesBeaver[3] and player:getStorageValue(Storage.Quest.TheNewFrontier.Beaver3) < 1 then
			Game.createMonster("thieving squirrel", toPosition)
			toPosition:sendMagicEffect(CONST_ME_TELEPORT)
			player:setStorageValue(Storage.Quest.TheNewFrontier.Beaver3, 1)
			player:say("You've marked the tree, but its former inhabitant has stolen your bait! Get it before it runs away!", TALKTYPE_MONSTER_SAY)
			item:remove()
		end
	end
	return true
end

beaverTrees:id(9843)
beaverTrees:register()