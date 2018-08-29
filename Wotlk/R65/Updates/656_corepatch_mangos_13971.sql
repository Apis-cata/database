ALTER TABLE db_version CHANGE COLUMN required_13960_01_mangos_dbscript_string_rename required_13962_01_mangos_game_event_group bit;

ALTER TABLE game_event
ADD EventGroup mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER linkedTo;

ALTER TABLE db_version CHANGE COLUMN required_13962_01_mangos_game_event_group required_13964_01_mangos_comments bit;

ALTER TABLE conditions MODIFY comments VARCHAR(500) DEFAULT '';

ALTER TABLE dbscript_random_templates ADD comments VARCHAR(500) DEFAULT '' AFTER chance;

ALTER TABLE pickpocketing_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
ALTER TABLE mail_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;

# ALTER TABLE creature_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
# ALTER TABLE gameobject_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
# ALTER TABLE reference_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;

# ALTER TABLE disenchant_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
# ALTER TABLE fishing_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
# ALTER TABLE item_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
# ALTER TABLE prospecting_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
# ALTER TABLE skinning_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;

ALTER TABLE db_version CHANGE COLUMN required_13964_01_mangos_comments required_13965_01_mangos_questgiver_greeting bit;

DROP TABLE IF EXISTS `questgiver_greeting`;
CREATE TABLE `questgiver_greeting` (
   `Entry` INT(11) UNSIGNED NOT NULL COMMENT 'Entry of Questgiver',
   `Type` INT(11) UNSIGNED NOT NULL COMMENT 'Type of entry',
   `Text` LONGTEXT COMMENT 'Text of the greeting',
   `EmoteId` INT(11) UNSIGNED NOT NULL COMMENT 'Emote ID of greeting',
   `EmoteDelay` INT(11) UNSIGNED NOT NULL COMMENT 'Emote delay of the greeting',
   PRIMARY KEY(`Entry`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Quest and Gossip system';

DROP TABLE IF EXISTS `locales_questgiver_greeting`;
CREATE TABLE `locales_questgiver_greeting` (
   `Entry` INT(11) UNSIGNED NOT NULL COMMENT 'Entry of Questgiver',
   `Type` INT(11) UNSIGNED NOT NULL COMMENT 'Type of entry',
   `Text_loc1` LONGTEXT COMMENT 'Text of the greeting locale 1',
   `Text_loc2` LONGTEXT COMMENT 'Text of the greeting locale 2',
   `Text_loc3` LONGTEXT COMMENT 'Text of the greeting locale 3',
   `Text_loc4` LONGTEXT COMMENT 'Text of the greeting locale 4',
   `Text_loc5` LONGTEXT COMMENT 'Text of the greeting locale 5',
   `Text_loc6` LONGTEXT COMMENT 'Text of the greeting locale 6',
   `Text_loc7` LONGTEXT COMMENT 'Text of the greeting locale 7',
   `Text_loc8` LONGTEXT COMMENT 'Text of the greeting locale 8',
   PRIMARY KEY(`Entry`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Quest and Gossip system';

ALTER TABLE db_version CHANGE COLUMN required_13965_01_mangos_questgiver_greeting required_13966_01_mangos_creature_movement_drops bit;

# ALTER TABLE creature_movement DROP COLUMN textId1;
# ALTER TABLE creature_movement DROP COLUMN textId2;
# ALTER TABLE creature_movement DROP COLUMN textId3;
# ALTER TABLE creature_movement DROP COLUMN textId4;
# ALTER TABLE creature_movement DROP COLUMN textId5;
# ALTER TABLE creature_movement DROP COLUMN emote;
# ALTER TABLE creature_movement DROP COLUMN spell;
# ALTER TABLE creature_movement DROP COLUMN model1;
# ALTER TABLE creature_movement DROP COLUMN model2;

# ALTER TABLE creature_movement_template DROP COLUMN textId1;
# ALTER TABLE creature_movement_template DROP COLUMN textId2;
# ALTER TABLE creature_movement_template DROP COLUMN textId3;
# ALTER TABLE creature_movement_template DROP COLUMN textId4;
# ALTER TABLE creature_movement_template DROP COLUMN textId5;
# ALTER TABLE creature_movement_template DROP COLUMN emote;
# ALTER TABLE creature_movement_template DROP COLUMN spell;
# ALTER TABLE creature_movement_template DROP COLUMN model1;
# ALTER TABLE creature_movement_template DROP COLUMN model2;

ALTER TABLE db_version CHANGE COLUMN required_13966_01_mangos_creature_movement_drops required_13967_01_mangos_creature_template_leashing bit;

ALTER TABLE creature_template ADD COLUMN `Detection` INT(10) UNSIGNED NOT NULL DEFAULT '20' COMMENT 'Detection range for proximity' AFTER `SpeedRun`;
ALTER TABLE creature_template ADD COLUMN `CallForHelp` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Range in which creature calls for help?' AFTER `Detection`;
ALTER TABLE creature_template ADD COLUMN `Pursuit` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'When exceeded during pursuit creature evades?' AFTER `CallForHelp`;
ALTER TABLE creature_template ADD COLUMN `Leash` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Leash range from combat start position' AFTER `Pursuit`;
ALTER TABLE creature_template ADD COLUMN `Timeout` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Time for refreshing leashing before evade?' AFTER `Leash`;

ALTER TABLE db_version CHANGE COLUMN required_13967_01_mangos_creature_template_leashing required_13968_01_mangos_model_speeds bit;

ALTER TABLE creature_model_info ADD COLUMN `SpeedWalk` FLOAT NOT NULL DEFAULT '1' COMMENT 'Default walking speed for any creature with model' AFTER `combat_reach`;
ALTER TABLE creature_model_info ADD COLUMN `SpeedRun` FLOAT NOT NULL DEFAULT '1.14286' COMMENT 'Default running speed for any creature with model' AFTER `SpeedWalk`;

ALTER TABLE creature_template MODIFY COLUMN `SpeedWalk` FLOAT NOT NULL DEFAULT '0';
ALTER TABLE creature_template MODIFY COLUMN `SpeedRun` FLOAT NOT NULL DEFAULT '0';

ALTER TABLE db_version CHANGE COLUMN required_13968_01_mangos_model_speeds required_13969_01_mangos_spam_records bit;

CREATE TABLE IF NOT EXISTS `spam_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='REGEX Spam records';

ALTER TABLE db_version CHANGE COLUMN required_13969_01_mangos_spam_records required_13971_01_mangos_spam_records_length bit;

ALTER TABLE spam_records MODIFY record VARCHAR(512) NOT NULL;
