local config = {
	['Monday'] = 'Plagueroot',
	['Tuesday'] = 'Malofur_Mangrinder',
	['Wednesday'] = 'Maxxenius',
	['Thursday'] = 'Alptramun',
	['Friday'] = 'Izcandar_the_Banished',
	['Saturday'] = 'Maxxenius', 
	['Sunday'] = 'Alptramun' 
}
local spawnByDay = true

local DreamCourts = GlobalEvent("DreamCourts")
function DreamCourts.onStartup()
	if spawnByDay then
		print('Dream Courts loaded: ' .. config[os.date("%A")])
		Game.loadMap('data/world/worldchanges/dream_courts_bosses/' .. config[os.date("%A")] ..'.otbm')
	else
		 print('Dream Courts loaded: No boss today')
	end
	return true
end
DreamCourts:register()