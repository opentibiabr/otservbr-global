function onUpdateDatabase()
    Spdlog.info("Updating database to version 19 (secret token)")

    db.query([[
        ALTER TABLE `accounts`
            ADD `secret` char(16) DEFAULT NULL;
    ]])
    return true
end
