ALTER TABLE db_version CHANGE COLUMN required_12952_01_mangos_instance_template required_13953_01_mangos_dbscript_string_template bit;

-- New table to make it easier to add random text
DROP TABLE IF EXISTS `dbscript_string_template`;
CREATE TABLE `dbscript_string_template` (
  `id` int(11) unsigned NOT NULL COMMENT 'Id of template' AUTO_INCREMENT,
  `string_id` int(11) NOT NULL DEFAULT '0' COMMENT 'db_script_string id',
  PRIMARY KEY (`id`,`string_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='DBScript system';

-- Adding new datalong3 field to have more parameters that are needed in some cases
ALTER TABLE dbscripts_on_creature_death ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_creature_movement ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_event ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_go_template_use ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_go_use ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_gossip ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_quest_end ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_quest_start ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_spell ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;

-- Be sure no data is currently on datalong field for command = 0 (say)
UPDATE dbscripts_on_creature_death SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_creature_movement SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_event SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_go_template_use SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_go_use SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_gossip SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_quest_end SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_quest_start SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_spell SET datalong=0 WHERE command=0;

ALTER TABLE db_version CHANGE COLUMN required_13953_01_mangos_dbscript_string_template required_13953_02_mangos_creature_movement_template bit;

# ALTER TABLE creature_movement_template ADD pathId int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Path ID for entry' AFTER entry, DROP PRIMARY KEY, ADD PRIMARY KEY (entry, pathId, point);

ALTER TABLE db_version CHANGE COLUMN required_13953_02_mangos_creature_movement_template required_13954_01_mangos_creatures bit;

# ALTER TABLE creature CHANGE spawntimesecs spawntimesecsmin INT(10) UNSIGNED DEFAULT 120 NOT NULL COMMENT 'Creature respawn time minimum';
# ALTER TABLE creature ADD spawntimesecsmax INT(10) UNSIGNED DEFAULT 120 NOT NULL COMMENT 'Creature respawn time maximum' AFTER spawntimesecsmin;

ALTER TABLE db_version CHANGE COLUMN required_13954_01_mangos_creatures required_13954_02_mangos_gameobjects bit;

# ALTER TABLE gameobject CHANGE spawntimesecs spawntimesecsmin INT(11) DEFAULT 0 NOT NULL COMMENT 'Gameobject respawn time minimum';
# ALTER TABLE gameobject ADD spawntimesecsmax INT(11) DEFAULT 0 NOT NULL COMMENT 'Gameobject respawn time maximum' AFTER spawntimesecsmin;

ALTER TABLE db_version CHANGE COLUMN required_13954_02_mangos_gameobjects required_13955_01_mangos_spell_chain_totems bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (8185,10534,10535,25562,58738,58740,8182,10476,10477,25559,58742,58744,10596,10598,10599,25573,58748,58750,8072,8156,8157,10403,10404,10405,25506,25507,58752,58754,8076,8162,8163,10441,25362,25527,57621,58646);
INSERT INTO `spell_chain` VALUES
/* Fire Resistance Totem Auras */
(8185,0,8185,1,0),
(10534,8182,8185,2,0),
(10535,10534,8185,3,0),
(25562,10535,8185,4,0),
(58738,25562,8185,5,0),
(58740,58738,8185,6,0),
/* Frost Resistance Totem Auras */
(8182,0,8182,1,0),
(10476,8182,8182,2,0),
(10477,10476,8182,3,0),
(25559,10477,8182,4,0),
(58742,25559,8182,5,0),
(58744,58742,8182,6,0),
/* Nature Resistance Totem Auras */
(10596,0,10596,1,0),
(10598,10596,10596,2,0),
(10599,10598,10596,3,0),
(25573,10599,10596,4,0),
(58748,25573,10596,5,0),
(58750,10599,10596,6,0),
/* Stoneskin Totem Auras */
(8072,0,8072,1,0),
(8156,8072,8072,2,0),
(8157,8156,8072,3,0),
(10403,8157,8072,4,0),
(10404,10403,8072,5,0),
(10405,10404,8072,6,0),
(25506,10405,8072,7,0),
(25507,25506,8072,8,0),
(58752,25507,8072,9,0),
(58754,58752,8072,10,0),
/* Strength of Earth Totem Auras */
(8076,0,8076,1,0),
(8162,8076,8076,2,0),
(8163,8162,8076,3,0),
(10441,8163,8076,4,0),
(25362,10441,8076,5,0),
(25527,25362,8076,6,0),
(57621,25527,8076,7,0),
(58646,57621,8076,8,0);

ALTER TABLE db_version CHANGE COLUMN required_13955_01_mangos_spell_chain_totems required_13956_01_mangos_spell_chain_totems_typos bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (10534, 58750);
INSERT INTO `spell_chain` VALUES
(10534,8185,8185,2,0),
(58750,58748,10596,6,0);

ALTER TABLE db_version CHANGE COLUMN required_13956_01_mangos_spell_chain_totems_typos required_13957_01_mangos_gossip_menu_option bit;

DELETE FROM gossip_menu_option WHERE menu_id=0 AND id=16;
INSERT INTO `gossip_menu_option` VALUES('0','16','0','GOSSIP_OPTION_BOT','99','1','0','0','0','0','0',NULL,'0');

ALTER TABLE db_version CHANGE COLUMN required_13957_01_mangos_gossip_menu_option required_13958_01_mangos_dbscripts_on_relay bit;

DROP TABLE IF EXISTS `dbscripts_on_relay`;
CREATE TABLE `dbscripts_on_relay` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `datalong3` int(11) unsigned NOT NULL DEFAULT '0',
  `buddy_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `search_radius` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE db_version CHANGE COLUMN required_13958_01_mangos_dbscripts_on_relay required_13959_01_mangos_dbscript_random_template bit;

DROP TABLE IF EXISTS `dbscript_random_templates`;
CREATE TABLE `dbscript_random_templates` (
  `id` int(11) unsigned NOT NULL COMMENT 'Id of template',
  `type` int(11) unsigned NOT NULL COMMENT 'Type of template',
  `target_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Id of chanced element',
  `chance` int(11) NOT NULL DEFAULT '0' COMMENT 'Chance for element to occur in %',
  PRIMARY KEY (`id`,`type`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='DBScript system';

-- type 0 - strings
-- type 1 - relay dbscript

INSERT INTO dbscript_random_templates(id,type,target_id,chance) SELECT id,'0',string_id,'0' FROM dbscript_string_template;

# DROP TABLE IF EXISTS dbscript_string_template;

ALTER TABLE db_version CHANGE COLUMN required_13959_01_mangos_dbscript_random_template required_13960_01_mangos_dbscript_string_rename bit;

DROP TABLE IF EXISTS `dbscript_string`;
RENAME TABLE `db_script_string` TO `dbscript_string`;

ALTER TABLE conditions
ADD comments varchar(300) AFTER value2;

# ALTER TABLE db_version CHANGE COLUMN required_12952_01_mangos_instance_template required_13960_01_mangos_dbscript_string_rename bit;
