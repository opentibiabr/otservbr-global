local facelessBaneImmunity = CreatureEvent("FacelessBaneImmunity")

function facelessBaneImmunity.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if creature and creature:isMonster() then
        if Game.getStorageValue(43010) >= 1 then
		    creature:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
        return true
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

facelessBaneImmunity:register()

local FacelessSummon = CreatureEvent("FacelessSummon")
function FacelessSummon.onThink(creature)
	if not creature or not creature:isMonster() then
		return false
	end

	local spawn = creature:getPosition()
    if creature:getHealth() <= 3500 then
		if Game.getStorageValue(43009) == 1 then
		    Game.createMonster("Faceless Bane", spawn, true, true)
            Game.createMonster("Ripper Spectre", spawn, true, true)
            Game.createMonster("Gazer Spectre", spawn, true, true)
            Game.createMonster("Burster Spectre", spawn, true, true)
            creature:remove()
            Game.setStorageValue(43009, 2)
            Game.setStorageValue(43010, 1)
        elseif Game.getStorageValue(43009) == 2 then
            Game.createMonster("Faceless Bane", spawn, true, true)
            Game.createMonster("Ripper Spectre", spawn, true, true)
            Game.createMonster("Gazer Spectre", spawn, true, true)
            Game.createMonster("Burster Spectre", spawn, true, true)
            creature:remove()
            Game.setStorageValue(43009, 0)
            Game.setStorageValue(43010, 1)
        end
        return false
	end
end

FacelessSummon:register()