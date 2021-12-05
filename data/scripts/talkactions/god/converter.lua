Imbuements_Weapons = {
	["armor"] = {19358, 3394, 3567, 3358, 3381, 3388, 3386, 3397, 11651, 3399, 28719, 3360, 21167, 9379, 3370, 3404, 3366, 7463, 8060, 21166, 3380, 13993, 8063, 16110, 34157, 34094, 34095}, -- ok
	["shield"] = {29430, 3437, 3418, 14088, 3435, 3419, 22758, 3420, 13998, 3416, 28722, 28721, 27650, 3422, 3433, 19373, 3414, 9372, 3436, 6432, 6390, 7460, 3424, 14000, 3439, 22726, 19363, 3444, 9380, 11688, 3537, 3409, 3442, 3428, 3434, 3431, 14042, 34154, 34099}, -- ok
	["boots"] = {29424, 22086, 3079, 3553, 9017, 3556, 10200, 13997, 10201, 4033, 7457, 819, 3555, 10323, 3552, 820, 818, 21169, 21981, 3550, 5461, 16112, 3551, 3554, 813, 22756, 19374, 10386, 30394, 31617, 34097, 34098}, --ok
	["helmet"] = {29427, 3393, 3022, 3408, 3352, 3385, 3391, 3387, 3396, 11689, 28715, 7458, 3365, 9382, 17852, 9381, 3573, 9374, 3392, 22192, 5741, 22754, 3369, 10385, 30397, 31577, 34156}, --ok
	["helmetmage"] = {9103, 3210, 10451, 7992, 9653, 8864, 28714, 27647, 31582}, -- ok
	["bow"] = {29417, 23290, 27455, 8027, 7438, 28718, 14246, 19362, 9378, 16164, 22866, 8029, 20083, 20084, 8026, 31581, 34088, 34150}, -- ok
	["crossbow"] = {23294, 8022, 3349, 27456, 8021, 22867, 8023, 8024, 8025, 14768, 19356, 20086, 20087, 30393, 34089}, -- ok
	["backpack"] = {2854, 2865, 2866, 2000, 2868, 2869, 2870, 2871, 3253, 2872, 3244, 5801, 5926, 5949, 7342, 8860, 9601, 9602, 9604, 9605, 10202, 10324, 10326, 10327, 10346, 14248, 14249, 14674, 16099, 16100, 19159, 20347, 21295, 21445, 22084, 23525, 24393, 24395, 30197, 28571},
	["wand"] = {25700, 3075, 8092, 8093, 8094}, --ok
	["rod"] = {8082, 8083, 22183}, --ok
	["axe"] = {27451, 3317, 3344, 7412, 27452, 16161, 8098, 3302, 10388, 7419, 3323, 7453, 3303, 3315, 7380, 8096, 7389, 14089, 7435, 3318, 7455, 7456, 3331, 22727, 7434, 6553, 8097, 3319, 3335, 20071, 20074, 20072, 20075, 3342, 14040, 10406}, --ok
	["club"] = {7414, 7426, 3341, 7429, 3311, 7415, 3333, 14250, 7431, 7430, 21172, 27454, 3332, 3340, 17813, 7424, 27453, 22762, 16162, 8100, 7421, 7392, 14001, 7410, 7437, 7451, 3312, 3324, 7423, 11692, 7452, 8101, 20080, 20077, 20081, 20078, 3309, 3279}, --ok
	["sword"] = {7404, 7403, 7406, 11693, 27449, 7416, 3295, 3301, 7385, 7382, 3339, 7402, 8102, 3326, 28723, 3281, 7407, 7405, 3288, 7384, 7418, 7383, 7417, 16175, 27450, 3271, 3264, 7391, 6527, 8103, 11657, 10392, 20065, 20069, 20066, 20068, 7408, 10390, 30398}, --ok
	["spellbooks"] = {22755, 3059, 8072, 8073, 20089, 20090, 25699, 29431, 29420, 29426, 34153}, -- ok
	["special_strike"] = {28717, 28716, 27458, 27457, 28826, 28825, 29425, 34090, 34091}, --ok
	["crit_wandrod"] = {30399, 34151},
	["life_wandrod"] = {30400, 34152},
	["elemental_swords"] = {27651, 29421, 29422, 31614, 34083, 34082, 34155},
	["elemental_axes"] = {28724, 30396, 34253, 34084, 34085, 32616},
	["elemental_clubs"] = {28725, 29419, 30395, 31580, 34087, 34086, 34254},
	-- Note: if an armor has native protection, it can't be imbue with this protection
	["armor_energy"] = {27648},
	["armor_only_energy"] = {29423},
	["armor_ice"] = {31579},
	["armor_earth"] = {29418, 31578},
	["armor_death"] = {13994, 31583, 34096}
}

local equipitems = {
	["Elemental Protection (Death)"] = {"armor", "armor_energy", "armor_only_energy", "armor_ice", "armor_earth", "spellbooks", "shield"},
	["Elemental Damage"] = {"axe", "club", "sword", "bow", "crossbow"},
	["Life Leech"] = {"axe", "club", "sword", "wand", "rod", "special_strike", "bow", "crossbow", "armor", "armor_energy", "armor_only_energy", "armor_ice", "armor_earth", "armor_death", "elemental_swords", "elemental_axes", "elemental_clubs", "crit_wandrod"},
	["Elemental Protection (Energy)"] = {"armor", "armor_earth", "armor_death", "spellbooks", "shield"},
	["Increase Speed"] = {"boots"},
	["Elemental Protection (Earth)"] = {"armor", "armor_energy", "armor_only_energy", "armor_ice", "armor_death", "spellbooks", "shield"},
	["Skillboost (Sword Fighting)"] = {"sword", "helmet", "elemental_swords"},
	["Skillboost (Axe Fighting)"] = {"axe", "helmet", "elemental_axes"},
	["Skillboost (Club Fighting)"] = {"club", "helmet", "elemental_clubs"},
	["Elemental Protection (Fire)"] = {"armor", "armor_energy", "armor_only_energy", "armor_ice", "armor_death", "spellbooks", "shield"},
	["Mana Leech"] = {"axe", "club", "sword", "wand", "rod", "special_strike", "bow", "crossbow", "helmet","helmetmage", "elemental_swords", "elemental_axes", "elemental_clubs", "crit_wandrod", "life_wandrod"}, -- Mana
	["Elemental Protection (Ice)"] = {"armor", "armor_only_energy", "armor_earth", "armor_death", "spellbooks", "shield"},
	["Skillboost (Shielding)"] = {"shield", "helmet", "spellbooks", "shield"},
	["Elemental Protection (Holy)"] = {"armor", "armor_energy", "armor_only_energy", "armor_ice", "armor_earth", "armor_death", "spellbooks", "shield"},
	["Skillboost (Distance Fighting)"] = {"bow", "crossbow", "helmet"},
	["Critical Hit"] = {"axe", "club", "sword", "bow", "crossbow", "special_strike", "elemental_swords", "elemental_axes", "elemental_clubs", "life_wandrod"},
	["Skillboost (Magic Level)"] = {"wand", "rod", "helmetmage", "special_strike", "special_wand", "special_rod", "crit_wandrod", "life_wandrod"},
	["Increase Capacity"] = {"backpack"},
}

local cacheImbue

local function getEquipItemsToImbue()
    local attr = {}
    for name_imbue, v in pairs(equipitems) do
        for _, name_equip in pairs(v) do
            if name_equip == cacheImbue then
                attr[#attr+1] = name_imbue
            end
        end
    end
    return attr
end

local function checkImbueWeapon(itemid)
    for name_equip, v in pairs(Imbuements_Weapons) do
        for _, id in pairs(v) do
            if id == tonumber(itemid) then
                cacheImbue = name_equip
                return true
            end
        end
    end
    return false
end

local function convert(file)
    file = io.open(file, "rb")
    local check = false
    local check2 = -1
    local check3 = true
    local cache_item = 0
    local cache_item_type = ""
    local lines = ""
    for line in file:lines("L") do
        if check2 > -1 then
            lines = lines .. string.format('\t\t<attribute key="imbuementslot" value="%s">\n', check2)
            for _, name_imbue in pairs(getEquipItemsToImbue()) do
                lines = lines .. string.format('\t\t\t<attribute value="%s"/>\n', name_imbue)
            end
            lines = lines .. '\t\t</attribute>'
            lines = lines .. "\n"
            check2 = -1
        end
        if check then
            -- for word in line:gmatch('<attribute key="slotType" value="(%w+)"/>') do
            --     cache_item_type = word
            --     break
            -- end
            for word in line:gmatch('<attribute key="imbuingslot" value="(%w+)"/>') do

                check3 = false
                check2 = tonumber(word)
                check = false -- false
                break
            end
        end
        for word in line:gmatch('<item id="(%w+)"') do
            if checkImbueWeapon(word) then
                check = true
            else
                cache_item = tonumber(word)
            end
        end
        if check3 then
            lines = lines .. line
        else
            -- print(line)
            check3 = true
        end
    end
    return lines
end

local converter = TalkAction("/converter")

function converter.onSay(player, words, param)
	local file = 'data/items/items.xml'
	local attr = convert(file)
	file = io.open(file, "rb")
	file = io.open("converted.xml", "wb")
	file:write(attr)
	file:close()
end

converter:register()
