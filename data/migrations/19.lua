function onUpdateDatabase()
	Spdlog.info("Updating database to version 20 (Binary Save), items, depot locker items,depot items and inbox items")
	db.query("ALTER TABLE `players` ADD `items` longblob DEFAULT NULL")
	db.query("ALTER TABLE `players` ADD `depot_locker_items` longblob DEFAULT NULL")
	db.query("ALTER TABLE `players` ADD `depot_items` longblob DEFAULT NULL")
	db.query("ALTER TABLE `players` ADD `inbox_items` longblob DEFAULT NULL")
	db.query("ALTER TABLE `players` ADD `rewards` longblob DEFAULT NULL")
	db.query("DROP TABLE `player_items`")
	db.query("DROP TABLE `player_depotitems`")
	db.query("DROP TABLE `player_inboxitems`")
	db.query("DROP TABLE `player_rewards`")
	return true
end
