function onUpdateDatabase()
    Spdlog.info("Updating database to version 19 (Fix tables IDs)")
    -- house_lists
    db.query("ALTER TABLE `house_lists` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `house_lists` ADD CONSTRAINT `house_lists_pk` PRIMARY KEY (`id`)")
    -- player_charms
    db.query("ALTER TABLE `player_charms` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_charms` ADD CONSTRAINT `player_charms_pk` PRIMARY KEY (`id`)")
    -- player_deaths
    db.query("ALTER TABLE `player_deaths` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_deaths` ADD CONSTRAINT `player_deaths_pk` PRIMARY KEY (`id`)")
    -- player_items
    db.query("ALTER TABLE `player_items` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_items` ADD CONSTRAINT `player_items_pk` PRIMARY KEY (`id`)")
    -- player_kills
    db.query("ALTER TABLE `player_kills` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_kills` ADD CONSTRAINT `player_kills_pk` PRIMARY KEY (`id`)")
    -- player_misc
    db.query("ALTER TABLE `player_misc` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_misc` ADD CONSTRAINT `player_misc_pk` PRIMARY KEY (`id`)")
    -- player_prey
    db.query("ALTER TABLE `player_prey` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_prey` ADD CONSTRAINT `player_prey_pk` PRIMARY KEY (`id`)")
    -- player_preytimes
    db.query("ALTER TABLE `player_preytimes` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_preytimes` ADD CONSTRAINT `player_preytimes_pk` PRIMARY KEY (`id`)")
    -- player_spells
    db.query("ALTER TABLE `player_spells` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_spells` ADD CONSTRAINT `player_spells_pk` PRIMARY KEY (`id`)")
    -- player_stash
    db.query("ALTER TABLE `player_stash` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `player_stash` ADD CONSTRAINT `player_stash_pk` PRIMARY KEY (`id`)")
    -- prey_slots
    db.query("ALTER TABLE `prey_slots` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `prey_slots` ADD CONSTRAINT `prey_slots_pk` PRIMARY KEY (`id`)")
    -- tile_store
    db.query("ALTER TABLE `tile_store` ADD `id` int(11) NOT NULL AUTO_INCREMENT")
    db.query("ALTER TABLE `tile_store` ADD CONSTRAINT `tile_store_pk` PRIMARY KEY (`id`)")
    return true
end
