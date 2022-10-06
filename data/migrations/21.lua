function onUpdateDatabase()
	Spdlog.info("Updating database to version 22 (Add tier table to market_offers and market_history)")
	db.query("ALTER TABLE `market_offers` ADD `tier` smallint UNSIGNED NOT NULL DEFAULT '0';")
	db.query("ALTER TABLE `market_history` ADD `tier` smallint UNSIGNED NOT NULL DEFAULT '0';")
	return true
end
