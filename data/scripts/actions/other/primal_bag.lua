local rewards = {
    { id = 39147, name = "Spiritthorn Armor" },
    { id = 39148, name = "Spiritthorn Helmet" },
    { id = 39149, name = "Alicorn Headguard" },
    { id = 39150, name = "Alicorn Quiver" },
    { id = 39151, name = "Arcanomancer Regalia" },
    { id = 39152, name = "Arcanomancer Folio" },
    { id = 39153, name = "Arboreal Crown" },
    { id = 39154, name = "Arboreal Tome" },
    { id = 39177, name = "Spiritthorn Ring" },
    { id = 39180, name = "Alicorn Ring" },
    { id = 39183, name = "Arcanomancer Sigil" },
    { id = 38186, name = "Arboreal Ring" }
}

local primalBag = Action()

function primalBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
	return true
end

primalBag:id(39546)
primalBag:register()
