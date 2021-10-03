local config = {
    -- Posição inicial para onde os players serão teleportados quando o mapa for inundado e não estejam no raft
    waitPosition = Position(33878, 31002, 8),

    -- Tempo para ocorrer a alteração, tempo padrão é 2 minutos (120 * 1000)
    interval = (120 * 1000),

    -- Posição central da cave no primeiro andar para ser usada como referencia do getSpectators
	positionFirstFloor = {fromPosition = Position(33866, 30985, 8), toPosition = Position(33951, 31122, 8),center = Position(33906, 31055, 8)},
    -- Posições da cave no segundo andar para ser usada como referencia do getSpectators
	positionSecondFloor = {fromPosition = Position(33866, 30985, 9), toPosition = Position(33951, 31122, 9), center = Position(33906, 31055, 9)},
	boatPositionEmptyRoom = {
		{center = Position(33910, 31002, 9), rangeMinX = 1, rangeMaxX = 2, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33910, 31030, 9), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33885, 31042, 9), rangeMinX = 3, rangeMaxX = 3, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33928, 31042, 9), rangeMinX = 2, rangeMaxX = 2, rangeMinY = 1, rangeMaxY = 2},		
		{center = Position(33922, 31075, 9), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 2, rangeMaxY = 3},		
		{center = Position(33886, 31085, 9), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 1, rangeMaxY = 2},		
		{center = Position(33902, 31099, 9), rangeMinX = 1, rangeMaxX = 1, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33925, 31093, 9), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 2, rangeMaxY = 2}
	},
		
	boatPositionFloodedRoom = {
		{center = Position(33910, 31002, 8), rangeMinX = 1, rangeMaxX = 2, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33910, 31030, 8), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33885, 31042, 8), rangeMinX = 3, rangeMaxX = 3, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33928, 31042, 8), rangeMinX = 2, rangeMaxX = 2, rangeMinY = 1, rangeMaxY = 2},		
		{center = Position(33922, 31075, 8), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 2, rangeMaxY = 3},		
		{center = Position(33886, 31085, 8), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 1, rangeMaxY = 2},		
		{center = Position(33902, 31099, 8), rangeMinX = 1, rangeMaxX = 1, rangeMinY = 1, rangeMaxY = 2},
		{center = Position(33925, 31093, 8), rangeMinX = 2, rangeMaxX = 3, rangeMinY = 2, rangeMaxY = 2}
	},
		
	safeSpots = {
		{center = Position(33867, 30996, 9), rangeMinX = 0, rangeMaxX = 0, rangeMinY = 0, rangeMaxY = 0} -- Sem ultilidade
	},
	
	teleportsRaft = {
		{teleportFrom = Position(33906, 31001, 8), teleportTo = Position(33910, 31001, 8)},
		{teleportFrom = Position(33906, 31002, 8), teleportTo = Position(33910, 31002, 8)},
		{teleportFrom = Position(33906, 31003, 8), teleportTo = Position(33910, 31003, 8)},
		{teleportFrom = Position(33906, 31004, 8), teleportTo = Position(33910, 31004, 8)},		
		{teleportFrom = Position(33909, 31001, 8), teleportTo = Position(33905, 31001, 8)},
		{teleportFrom = Position(33909, 31002, 8), teleportTo = Position(33905, 31002, 8)},
		{teleportFrom = Position(33909, 31003, 8), teleportTo = Position(33905, 31003, 8)},
		{teleportFrom = Position(33909, 31004, 8), teleportTo = Position(33905, 31004, 8)},		
		{teleportFrom = Position(33912, 31001, 8), teleportTo = Position(33916, 31001, 8)},
		{teleportFrom = Position(33912, 31002, 8), teleportTo = Position(33916, 31002, 8)},
		{teleportFrom = Position(33912, 31003, 8), teleportTo = Position(33916, 31003, 8)},
		{teleportFrom = Position(33912, 31004, 8), teleportTo = Position(33916, 31004, 8)},		
		{teleportFrom = Position(33915, 31001, 8), teleportTo = Position(33911, 31001, 8)},
		{teleportFrom = Position(33915, 31002, 8), teleportTo = Position(33911, 31002, 8)},
		{teleportFrom = Position(33915, 31003, 8), teleportTo = Position(33911, 31003, 8)},
		{teleportFrom = Position(33915, 31004, 8), teleportTo = Position(33911, 31004, 8)},
		{teleportFrom = Position(33920, 31070, 8), teleportTo = Position(33920, 31074, 8)},
		{teleportFrom = Position(33921, 31070, 8), teleportTo = Position(33921, 31074, 8)},
		{teleportFrom = Position(33922, 31070, 8), teleportTo = Position(33922, 31074, 8)},
		{teleportFrom = Position(33923, 31070, 8), teleportTo = Position(33923, 31074, 8)},
		{teleportFrom = Position(33924, 31070, 8), teleportTo = Position(33924, 31074, 8)},
		{teleportFrom = Position(33920, 31073, 8), teleportTo = Position(33920, 31069, 8)},
		{teleportFrom = Position(33921, 31073, 8), teleportTo = Position(33921, 31069, 8)},
		{teleportFrom = Position(33922, 31073, 8), teleportTo = Position(33922, 31069, 8)},
		{teleportFrom = Position(33923, 31073, 8), teleportTo = Position(33923, 31069, 8)},
		{teleportFrom = Position(33924, 31073, 8), teleportTo = Position(33924, 31069, 8)},
		{teleportFrom = Position(33920, 31078, 8), teleportTo = Position(33920, 31082, 8)},
		{teleportFrom = Position(33921, 31078, 8), teleportTo = Position(33921, 31082, 8)},
		{teleportFrom = Position(33922, 31078, 8), teleportTo = Position(33922, 31082, 8)},
		{teleportFrom = Position(33923, 31078, 8), teleportTo = Position(33923, 31082, 8)},
		{teleportFrom = Position(33924, 31078, 8), teleportTo = Position(33924, 31082, 8)},
		{teleportFrom = Position(33920, 31081, 8), teleportTo = Position(33920, 31077, 8)},
		{teleportFrom = Position(33921, 31081, 8), teleportTo = Position(33921, 31077, 8)},
		{teleportFrom = Position(33922, 31081, 8), teleportTo = Position(33922, 31077, 8)},
		{teleportFrom = Position(33923, 31081, 8), teleportTo = Position(33923, 31077, 8)},
		{teleportFrom = Position(33924, 31081, 8), teleportTo = Position(33924, 31077, 8)},
		{teleportFrom = Position(33926, 31047, 8), teleportTo = Position(33926, 31043, 8)},
		{teleportFrom = Position(33927, 31047, 8), teleportTo = Position(33927, 31043, 8)},
		{teleportFrom = Position(33928, 31047, 8), teleportTo = Position(33928, 31043, 8)},
		{teleportFrom = Position(33929, 31047, 8), teleportTo = Position(33929, 31043, 8)},
		{teleportFrom = Position(33930, 31047, 8), teleportTo = Position(33930, 31043, 8)},
		{teleportFrom = Position(33926, 31044, 8), teleportTo = Position(33926, 31048, 8)},
		{teleportFrom = Position(33927, 31044, 8), teleportTo = Position(33926, 31048, 8)},
		{teleportFrom = Position(33928, 31044, 8), teleportTo = Position(33926, 31048, 8)},
		{teleportFrom = Position(33929, 31044, 8), teleportTo = Position(33926, 31048, 8)},
		{teleportFrom = Position(33930, 31044, 8), teleportTo = Position(33926, 31048, 8)},
		{teleportFrom = Position(33926, 31038, 8), teleportTo = Position(33926, 31042, 8)},
		{teleportFrom = Position(33927, 31038, 8), teleportTo = Position(33927, 31042, 8)},
		{teleportFrom = Position(33928, 31038, 8), teleportTo = Position(33928, 31042, 8)},
		{teleportFrom = Position(33929, 31038, 8), teleportTo = Position(33929, 31042, 8)},
		{teleportFrom = Position(33930, 31038, 8), teleportTo = Position(33930, 31042, 8)},
		{teleportFrom = Position(33926, 31041, 8), teleportTo = Position(33926, 31037, 8)},
		{teleportFrom = Position(33927, 31041, 8), teleportTo = Position(33927, 31037, 8)},
		{teleportFrom = Position(33928, 31041, 8), teleportTo = Position(33928, 31037, 8)},
		{teleportFrom = Position(33929, 31041, 8), teleportTo = Position(33929, 31037, 8)},
		{teleportFrom = Position(33930, 31041, 8), teleportTo = Position(33930, 31037, 8)},
		{teleportFrom = Position(33915, 31029, 8), teleportTo = Position(33912, 31029, 8)},
		{teleportFrom = Position(33915, 31030, 8), teleportTo = Position(33912, 31030, 8)},
		{teleportFrom = Position(33915, 31031, 8), teleportTo = Position(33912, 31031, 8)},
		{teleportFrom = Position(33915, 31032, 8), teleportTo = Position(33912, 31032, 8)},
		{teleportFrom = Position(33913, 31029, 8), teleportTo = Position(33916, 31029, 8)},
		{teleportFrom = Position(33913, 31030, 8), teleportTo = Position(33916, 31030, 8)},
		{teleportFrom = Position(33913, 31031, 8), teleportTo = Position(33916, 31031, 8)},
		{teleportFrom = Position(33913, 31032, 8), teleportTo = Position(33916, 31032, 8)},
		{teleportFrom = Position(33905, 31029, 8), teleportTo = Position(33909, 31029, 8)},
		{teleportFrom = Position(33905, 31030, 8), teleportTo = Position(33909, 31030, 8)},
		{teleportFrom = Position(33905, 31031, 8), teleportTo = Position(33909, 31031, 8)},
		{teleportFrom = Position(33905, 31032, 8), teleportTo = Position(33909, 31032, 8)},
		{teleportFrom = Position(33908, 31029, 8), teleportTo = Position(33904, 31029, 8)},
		{teleportFrom = Position(33908, 31030, 8), teleportTo = Position(33904, 31030, 8)},
		{teleportFrom = Position(33908, 31031, 8), teleportTo = Position(33904, 31031, 8)},
		{teleportFrom = Position(33908, 31032, 8), teleportTo = Position(33904, 31032, 8)},
		{teleportFrom = Position(33882, 31038, 8), teleportTo = Position(33882, 31042, 8)},
		{teleportFrom = Position(33883, 31038, 8), teleportTo = Position(33883, 31042, 8)},
		{teleportFrom = Position(33884, 31038, 8), teleportTo = Position(33884, 31042, 8)},
		{teleportFrom = Position(33885, 31038, 8), teleportTo = Position(33885, 31042, 8)},
		{teleportFrom = Position(33886, 31038, 8), teleportTo = Position(33886, 31042, 8)},
		{teleportFrom = Position(33887, 31038, 8), teleportTo = Position(33887, 31042, 8)},
		{teleportFrom = Position(33888, 31038, 8), teleportTo = Position(33888, 31042, 8)},
		{teleportFrom = Position(33882, 31041, 8), teleportTo = Position(33882, 31037, 8)},
		{teleportFrom = Position(33883, 31041, 8), teleportTo = Position(33883, 31037, 8)},
		{teleportFrom = Position(33884, 31041, 8), teleportTo = Position(33884, 31037, 8)},
		{teleportFrom = Position(33885, 31041, 8), teleportTo = Position(33885, 31037, 8)},
		{teleportFrom = Position(33886, 31041, 8), teleportTo = Position(33886, 31037, 8)},
		{teleportFrom = Position(33887, 31041, 8), teleportTo = Position(33887, 31037, 8)},
		{teleportFrom = Position(33888, 31041, 8), teleportTo = Position(33888, 31037, 8)},
		{teleportFrom = Position(33882, 31047, 8), teleportTo = Position(33882, 31043, 8)},
		{teleportFrom = Position(33883, 31047, 8), teleportTo = Position(33883, 31043, 8)},
		{teleportFrom = Position(33884, 31047, 8), teleportTo = Position(33884, 31043, 8)},
		{teleportFrom = Position(33885, 31047, 8), teleportTo = Position(33885, 31043, 8)},
		{teleportFrom = Position(33886, 31047, 8), teleportTo = Position(33886, 31043, 8)},
		{teleportFrom = Position(33887, 31047, 8), teleportTo = Position(33887, 31043, 8)},
		{teleportFrom = Position(33888, 31047, 8), teleportTo = Position(33888, 31043, 8)},
		{teleportFrom = Position(33882, 31044, 8), teleportTo = Position(33882, 31048, 8)},
		{teleportFrom = Position(33883, 31044, 8), teleportTo = Position(33883, 31048, 8)},
		{teleportFrom = Position(33884, 31044, 8), teleportTo = Position(33884, 31048, 8)},
		{teleportFrom = Position(33885, 31044, 8), teleportTo = Position(33885, 31048, 8)},
		{teleportFrom = Position(33886, 31044, 8), teleportTo = Position(33886, 31048, 8)},
		{teleportFrom = Position(33887, 31044, 8), teleportTo = Position(33887, 31048, 8)},
		{teleportFrom = Position(33888, 31044, 8), teleportTo = Position(33888, 31048, 8)},
		{teleportFrom = Position(33885, 31082, 8), teleportTo = Position(33885, 31086, 8)},
		{teleportFrom = Position(33886, 31082, 8), teleportTo = Position(33886, 31086, 8)},
		{teleportFrom = Position(33887, 31082, 8), teleportTo = Position(33887, 31086, 8)},
		{teleportFrom = Position(33888, 31082, 8), teleportTo = Position(33888, 31086, 8)},
		{teleportFrom = Position(33889, 31082, 8), teleportTo = Position(33889, 31086, 8)},
		{teleportFrom = Position(33890, 31082, 8), teleportTo = Position(33890, 31086, 8)},
		{teleportFrom = Position(33885, 31085, 8), teleportTo = Position(33885, 31081, 8)},
		{teleportFrom = Position(33886, 31085, 8), teleportTo = Position(33886, 31081, 8)},
		{teleportFrom = Position(33887, 31085, 8), teleportTo = Position(33887, 31081, 8)},
		{teleportFrom = Position(33888, 31085, 8), teleportTo = Position(33888, 31081, 8)},
		{teleportFrom = Position(33889, 31085, 8), teleportTo = Position(33889, 31081, 8)},
		{teleportFrom = Position(33890, 31085, 8), teleportTo = Position(33890, 31081, 8)},
		{teleportFrom = Position(33885, 31085, 8), teleportTo = Position(33885, 31087, 8)},
		{teleportFrom = Position(33886, 31091, 8), teleportTo = Position(33886, 31087, 8)},
		{teleportFrom = Position(33887, 31091, 8), teleportTo = Position(33887, 31087, 8)},
		{teleportFrom = Position(33888, 31091, 8), teleportTo = Position(33888, 31087, 8)},
		{teleportFrom = Position(33889, 31091, 8), teleportTo = Position(33889, 31087, 8)},
		{teleportFrom = Position(33890, 31091, 8), teleportTo = Position(33890, 31087, 8)},
		{teleportFrom = Position(33885, 31088, 8), teleportTo = Position(33885, 31092, 8)},
		{teleportFrom = Position(33886, 31088, 8), teleportTo = Position(33886, 31092, 8)},
		{teleportFrom = Position(33887, 31088, 8), teleportTo = Position(33887, 31092, 8)},
		{teleportFrom = Position(33888, 31088, 8), teleportTo = Position(33888, 31092, 8)},
		{teleportFrom = Position(33889, 31088, 8), teleportTo = Position(33889, 31092, 8)},
		{teleportFrom = Position(33890, 31088, 8), teleportTo = Position(33890, 31092, 8)},
		{teleportFrom = Position(33899, 31097, 8), teleportTo = Position(33903, 31097, 8)},
		{teleportFrom = Position(33899, 31098, 8), teleportTo = Position(33903, 31098, 8)},
		{teleportFrom = Position(33899, 31099, 8), teleportTo = Position(33903, 31099, 8)},
		{teleportFrom = Position(33899, 31100, 8), teleportTo = Position(33903, 31100, 8)},
		{teleportFrom = Position(33902, 31097, 8), teleportTo = Position(33898, 31097, 8)},
		{teleportFrom = Position(33902, 31098, 8), teleportTo = Position(33898, 31098, 8)},
		{teleportFrom = Position(33902, 31099, 8), teleportTo = Position(33898, 31099, 8)},
		{teleportFrom = Position(33902, 31100, 8), teleportTo = Position(33898, 31100, 8)},
		{teleportFrom = Position(33907, 31097, 8), teleportTo = Position(33903, 31097, 8)},
		{teleportFrom = Position(33907, 31098, 8), teleportTo = Position(33903, 31098, 8)},
		{teleportFrom = Position(33907, 31099, 8), teleportTo = Position(33903, 31099, 8)},
		{teleportFrom = Position(33907, 31100, 8), teleportTo = Position(33903, 31100, 8)},
		{teleportFrom = Position(33904, 31097, 8), teleportTo = Position(33908, 31097, 8)},
		{teleportFrom = Position(33904, 31098, 8), teleportTo = Position(33908, 31098, 8)},
		{teleportFrom = Position(33904, 31099, 8), teleportTo = Position(33908, 31099, 8)},
		{teleportFrom = Position(33904, 31100, 8), teleportTo = Position(33908, 31100, 8)},
		{teleportFrom = Position(33920, 31091, 8), teleportTo = Position(33924, 31091, 8)},
		{teleportFrom = Position(33920, 31092, 8), teleportTo = Position(33924, 31092, 8)},
		{teleportFrom = Position(33920, 31093, 8), teleportTo = Position(33924, 31093, 8)},
		{teleportFrom = Position(33920, 31094, 8), teleportTo = Position(33924, 31094, 8)},
		{teleportFrom = Position(33920, 31095, 8), teleportTo = Position(33924, 31095, 8)},
		{teleportFrom = Position(33923, 31091, 8), teleportTo = Position(33919, 31091, 8)},
		{teleportFrom = Position(33923, 31092, 8), teleportTo = Position(33919, 31092, 8)},
		{teleportFrom = Position(33923, 31093, 8), teleportTo = Position(33919, 31093, 8)},
		{teleportFrom = Position(33923, 31094, 8), teleportTo = Position(33919, 31094, 8)},
		{teleportFrom = Position(33923, 31095, 8), teleportTo = Position(33919, 31095, 8)},
		{teleportFrom = Position(33931, 31091, 8), teleportTo = Position(33927, 31091, 8)},
		{teleportFrom = Position(33931, 31092, 8), teleportTo = Position(33927, 31092, 8)},
		{teleportFrom = Position(33931, 31093, 8), teleportTo = Position(33927, 31093, 8)},
		{teleportFrom = Position(33931, 31094, 8), teleportTo = Position(33927, 31094, 8)},
		{teleportFrom = Position(33931, 31095, 8), teleportTo = Position(33927, 31095, 8)},
		{teleportFrom = Position(33928, 31091, 8), teleportTo = Position(33932, 31091, 8)},
		{teleportFrom = Position(33928, 31092, 8), teleportTo = Position(33932, 31092, 8)},
		{teleportFrom = Position(33928, 31093, 8), teleportTo = Position(33932, 31093, 8)},
		{teleportFrom = Position(33928, 31094, 8), teleportTo = Position(33932, 31094, 8)},
		{teleportFrom = Position(33928, 31095, 8), teleportTo = Position(33932, 31095, 8)}
	 }
}

--[[ Esse LoadMap vai carregar o mapa vázio somente com os detalhes e setar que ele está vázio. --]]

local EbbAndFlow = GlobalEvent("EbbAndFlow")
function EbbAndFlow.onStartup(interval)
	Game.loadMap('data/world/ebbandflow/eebandflowempty.otbm')
	Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Empty, 1)
	Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Active, 0)
	return true
end
EbbAndFlow:register()

--[[ 
    Funções para carregar os mapas da wolrd change,
    nesses mapas contém somente os detalhes que serão alterados. 
--]]
local function loadMapEmpty()
	Game.loadMap('data/world/ebbandflow/eebandflowempty.otbm')
end
local function loadMapInundate()
	Game.loadMap('data/world/ebbandflow/eebandflowinundate.otbm')
end

local function playerInSafeSpot()
	for i = 1, #config.safeSpots do
		local safeSpot = config.safeSpots[i]
		local specs, spec = Game.getSpectators(safeSpot.center, false, true, safeSpot.rangeMinX, safeSpot.rangeMaxX, safeSpot.rangeMinX, safeSpot.rangeMaxY)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				return true
			end
		end
	end
end

local function playerInBoatEmptyRoom()
	for i = 1, #config.boatPositionEmptyRoom do
		local boat = config.boatPositionEmptyRoom[i]
		local specs, spec = Game.getSpectators(boat.center, false, true, boat.rangeMinX, boat.rangeMaxX, boat.rangeMinX, boat.rangeMaxY)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				local specPos = spec:getPosition()
				specPos = {x = specPos.x, y = specPos.y, z = specPos.z - 1}
				spec:teleportTo(specPos)
				return true
			else
				spec:remove()
				return true
			end
		end
	end
end

local function playerInBoatInundateRoom()
	for i = 1, #config.boatPositionFloodedRoom do
		local boat = config.boatPositionFloodedRoom[i]
		local specs, spec = Game.getSpectators(boat.center, false, true, boat.rangeMinX, boat.rangeMaxX, boat.rangeMinX, boat.rangeMaxY)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				local specPos = spec:getPosition()
				specPos = {x = specPos.x, y = specPos.y, z = specPos.z + 1}
				spec:teleportTo(specPos)
				return true
			end
		end
	end
end

local function sendPlayerToStart()
	local specs, spec = Game.getSpectators(config.positionSecondFloor.center, false, false, 44, 44, 74, 74)
	for i = 1, #specs do
		spec = specs[i]
		if spec:isPlayer() then
			if playerInBoatEmptyRoom() or playerInBoatInundateRoom() or playerInSafeSpot() then
			else
				spec:teleportTo(config.waitPosition)
			end
		else
			spec:remove()
		end
	end
end

local function ChecksPlayersOnSecondFloor()
	local specs, spec = Game.getSpectators(config.positionSecondFloor.center, false, true, 44, 44, 74, 74)
	for i = 1, #specs do
		spec = specs[i]
		if spec:isPlayer() then
			return true
		end
	end
end

local function ChecksPlayersOnFirstFloor()
	local specs, spec = Game.getSpectators(config.positionFirstFloor.center, false, true, 44, 44, 74, 74)
	for i = 1, #specs do
		spec = specs[i]
		if spec:isPlayer() then
			return true
		end
	end
end

local function isWater(itemId)
	local water = {
		4608,4609,4610,4611,4612,4613,4614,4615,4616,4617,
		4618,4619,4620,4621,4622,4623,4624,4625,4664,4665,
		4666,4820,4821,4823,4824,4825
		}

		for i = 1, #water do
			if itemId == water[i] then
				return true
			end
		end
	end

	local function isFloatRaft(itemId)
		local raft = {7187,7191,7193,7188,33575,7194,7190,7192,7195}
			for i = 1, #raft do
				if itemId == raft[i] then
					return true
				end
			end
		end

	local function isNormalRaft(itemId)
		local raft = {7201,7204,7206,7202,33575,7207,7203,7205,7208}
			for i = 1, #raft do
				if itemId == raft[i] then
					return true
				end
			end
		end

	local function floatingBorder(itemId)
		local floatingBorder = {36010,36006,36014,36009,36011,36007,36015,36013,36008,36017,36012,36016}
		for i = 1, #floatingBorder do
			if itemId == floatingBorder[i] then
				return true
			end
		end
	end

	local function stoneBorder(itemId)
		local stoneBorder = {22280,22284,19757,19758,22285,22283,19759,22286,22281,22291,22287,22282}
		for i = 1, #stoneBorder do
			if itemId == stoneBorder[i] then
				return true
			end
		end
	end

-- Vai percorrer a area do mapa e remover os sqms do primeiro andar para que os novos entrem
local function reloadFirstFloor()
	for x = config.positionFirstFloor.fromPosition.x, config.positionFirstFloor.toPosition.x do
		for y = config.positionFirstFloor.fromPosition.y, config.positionFirstFloor.toPosition.y do
			for z = config.positionFirstFloor.fromPosition.z, config.positionFirstFloor.toPosition.z do
				local tile = Tile(Position(x, y, z))
				if not tile then
					break
				end
				local items = tile:getItems()
				if items then
					for i = 1, #items do
					local itemid = items[i]:getId()
						if floatingBorder(itemid) or stoneBorder(itemid) then
						items[i]:remove()
						end
					end
				end
				local ground = tile:getGround()
				if ground then
					if isWater(ground.itemid) or isFloatRaft(ground.itemid) then
						ground:remove()
					end
				end

			end
		end
	end
end
-- Vai percorrer a area do mapa e remover os sqms do segundo andar para que os novos entrem
local function reloadSecondFloor()
		for x = config.positionSecondFloor.fromPosition.x, config.positionSecondFloor.toPosition.x do
			for y = config.positionSecondFloor.fromPosition.y, config.positionSecondFloor.toPosition.y do
				for z = config.positionSecondFloor.fromPosition.z, config.positionSecondFloor.toPosition.z do
					local tile = Tile(Position(x, y, z))
					if not tile then
						break
					end
					local items = tile:getItems()
					if items then
						for i = 1, #items do
						local itemid = items[i]:getId()
                        local openDoor = 6254
                        local closedDoor = 6253
                        if itemid == openDoor then
                            items[i]:transform(closedDoor)
                        end
							if isNormalRaft(itemid) then
							items[i]:remove()
							end
						end
					end
				end
			end
		end
end

local function reloadMap()
	-- local roomstate = Game.getStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Empty)
		reloadFirstFloor()
		reloadSecondFloor()

end
-- Evento que vai disparar a cada 2 minutos uma série de eventos para atualizar o mapa.
local eddAndFlowInundate = GlobalEvent("eddAndFlowInundate")
function eddAndFlowInundate.onThink(interval, lastExecution)
	 if ChecksPlayersOnSecondFloor() or ChecksPlayersOnFirstFloor() then
		Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Active, 1)
		print('Ebb And Flow - Ativado')
	 else
		Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Active, 0)
		print('Ebb And Flow - Desativado')
	 end

	if Game.getStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Active) == 0 then
		return true
	end
		if Game.getStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Empty) <= 1 then
			-- Game.broadcastMessage('Map flooded in 2 minutes.', MESSAGE_EVENT_ADVANCE)
			addEvent(reloadMap, config.interval)--Correto 120 * 1000
			addEvent(loadMapInundate, config.interval)--Correto 120 * 1000
			addEvent(sendPlayerToStart, config.interval)--Correto 120 * 1000
			Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Empty, 2)
			Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.doors, -1)
			return true
		else
			-- Game.broadcastMessage('Map empty in 2 minutes.', MESSAGE_EVENT_ADVANCE)
			addEvent(reloadMap, config.interval)--Correto 120 * 1000
			addEvent(loadMapEmpty, config.interval) --Correto 120 * 1000
			addEvent(playerInBoatInundateRoom, config.interval) --Correto 120 * 1000
			Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Empty, 0)
			Game.setStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.doors, 1)
			return true
		end

	return true
end
eddAndFlowInundate:interval(config.interval)
eddAndFlowInundate:register()


local lockDoorInundate = Action()
function lockDoorInundate.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local inundateRoom = Game.getStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.doors)
	if inundateRoom ~= 1 then
		local door = item:getId()
		local openDoor = 6254
		local closedDoor = 6253
		if door == closedDoor then
			item:transform(openDoor)
			return true
		else
			item:transform(closedDoor)
			return true
		end
	else
		player:say("The door can't be opened. The other side is flooded.", TALKTYPE_MONSTER_SAY, false, player)
		return true
	end
	return true
end
lockDoorInundate:aid(26001)
lockDoorInundate:register()

local teleportRaft = MoveEvent()
function teleportRaft.onStepIn(creature, item, pos, fromPosition)
	if Game.getStorageValue(GlobalStorage.SoulWarQuest.EddAndFlow.Empty) <= 1 then
		if not creature:isPlayer() then
			creature:teleportTo(fromPosition)
			return false
		end
		local posTp = item:getPosition()
		for i = 1, #config.teleportsRaft do
			if config.teleportsRaft[i].teleportFrom == posTp then
				creature:teleportTo(config.teleportsRaft[i].teleportTo)
			end
		end
	end
end

teleportRaft:type("stepin")
teleportRaft:aid(26002)
teleportRaft:register() 