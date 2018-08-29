ALTER TABLE db_version CHANGE COLUMN required_c12947_01_mangos_spell_template required_c13027_01_mangos_command bit;

DELETE FROM command WHERE name='wp add' OR name='wp modify' OR name='wp show';
INSERT INTO command VALUES
('wp add',2,'Syntax: .wp add [Selected Creature or dbGuid] [pathId [wpOrigin] ]'),
('wp modify',2,'Syntax: .wp modify command [dbGuid, id] [value]\r\nwhere command must be one of: waittime  | scriptid | orientation | del | move\r\nIf no waypoint was selected, one can be chosen with dbGuid and id.\r\nThe commands have the following meaning:\r\n waittime (Set the time the npc will wait at a point (in ms))\r\n scriptid (Set the DB-Script that will be executed when the wp is reached)\r\n orientation (Set the orientation of this point) \r\n del (Remove the waypoint from the path)\r\n move (Move the wayoint to the current position of the player)'),
('wp show',2,'Syntax: .wp show command [dbGuid] [pathId [wpOrigin] ]\r\nwhere command can have one of the following values\r\non (to show all related wp)\r\nfirst (to see only first one)\r\nlast (to see only last one)\r\noff (to hide all related wp)\r\ninfo (to get more info about theses wp)\r\n\r\nFor using info you have to do first show on and than select a Visual-Waypoint and do the show info!\r\nwith pathId and wpOrigin you can specify which path to show (optional)');

ALTER TABLE db_version CHANGE COLUMN required_c13027_01_mangos_command required_c13027_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry BETWEEN 220 AND 252;
INSERT INTO mangos_string VALUES
(220,'Cannot find waypoint id %u for %s (in path %i, loaded from %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(221,'Last Waypoint not found for %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(222,'%s has no path or path empty, path-id %i (loaded from %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(223,'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(224,'Cannot access %s on map, maybe you are too far away from its spawn location',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(228,'Could not create visual waypoint with creatureID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(230,'Could not add waypoint %u to %s (pathId %i stored by %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(234,'Added Waypoint %u to %s (PathId %i, path stored by %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(235,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(239,'No waypoints found inside the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(243,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(244,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(245,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(246,'Waypoint %u for %s (from pathId %i, stored by %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(247,' Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(248,' Orientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(249,' ScriptId: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(250,'ScriptID set to non-existing id %u, add it to DBScriptsEngine and reload the table.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(251,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(252,'AIScriptName: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_c13027_02_mangos_mangos_string required_c13032_01_mangos_command bit;

DELETE FROM command WHERE name='npc addmove';

ALTER TABLE db_version CHANGE COLUMN required_c13032_01_mangos_command required_c13034_01_mangos_command bit;

DELETE FROM command WHERE name='wp import';

ALTER TABLE db_version CHANGE COLUMN required_c13034_01_mangos_command required_c13034_02_mangos_creature_movement bit;

# ALTER TABLE creature_movement DROP COLUMN wpguid;

ALTER TABLE db_version CHANGE COLUMN required_c13034_02_mangos_creature_movement required_c13034_03_mangos_creature_movement_template bit;

# ALTER TABLE creature_movement_template DROP COLUMN wpguid;

ALTER TABLE db_version CHANGE COLUMN required_c13034_03_mangos_creature_movement_template required_c13034_04_mangos_creature bit;

-- Remove waypoints spawned with the old system
DELETE FROM creature WHERE id=1;

ALTER TABLE db_version CHANGE COLUMN required_c13034_04_mangos_creature required_c13058_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (68572,68574,68575);
INSERT INTO spell_template VALUES
(68572, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Grand Champions'),
(68574, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Confessor Paletress'),
(68575, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Eadric the Pure');


# SD2_3114
UPDATE instance_template SET ScriptName='instance_baradin_hold' WHERE map=757;
UPDATE instance_template SET ScriptName='instance_trial_of_the_champion' WHERE map=650;
UPDATE creature_template SET ScriptName='npc_toc_herald' WHERE entry IN (35004, 35005);
DELETE FROM scripted_areatrigger WHERE entry=3587;
INSERT INTO scripted_areatrigger VALUES
(3587,'at_ancient_leaf');
UPDATE gameobject_template SET ScriptName='go_fathom_stone' WHERE entry=177964;
UPDATE creature_template SET ScriptName='boss_champion_warrior' WHERE entry IN (34705,35572);
UPDATE creature_template SET ScriptName='boss_champion_mage' WHERE entry IN (34702,35569);
UPDATE creature_template SET ScriptName='boss_champion_shaman' WHERE entry IN (34701,35571);
UPDATE creature_template SET ScriptName='boss_champion_hunter' WHERE entry IN (34657,35570);
UPDATE creature_template SET ScriptName='boss_champion_rogue' WHERE entry IN (34703,35617);
UPDATE creature_template SET ScriptName='npc_champion_mount' WHERE entry IN (35644,36559,35637,35633,35768,34658,35636,35638,35635,35640,35641,35634);
UPDATE creature_template SET ScriptName='npc_trial_grand_champion' WHERE entry IN (35328,35331,35330,35332,35329,35314,35326,35325,35323,35327);
UPDATE instance_template SET ScriptName='instance_razorfen_downs' WHERE map=129;
DELETE FROM scripted_event_id WHERE id=3130;
INSERT INTO scripted_event_id VALUES (3130, 'event_go_tutenkash_gong');
UPDATE creature_template SET ScriptName='boss_eadric' WHERE entry=35119;
UPDATE creature_template SET ScriptName='boss_paletress' WHERE entry=34928;
UPDATE creature_template SET ScriptName='boss_black_knight' WHERE entry=35451;
UPDATE creature_template SET ScriptName='npc_black_knight_gryphon' WHERE entry=35491;
UPDATE creature_template SET ScriptName='npc_black_knight_ghoul' WHERE entry IN (35545,35564,35590);
