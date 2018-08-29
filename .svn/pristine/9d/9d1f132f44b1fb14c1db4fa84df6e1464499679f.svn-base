ALTER TABLE db_version CHANGE COLUMN required_c13123_01_mangos_scriptdev2_tables required_12941_01_mangos_event_linkedto BIT(1) NULL DEFAULT NULL;

ALTER TABLE game_event ADD COLUMN linkedTo mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'This event starts only if defined LinkedTo event is started' AFTER holiday;

ALTER TABLE db_version CHANGE COLUMN required_12941_01_mangos_event_linkedto required_12943_01_mangos_flametongue bit;

DELETE FROM spell_bonus_data WHERE entry=8026;
INSERT INTO spell_bonus_data VALUES('8026', '3.85', '0', '0', '0', 'Shaman - Flametongue Weapon Proc');

ALTER TABLE db_version CHANGE COLUMN required_12943_01_mangos_flametongue required_12944_01_mangos_item_extraflags bit;

UPDATE item_template SET extraFlags = 1 WHERE extraFlags != 0;

ALTER TABLE db_version CHANGE COLUMN required_12944_01_mangos_item_extraflags required_12947_01_mangos_game_event bit;

ALTER TABLE game_event MODIFY start_time DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute start date, the event will never start before', MODIFY end_time DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute end date, the event will never start after';

UPDATE game_event SET start_time='1970-01-01 00:00:00' WHERE start_time='0000-00-00 00:00:00';
UPDATE game_event SET end_time='1970-01-01 00:00:00' WHERE end_time='0000-00-00 00:00:00';

ALTER TABLE db_version CHANGE COLUMN required_12947_01_mangos_game_event required_12948_01_mangos_areatrigger_teleport bit;

ALTER TABLE areatrigger_teleport ADD COLUMN `condition_id` INT(11) unsigned NOT NULL default '0' AFTER target_orientation;

ALTER TABLE db_version CHANGE COLUMN required_12948_01_mangos_areatrigger_teleport required_12948_02_mangos_quest_template bit;

ALTER TABLE quest_template ADD COLUMN RequiredCondition INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER RequiredSkillValue;

ALTER TABLE db_version CHANGE COLUMN required_12948_02_mangos_quest_template required_12948_03_mangos_npc_trainer bit;

ALTER TABLE npc_trainer ADD COLUMN `condition_id` INT(11) unsigned NOT NULL default '0' AFTER reqlevel;

ALTER TABLE db_version CHANGE COLUMN required_12948_03_mangos_npc_trainer required_12948_04_mangos_npc_trainer_template bit;

ALTER TABLE npc_trainer_template ADD COLUMN `condition_id` INT(11) unsigned NOT NULL default '0' AFTER reqlevel;

ALTER TABLE db_version CHANGE COLUMN required_12948_04_mangos_npc_trainer_template required_12950_01_mangos_gameobject_template bit;

ALTER TABLE gameobject_template
ADD COLUMN ExtraFlags INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER flags,
ADD COLUMN CustomData1 INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER data31;

ALTER TABLE db_version CHANGE COLUMN required_12950_01_mangos_gameobject_template required_12951_01_mangos_item_template bit;

UPDATE item_template SET spellcharges_1 = ABS(spellcharges_1), spellcharges_2 = ABS(spellcharges_2), spellcharges_3 = ABS(spellcharges_3), spellcharges_4 = ABS(spellcharges_4), spellcharges_5 = ABS(spellcharges_5), extraFlags = 0 WHERE entry IN (5513, 5514, 8007, 8008, 22044, 33312);
