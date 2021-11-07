local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 2543, 10, CONST_ME_MAGIC_BLUE)
end

spell:name("Conjure Bolt")
spell:words("exevo con mort")
spell:group("support")
spell:vocation("paladin;true", "royal paladin;true")
spell:id(79)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(17)
spell:mana(170)
spell:soul(4)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
