local POLISHED_KEY_FRAGMENT01, POLISHED_KEY_FRAGMENT02 = 27264, 27263

local config = {
	[27261] = {
		{{1, 1}, POLISHED_KEY_FRAGMENT01}
	},

	[27262] = {
		{{1, 1}, POLISHED_KEY_FRAGMENT02}
	},
}

local metalFile = Action()

function metalFile.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetItem = config[target.itemid]
	if not targetItem then
		return true
	end

	for i = 1, #targetItem do
			if targetItem[i][2] then
				target:transform(targetItem[i][2])
				toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			end
			return true
	end
end

metalFile:id(27270)
metalFile:register()
