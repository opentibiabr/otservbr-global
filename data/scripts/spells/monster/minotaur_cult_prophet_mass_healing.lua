local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)

local monsters = {
	"minotaur cult prophet",
	"minotaur cult follower",
	"minotaur cult zealot",
}

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

function onTargetTile(cid, pos)
	local tile = Tile(pos)
    	if tile then
    		local target = tile:getTopCreature()
    		if target and target ~= cid then
    			targetName = target:getName():lower()
    			casterName = cid:getName():lower()
    			if table.contains(monsters, targetName) then
    			local healingValue = math.random(200, 350)
    				target:addHealth(healingValue)
    			end
    		end
    	end
    return true
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
    return combat:execute(creature, variant)
end

spell:name("minotaur_cult_prophet_mass_healing")
spell:words("###404")
spell:blockWalls(true)
spell:needLearn(true)
spell:isAggressive(false)
spell:register()