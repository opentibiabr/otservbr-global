local function levitate(creature, parameter)
	local fromPosition = creature:getPosition()
	parameter = parameter:trim():lower()

	if parameter == "up" and fromPosition.z ~= 8 or parameter == "down" and fromPosition.z ~= 7 then
		local toPosition = creature:getPosition()
		toPosition:getNextPosition(creature:getDirection())

		local tile = Tile(parameter == "up" and Position(fromPosition.x, fromPosition.y, fromPosition.z - 1) or toPosition)
		if not tile or not tile:getGround() and not tile:hasFlag(TILESTATE_IMMOVABLEBLOCKSOLID) then
			tile = Tile(toPosition.x, toPosition.y, toPosition.z + (parameter == "up" and -1 or 1))

			if tile and tile:getGround() and not tile:hasFlag(TILESTATE_IMMOVABLEBLOCKSOLID) then
				local fromPos = creature:getPosition()
				local moved = creature:move(tile, bit.bor(FLAG_IGNOREBLOCKITEM, FLAG_IGNOREBLOCKCREATURE))

				if moved == RETURNVALUE_NOERROR then
					fromPos:sendMagicEffect(CONST_ME_TELEPORT)
				end

				return moved			
			end
		end
	end
	return RETURNVALUE_NOTPOSSIBLE
end

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	local returnValue = levitate(creature, variant:getString():lower())
	if returnValue ~= RETURNVALUE_NOERROR then
		creature:sendCancelMessage(returnValue)

creature:getPosition():sendMagicEffect(CONST_ME_POFF)
	return false
end
	return true
end

spell:name("Levitate")
spell:words("exani hur")
spell:group("support")
spell:vocation("druid;true", "elder druid;true", "knight;true", "elite knight;true", "paladin;true", "royal paladin;true", "sorcerer;true", "master sorcerer;true")
spell:id(81)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(12)
spell:mana(50)
spell:hasParams(true)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
