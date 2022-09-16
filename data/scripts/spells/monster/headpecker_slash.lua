
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SLASH)
combat:setArea(createCombatArea({
	{0, 0, 0},
	{1, 1, 1},
	{1, 1, 1},
	{0, 3, 0}
}))

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:name("headpeckerslash")
spell:words("###492")
spell:blockWalls(true)
spell:needDirection(true)
spell:needLearn(true)
spell:register()