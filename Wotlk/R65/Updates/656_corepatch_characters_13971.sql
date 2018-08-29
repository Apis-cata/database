ALTER TABLE character_db_version CHANGE COLUMN required_13957_03_characters_playerbot_quest_data required_13961_01_characters_spell_cooldown bit;

ALTER TABLE character_spell_cooldown CHANGE COLUMN guid LowGuid int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part';
ALTER TABLE character_spell_cooldown CHANGE COLUMN spell SpellId int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier';
ALTER TABLE character_spell_cooldown CHANGE COLUMN time SpellExpireTime bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell cooldown expire time';
ALTER TABLE character_spell_cooldown CHANGE COLUMN item ItemId int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier' AFTER SpellExpireTime;
ALTER TABLE character_spell_cooldown ADD Category int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category' AFTER SpellExpireTime;
ALTER TABLE character_spell_cooldown ADD CategoryExpireTime bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category cooldown expire time' AFTER Category;

ALTER TABLE character_db_version CHANGE COLUMN required_13961_01_characters_spell_cooldown required_13962_01_characters_event_group_chosen bit;

DROP TABLE IF EXISTS `event_group_chosen`;
CREATE TABLE `event_group_chosen` (
`eventGroup` mediumint(8) unsigned NOT NULL DEFAULT '0',
`entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`eventGroup`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest Group picked';

ALTER TABLE character_db_version CHANGE COLUMN required_13962_01_characters_event_group_chosen required_13963_01_characters_account_instances_entered bit;

DROP TABLE IF EXISTS `account_instances_entered`;
CREATE TABLE `account_instances_entered` (
   `AccountId` INT(11) UNSIGNED NOT NULL COMMENT 'Player account',
   `ExpireTime` BIGINT(40) NOT NULL COMMENT 'Time when instance was entered',
   `InstanceId` INT(11) UNSIGNED NOT NULL COMMENT 'ID of instance entered',
   PRIMARY KEY(`AccountId`,`InstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Instance reset limit system';
