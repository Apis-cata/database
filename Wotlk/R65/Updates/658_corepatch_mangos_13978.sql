ALTER TABLE db_version CHANGE COLUMN required_13972_01_mangos_string required_13973_01_mangos_taxi_system_update bit;

DELETE FROM `command` WHERE `name` = 'debug taxi';
INSERT INTO `command` VALUES
('debug taxi',3,'Syntax: .debug taxi\r\n\r\nToggle debug mode for taxi flights. In debug mode GM receive additional on-screen information during taxi flights.');

DELETE FROM `mangos_string` WHERE `entry` IN (1196, 1197, 1198, 1199);
INSERT INTO `mangos_string` VALUES
(1196,'Debug output for taxi flights is now %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1197,'[Taxi]: Progress at node: [%u][%u], next: [%u][%u].',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1198,'[Taxi]: Progress at final node: [%u][%u].',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1199,'[Taxi]: Changing route to [%u].',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DROP TABLE IF EXISTS `taxi_shortcuts`;
CREATE TABLE `taxi_shortcuts` (
  `pathid` int unsigned NOT NULL COMMENT 'Flight path entry id',
  `takeoff` int unsigned NOT NULL COMMENT 'Amount of waypoints to skip in the beginning of the flight',
  `landing` int unsigned NOT NULL COMMENT 'Amount of waypoints to skip at the end of the flight',
  `comments` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pathid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Taxi System';

ALTER TABLE db_version CHANGE COLUMN required_13973_01_mangos_taxi_system_update required_13974_01_mangos_game_event_primary_key bit;

ALTER TABLE game_event_gameobject DROP PRIMARY KEY, ADD PRIMARY KEY (guid, event);
ALTER TABLE game_event_creature DROP PRIMARY KEY, ADD PRIMARY KEY (guid, event);

ALTER TABLE db_version CHANGE COLUMN required_13974_01_mangos_game_event_primary_key required_13975_01_mangos_creature_waypoint_refurbishing bit;

ALTER TABLE creature_movement ADD COLUMN comment text;
ALTER TABLE creature_movement_template ADD COLUMN comment text;
ALTER TABLE creature_movement MODIFY COLUMN orientation float NOT NULL DEFAULT '0' AFTER position_z;
ALTER TABLE creature_movement_template MODIFY COLUMN orientation float NOT NULL DEFAULT '0' AFTER position_z;
ALTER TABLE script_waypoint CHANGE COLUMN point_comment comment text;
ALTER TABLE script_waypoint CHANGE COLUMN location_x position_x text;
ALTER TABLE script_waypoint CHANGE COLUMN location_y position_y text;
ALTER TABLE script_waypoint CHANGE COLUMN location_z position_z text;
ALTER TABLE script_waypoint ADD COLUMN orientation float NOT NULL DEFAULT '0' AFTER position_z;
ALTER TABLE script_waypoint ADD COLUMN pathId INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER entry;
ALTER TABLE script_waypoint ADD COLUMN script_id MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER waittime;
ALTER TABLE script_waypoint DROP PRIMARY KEY;
ALTER TABLE script_waypoint ADD PRIMARY KEY (entry, pathId, pointId);

ALTER TABLE db_version CHANGE COLUMN required_13975_01_mangos_creature_waypoint_refurbishing required_13976_01_mangos_quest_template_rewmaxrep bit;

ALTER TABLE quest_template
ADD COLUMN RewMaxRepValue1 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewRepValue5,
ADD COLUMN RewMaxRepValue2 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue1,
ADD COLUMN RewMaxRepValue3 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue2,
ADD COLUMN RewMaxRepValue4 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue3,
ADD COLUMN RewMaxRepValue5 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue4;

ALTER TABLE db_version CHANGE COLUMN required_13976_01_mangos_quest_template_rewmaxrep required_13978_01_mangos_trainer_greeting bit;

DROP TABLE IF EXISTS `trainer_greeting`;
CREATE TABLE `trainer_greeting` (
   `Entry` INT(11) UNSIGNED NOT NULL COMMENT 'Entry of Trainer',
   `Text` LONGTEXT COMMENT 'Text of the greeting',
   PRIMARY KEY(`Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Trainer system';

DROP TABLE IF EXISTS `locales_trainer_greeting`;
CREATE TABLE `locales_trainer_greeting` (
   `Entry` INT(11) UNSIGNED NOT NULL COMMENT 'Entry of Trainer',
   `Text_loc1` LONGTEXT COMMENT 'Text of the greeting locale 1',
   `Text_loc2` LONGTEXT COMMENT 'Text of the greeting locale 2',
   `Text_loc3` LONGTEXT COMMENT 'Text of the greeting locale 3',
   `Text_loc4` LONGTEXT COMMENT 'Text of the greeting locale 4',
   `Text_loc5` LONGTEXT COMMENT 'Text of the greeting locale 5',
   `Text_loc6` LONGTEXT COMMENT 'Text of the greeting locale 6',
   `Text_loc7` LONGTEXT COMMENT 'Text of the greeting locale 7',
   `Text_loc8` LONGTEXT COMMENT 'Text of the greeting locale 8',
   PRIMARY KEY(`Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Trainer system';
