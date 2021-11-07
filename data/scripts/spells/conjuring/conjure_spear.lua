local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 2389, 1, CONST_ME_MAGIC_BLUE)
end

spell:group("support")
spell:name("Conjure Spear")
spell:words("exevo lanza")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(15)
spell:mana(100)
spell:soul(20)
spell:vocation("paladin;true", "royal paladin;true")
spell:needLearn(false)
spell:register()
