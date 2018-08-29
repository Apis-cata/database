ALTER TABLE character_db_version CHANGE COLUMN required_13963_01_characters_account_instances_entered required_13973_01_characters_taxi_system_update bit;

-- Convert old data into new format in special failsafe mode for succesful loading
UPDATE `characters` SET `taxi_path` = SUBSTRING_INDEX(`taxi_path`, ' ', 1) WHERE LENGTH(`taxi_path`) > 1;

-- Drop outdated columns in bg data
ALTER TABLE `character_battleground_data` DROP COLUMN `taxi_start`, DROP COLUMN `taxi_end`;

ALTER TABLE character_db_version CHANGE COLUMN required_13973_01_characters_taxi_system_update required_13977_01_characters_taxi_system_format_update bit;

-- Convert data from the previous format into orphaned mode for failsafe loading: orphaned destination
UPDATE `characters` SET `taxi_path` = SUBSTRING_INDEX(`taxi_path`, ':', -1) WHERE LENGTH(`taxi_path`) > 0;
