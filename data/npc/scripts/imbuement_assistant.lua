 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
    npcHandler:onThink()
end

local voices = { {text = 'Hello adventurer, looking for imbuement items?'} }
npcHandler:addModule(VoiceModule:new(voices))

-- Basic

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = "I am currently selling items for imbuements."})

npcHandler:setMessage(MESSAGE_GREET, "Welcome to the imbuements shop!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Goodbye, and come again.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Goodbye, and come again.")

npcHandler:addModule(FocusModule:new())
