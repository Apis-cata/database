ALTER TABLE character_db_version CHANGE COLUMN required_12763_00_characters_pvpstats required_12931_01_characters_guild bit;

ALTER TABLE `guild` CHANGE `info` `info` varchar(500) NOT NULL DEFAULT '';
ALTER TABLE `guild` CHANGE `motd` `motd` varchar(128) NOT NULL DEFAULT '';

ALTER TABLE character_db_version CHANGE COLUMN required_12931_01_characters_guild required_12931_02_characters_guild_bank_tab bit;

ALTER TABLE `guild_bank_tab` CHANGE `TabText` `TabText` varchar(500) DEFAULT NULL;

ALTER TABLE character_db_version CHANGE COLUMN required_12931_02_characters_guild_bank_tab required_12931_03_characters_guild_member bit;

ALTER TABLE `guild_member` CHANGE `pnote` `pnote` varchar(31) NOT NULL DEFAULT '';
ALTER TABLE `guild_member` CHANGE `offnote` `offnote` varchar(31) NOT NULL DEFAULT '';

ALTER TABLE character_db_version CHANGE COLUMN required_12931_03_characters_guild_member required_12937_01_characters_pvpstats bit;

ALTER TABLE pvpstats_players CHANGE COLUMN player_guid character_guid int(10) unsigned NOT NULL AFTER battleground_id;
