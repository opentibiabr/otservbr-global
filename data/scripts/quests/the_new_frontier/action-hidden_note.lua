local hiddenNote = Action()

function hiddenNote.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if player:getStorageValue(Storage.Quest.TheNewFrontier.Mission7_HiddenNote) < 1 then
		local note = player:addItem(8747, 1)
		note:setAttribute(ITEM_ATTRIBUTE_TEXT, "Go to the secret door to the north")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a piece of paper.')
		player:setStorageValue(Storage.Quest.TheNewFrontier.Mission7_HiddenNote, 1)
		return true
	end
end

hiddenNote:aid(50365)
hiddenNote:register()