# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 727_FIX_12924 728_FIX_12991 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('728_FIX_12991');

# Transport_Sniff
# DELETE FROM transports WHERE entry=204423;
# INSERT INTO `transports` VALUES ('204423', 'Orc Gunship', '8016');

# Fix
DELETE FROM npc_spellclick_spells WHERE npc_entry=39911;

# Ulduar
-- Script id: Twilight Unstable proc script effect spell(106374). 106374 else should cast 106375(dummy effect) Fixed in db_script_on_spell(no need core handled)
DELETE FROM dbscripts_on_spell WHERE id IN (109176, 106374);
INSERT INTO dbscripts_on_spell VALUES 
(109176,0,15,106374,0,0,0,8,0,0,0,0,0,0,0,0,'Cast Twilight Unstable(Has Aura Twilight Monstrosity)'),
(106374,0,15,106375,0,0,0,8,0,0,0,0,0,0,0,0,'Cast Unstable Twilight Damage.');

DELETE FROM `spell_target_position` WHERE `id`=89755;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES 
(89755, 1, 4329.33, -745.155, 284.449, 1.998802);
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.5 WHERE `modelid`=29639; -- 29639
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.5 WHERE `modelid`=29640; -- 29640
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `modelid`=29643; -- 29643
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=29644; -- 29644
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `modelid`=29645; -- 29645
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `modelid`=29646; -- 29646
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=29648; -- 29648
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=29650; -- 29650
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=29651; -- 29651
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=29652; -- 29652
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=29654; -- 29654
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=29655; -- 29655
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `modelid`=29659; -- 29659
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `modelid`=29660; -- 29660
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=29570; -- 29570
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=29571; -- 29571
UPDATE `creature_model_info` SET `bounding_radius`=0.208, `combat_reach`=1.5 WHERE `modelid`=29572; -- 29572
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `modelid`=29574; -- 29574
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `modelid`=29575; -- 29575
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.5 WHERE `modelid`=29576; -- 29576
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.5 WHERE `modelid`=29577; -- 29577
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `modelid`=29578; -- 29578
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `modelid`=29579; -- 29579
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=29580; -- 29580
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=29581; -- 29581
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `modelid`=29582; -- 29582
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `modelid`=29583; -- 29583
UPDATE `creature_model_info` SET `bounding_radius`=0.4596, `combat_reach`=1.8 WHERE `modelid`=29894; -- 29894
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `modelid`=29634; -- 29634
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `modelid`=29635; -- 29635
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=29636; -- 29636
UPDATE `creature_model_info` SET `bounding_radius`=0.208, `combat_reach`=1.5 WHERE `modelid`=29638; -- 29638
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=11307;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=10940 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=10938 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=37915 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=9260 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=4389 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=4371 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=4357 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=4364 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=43200 WHERE `item`=14639 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=4382 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=4361 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=4404 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=6365 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=43200 WHERE `item`=6533 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=39489 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=22729 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=18647 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=9000 WHERE `item`=6270 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=6274 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=5772 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=10317 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=10314 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=12162 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=10800 WHERE `item`=16767 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=1800 WHERE `item`=18650 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=43200 WHERE `item`=18648 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=12836 AND `incrtime`=0;
UPDATE `npc_vendor` SET `incrtime`=7200 WHERE `item`=12037;
DELETE FROM `spell_target_position` WHERE `id`=79720;
INSERT IGNORE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(79720,645,227.6,949.8,192.6,0);
DELETE FROM `spell_target_position` WHERE `id`=80273;
INSERT IGNORE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(80273,645,408.021,905.638,163.9,0);
UPDATE `creature_template` SET `npcflags` = `npcflags`|1048576 WHERE `entry` IN (34989, 34988, 30567, 30590, 50668, 34955);
INSERT IGNORE INTO `battlemaster_entry` (`entry`,`bg_template`) VALUES
(34983,32),(34985,32),(34987,32),(34973,32),(40413,32);
DELETE FROM `gameobject_template` WHERE `entry`=210156;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `data0`, `data1`, `data2`, `data3`, `size`) VALUES
(210156, 5, 11090, 'Dragon Soul - Deathwing - Sunbeam Object', 0, 0, 0, 1, 2.559999);
INSERT IGNORE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(74969, 644, -640.437, 335.306, 77.7573, 1.52073);
INSERT IGNORE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(79193, 725, 1260, 960, 205.443756, 0),
(79199, 725, 1280, 1050, 210.383057, 0),
(86860, 725, 1350.75, 919.133, 194.769, 0),
(86858, 725, 1341.19, 913.399, 197.092, 0),
(86856, 725, 1361.89, 920.219, 196.308, 0);
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestInChain` = 0 WHERE `entry` = 7042;

# NeatElves
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2574402','25744','9','0','100','2','0','5','0','0','11','45944','0','2','41','0','0','0','0','0','0','0','Dark Fiend - Cast Dark Fiend and Despawn on Range Check'),
('2574403','25744','8','0','100','2','988','-1','0','0','41','0','0','0','0','0','0','0','0','0','0','0','Dark Fiend - Despawn on Dispel Magic (Rank 2) Hit'),
('2574404','25744','8','0','100','2','8012','-1','0','0','41','0','0','0','0','0','0','0','0','0','0','0','Dark Fiend - Despawn on Purge (Rank 2) Hit'),
('2574405','25744','8','0','100','2','32592','-1','0','0','41','0','0','0','0','0','0','0','0','0','0','0','Dark Fiend - Despawn on Mass Dispel Hit'),
('2577204','25772','6','0','100','2','0','0','0','0','11','46071','0','2','11','46071','0','2','11','46071','0','2','Void Sentinal - Cast Summon Void Spawn (three times) on Death'),
('2577205','25772','6','0','100','2','0','0','0','0','11','46071','0','2','11','46071','0','2','11','46071','0','2','Void Sentinal - Cast Summon Void Spawn (three times) on Death'),
('2577206','25772','6','0','100','2','0','0','0','0','11','46071','0','2','11','46071','0','2','0','0','0','0','Void Sentinal - Cast Summon Void Spawn (two times) on Death'),
('2577207','25772','1','0','100','2','3000','3000','0','0','38','0','0','0','0','0','0','0','0','0','0','0','Void Sentinal - Send Combat Pulse on OOC Timer');
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (25855,25879);
UPDATE creature_template SET AIName = '' WHERE Entry IN (25855,25879);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(8844, 175528, 229, 1, 1, 100.257, -313.14, 66.5453, 3.14159, 0, 0, -1, 0, 180, 100, 1),
(48897, 175529, 229, 1, 1, 100.257, -324.88, 66.5453, 3.14159, 0, 0, -1, 0, 180, 100, 1),
(49506, 175530, 229, 1, 1, 110.215, -324.88, 68.0355, 3.14159, 0, 0, -1, 0, 180, 100, 1),
(8847, 175531, 229, 1, 1, 110.215, -313.14, 68.0355, 3.14159, 0, 0, -1, 0, 180, 100, 1),
(48655, 175532, 229, 1, 1, 120.462, -324.88, 73.5331, 3.14159, 0, 0, -1, 0, 180, 100, 1),
(8848, 175533, 229, 1, 1, 120.462, -313.14, 73.5331, 3.14159, 0, 0, -1, 0, 180, 100, 1);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) VALUES
(18788, 0.347, 1.5, 0, 18789, 0),
(18789, 0.347, 1.5, 0, 18788, 0),
(18790, 0.347, 1.5, 1, 18791, 0),
(18791, 0.347, 1.5, 1, 18790, 0),
(20447, 0.372, 1.5, 0, 20448, 0),
(20448, 0.372, 1.5, 0, 20447, 0),
(20449, 0.236, 1.5, 1, 20450, 0),
(20450, 0.236, 1.5, 1, 20449, 0);
UPDATE `creature_template_addon` SET `emote` = 0 WHERE `entry` =16794;
DELETE FROM `gameobject` WHERE `id` = 144064;
UPDATE `gameobject_template` SET `data1` = 177681 WHERE `entry` =177681;
UPDATE `gameobject_loot_template` SET `entry` = 177681, `ChanceOrQuestChance` = 100 WHERE `entry` =144064 AND `item` =15793;
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(24940, '15308', '1', '0', '0', '-7553.290', '1742.480', '6.1512760', '4.599858', '900', '0', '0', '7369', '11502', '0', '2'),
(24245, '11880', '1', '0', '0', '-7552.316', '1742.771', '5.2748550', '4.963511', '900', '0', '0', '3876', '0', '0', '0'),
(24224, '11880', '1', '0', '0', '-7554.705', '1743.671', '6.3699770', '5.584010', '900', '0', '0', '3876', '0', '0', '0'),
(24950, '15308', '1', '0', '0', '-6687.624', '1900.597', '5.6286980', '4.044773', '900', '0', '0', '7369', '11502', '0', '2'),
(24215, '11880', '1', '0', '0', '-6682.611', '1909.316', '5.6586590', '4.204932', '900', '0', '0', '3876', '0', '0', '0'),
(24216, '11880', '1', '0', '0', '-6686.842', '1904.885', '5.7016370', '4.769130', '900', '0', '0', '3876', '0', '0', '0');
DELETE FROM `creature_linking` WHERE `master_guid`=24940 OR `master_guid`=24950;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(24245, 24940, '1667'),
(24224, 24940, '1667'),
(24215, 24950, '1667'),
(24216, 24950, '1667');
DELETE FROM `creature_movement` WHERE `id`=24940 OR `id`=24950;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(24940, '01', '-7549.506', '1733.866', '11.66747000'),
(24940, '02', '-7556.260', '1716.109', '9.257944000'),
(24940, '03', '-7569.133', '1700.234', '5.269537000'),
(24940, '04', '-7573.761', '1690.550', '5.404121000'),
(24940, '05', '-7587.855', '1663.390', '4.587910000'),
(24940, '06', '-7604.522', '1641.430', '2.116444000'),
(24940, '07', '-7617.344', '1597.312', '4.822663000'),
(24940, '08', '-7642.944', '1584.591', '5.543516000'),
(24940, '09', '-7642.944', '1584.591', '5.543516000'),
(24940, '10', '-7681.442', '1586.520', '1.450595000'),
(24940, '11', '-7706.442', '1616.308', '5.158014000'),
(24940, '12', '-7718.948', '1641.686', '8.053387000'),
(24940, '13', '-7746.639', '1658.378', '6.224752000'),
(24940, '14', '-7759.465', '1688.800', '1.567026000'),
(24940, '15', '-7779.922', '1727.281', '2.394668000'),
(24940, '16', '-7794.407', '1772.405', '-0.18212370'),
(24940, '17', '-7828.772', '1804.546', '2.456145000'),
(24940, '18', '-7863.179', '1824.983', '3.859173000'),
(24940, '19', '-7895.750', '1843.025', '3.256153000'),
(24940, '20', '-7863.179', '1824.983', '3.859173000'),
(24940, '21', '-7828.803', '1804.553', '2.520354000'),
(24940, '22', '-7794.407', '1772.405', '-0.18212370'),
(24940, '23', '-7779.922', '1727.281', '2.394668000'),
(24940, '24', '-7759.503', '1688.933', '1.676279000'),
(24940, '25', '-7746.639', '1658.378', '6.224752000'),
(24940, '26', '-7718.948', '1641.686', '8.053387000'),
(24940, '27', '-7706.588', '1616.558', '5.178156000'),
(24940, '28', '-7681.442', '1586.520', '1.450595000'),
(24940, '29', '-7642.944', '1584.591', '5.543516000'),
(24940, '30', '-7617.344', '1597.312', '4.822663000'),
(24940, '31', '-7604.522', '1641.430', '2.116444000'),
(24940, '32', '-7587.855', '1663.390', '4.587910000'),
(24940, '33', '-7573.761', '1690.550', '5.404121000'),
(24940, '34', '-7569.133', '1700.234', '5.269537000'),
(24940, '35', '-7556.260', '1716.109', '9.257944000'),
(24950, '01', '-6694.974', '1890.572', '4.605234000'),
(24950, '02', '-6703.896', '1879.943', '4.311291000'),
(24950, '03', '-6710.206', '1866.942', '4.591320000'),
(24950, '04', '-6715.390', '1847.383', '4.577971000'),
(24950, '05', '-6709.928', '1829.363', '3.990810000'),
(24950, '06', '-6711.274', '1817.060', '2.515834000'),
(24950, '07', '-6713.292', '1797.056', '0.853330900'),
(24950, '08', '-6720.238', '1777.514', '-0.63788010'),
(24950, '09', '-6726.713', '1758.895', '0.130042800'),
(24950, '10', '-6740.136', '1737.337', '3.450864000'),
(24950, '11', '-6749.054', '1723.089', '4.723583000'),
(24950, '12', '-6749.054', '1723.089', '4.723583000'),
(24950, '13', '-6761.756', '1713.470', '4.703197000'),
(24950, '14', '-6775.716', '1708.797', '3.822988000'),
(24950, '15', '-6798.210', '1702.473', '2.903066000'),
(24950, '16', '-6812.127', '1701.960', '3.050001000'),
(24950, '17', '-6836.386', '1693.081', '0.309341100'),
(24950, '18', '-6853.436', '1688.546', '2.830825000'),
(24950, '19', '-6881.792', '1671.021', '4.243816000'),
(24950, '20', '-6886.538', '1652.859', '1.796338000'),
(24950, '21', '-6887.738', '1627.890', '2.914258000'),
(24950, '22', '-6881.043', '1587.257', '-0.60501290'),
(24950, '23', '-6871.532', '1559.419', '-0.60501290'),
(24950, '24', '-6873.630', '1522.218', '-0.01635063'),
(24950, '25', '-6878.187', '1492.260', '6.446479000'),
(24950, '26', '-6887.334', '1445.406', '4.833517000'),
(24950, '27', '-6903.096', '1401.548', '0.748652000'),
(24950, '28', '-6907.097', '1386.415', '1.593500000'),
(24950, '29', '-6919.963', '1352.898', '3.962886000'),
(24950, '30', '-6912.771', '1326.212', '7.286153000'),
(24950, '31', '-6914.654', '1281.559', '-0.22550150'),
(24950, '32', '-6914.241', '1261.167', '3.169362000'),
(24950, '33', '-6918.623', '1226.414', '3.192289000'),
(24950, '34', '-6935.530', '1195.880', '7.025100000'),
(24950, '35', '-6947.021', '1168.266', '10.86482000'),
(24950, '36', '-6935.530', '1195.880', '7.025100000'),
(24950, '37', '-6918.623', '1226.414', '3.192289000'),
(24950, '38', '-6914.241', '1261.167', '3.169362000'),
(24950, '39', '-6914.654', '1281.559', '-0.22550150'),
(24950, '40', '-6912.771', '1326.212', '7.286153000'),
(24950, '41', '-6919.963', '1352.898', '3.962886000'),
(24950, '42', '-6907.097', '1386.415', '1.593500000'),
(24950, '43', '-6903.096', '1401.548', '0.748652000'),
(24950, '44', '-6887.334', '1445.406', '4.833517000'),
(24950, '45', '-6878.187', '1492.260', '6.446479000'),
(24950, '46', '-6873.630', '1522.218', '-0.01635063'),
(24950, '47', '-6871.532', '1559.419', '-0.60501290'),
(24950, '48', '-6881.043', '1587.257', '-0.60501290'),
(24950, '49', '-6887.738', '1627.890', '2.914258000'),
(24950, '50', '-6886.538', '1652.859', '1.796338000'),
(24950, '51', '-6881.792', '1671.021', '4.243816000'),
(24950, '52', '-6853.689', '1688.359', '2.881118000'),
(24950, '53', '-6836.386', '1693.081', '0.309341100'),
(24950, '54', '-6812.127', '1701.960', '3.050001000'),
(24950, '55', '-6798.210', '1702.473', '2.903066000'),
(24950, '56', '-6775.716', '1708.797', '3.822988000'),
(24950, '57', '-6761.756', '1713.470', '4.703197000'),
(24950, '58', '-6749.054', '1723.089', '4.723583000'),
(24950, '59', '-6740.136', '1737.337', '3.450864000'),
(24950, '60', '-6726.713', '1758.895', '0.130042800'),
(24950, '61', '-6720.238', '1777.514', '-0.63788010'),
(24950, '62', '-6713.292', '1797.056', '0.853330900'),
(24950, '63', '-6711.274', '1817.060', '2.515834000'),
(24950, '64', '-6709.928', '1829.363', '3.990810000'),
(24950, '65', '-6715.390', '1847.383', '4.577971000'),
(24950, '66', '-6710.206', '1866.942', '4.591320000'),
(24950, '67', '-6703.896', '1879.943', '4.311291000');
DELETE FROM creature_linking_template WHERE entry IN (25744,25879,25855,25798,25799,25824,25772);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25744, 580, 25840, 4112, 0),
(25879, 580, 25840, 4112, 0),
(25855, 580, 25840, 4112, 0),
(25798, 580, 25741, 4112, 0),
(25799, 580, 25741, 4112, 0),
(25824, 580, 25741, 4112, 0),
(25772, 580, 25741, 4112, 0);
UPDATE creature_template SET MinLevel=70, MaxLevel=70, FactionAlliance=114, FactionHorde=114, MinLevelHealth=3827, MaxLevelHealth=3827, UnitFlags=UnitFlags|33554688, Expansion=1, MinLevelHealth=6602, MaxLevelHealth=6602, MinMeleeDmg=252, MaxMeleeDmg=357, MinRangedDmg=215, MaxRangedDmg=320, Armor=6792, MeleeAttackPower=304, RangedAttackPower=44 WHERE entry=25782;
DELETE FROM npc_spellclick_spells WHERE npc_entry=30066;
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES 
(30066, 62503, 12953, 1, 12953, 1, 0);
DELETE FROM creature_template_spells WHERE entry=30066;
INSERT INTO creature_template_spells (entry,spell1) VALUES 
(30066, 55812);
DELETE FROM spell_script_target WHERE entry=55896;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES 
(55896, 1, 30096, 0); 
DELETE FROM dbscripts_on_spell WHERE id=55896;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(55896,0,8,0,2,'Dry Haystack - Kill Credit'),
(55896,0,18,0,2,'Dry Haystack - Despawn');
DELETE FROM spell_script_target WHERE entry=34186;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(34186, 1, 16938, 0);
DELETE FROM spell_script_target WHERE entry=33924;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(33924, 1, 19640, 0);
DELETE FROM spell_script_target WHERE entry IN (32227);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(32227,1,17469,0),
(32227,1,21748,0),
(32227,1,21750,0),
(32227,1,21747,0),
(32227,1,21726,0),
(32227,1,21752,0);
DELETE FROM spell_script_target WHERE entry IN (32228);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(32228,1,17211,0),
(32228,1,21664,0),
(32228,1,21683,0),
(32228,1,21682,0),
(32228,1,21160,0),
(32228,1,21684,0);
DELETE FROM spell_script_target WHERE entry IN (37142);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37142,1,17469,0),
(37142,1,21748,0),
(37142,1,21750,0),
(37142,1,21747,0),
(37142,1,21726,0),
(37142,1,21752,0);
DELETE FROM spell_script_target WHERE entry IN (37220);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37220,1,17211,0),
(37220,1,21664,0),
(37220,1,21683,0),
(37220,1,21682,0),
(37220,1,21160,0),
(37220,1,21684,0);
DELETE FROM spell_script_target WHERE entry IN (37143);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37143,1,17469,0),
(37143,1,21748,0),
(37143,1,21750,0),
(37143,1,21747,0),
(37143,1,21726,0),
(37143,1,21752,0);
DELETE FROM spell_script_target WHERE entry IN (37339);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37339,1,17211,0),
(37339,1,21664,0),
(37339,1,21683,0),
(37339,1,21682,0),
(37339,1,21160,0),
(37339,1,21684,0);
DELETE FROM spell_script_target WHERE entry IN (37147);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37147,1,17469,0),
(37147,1,21748,0),
(37147,1,21750,0),
(37147,1,21747,0),
(37147,1,21726,0),
(37147,1,21752,0);
DELETE FROM spell_script_target WHERE entry IN (37337);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37337,1,17211,0),
(37337,1,21664,0),
(37337,1,21683,0),
(37337,1,21682,0),
(37337,1,21160,0),
(37337,1,21684,0);
DELETE FROM spell_script_target WHERE entry IN (37149);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37149,1,17469,0),
(37149,1,21748,0),
(37149,1,21750,0),
(37149,1,21747,0),
(37149,1,21726,0),
(37149,1,21752,0);
DELETE FROM spell_script_target WHERE entry IN (37345);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37345,1,17211,0),
(37345,1,21664,0),
(37345,1,21683,0),
(37345,1,21682,0),
(37345,1,21160,0),
(37345,1,21684,0);
DELETE FROM spell_script_target WHERE entry IN (37150);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37150,1,17469,0),
(37150,1,21748,0),
(37150,1,21750,0),
(37150,1,21747,0),
(37150,1,21726,0),
(37150,1,21752,0);
DELETE FROM spell_script_target WHERE entry IN (37348);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37348,1,17211,0),
(37348,1,21664,0),
(37348,1,21683,0),
(37348,1,21682,0),
(37348,1,21160,0),
(37348,1,21684,0);
DELETE FROM spell_script_target WHERE entry=48642;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(48642, 1, 26893, 0);
DELETE FROM spell_script_target WHERE entry=47563;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(47563, 1, 28351, 0);
DELETE FROM spell_script_target WHERE entry=47593;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(47593, 1, 28351, 0);
DELETE FROM spell_script_target WHERE entry=47574;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(47574, 1, 28351, 0);
DELETE FROM spell_script_target WHERE entry=47594;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES 
(47594, 1, 28351, 0);
UPDATE creature SET position_x = -650.434021, position_y = 4136.919922, position_z = 64.620346, orientation = 1.88, MovementType = 2, spawndist = 0 WHERE guid = 59665;
DELETE FROM creature_movement WHERE id = 59665;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17015;
DELETE FROM creature_movement_template WHERE entry = 17015;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(17015,1,-650.434021,4136.919922,64.620346,30000,0,0,0,0,0,0,0,0,0,1.88,0,0),
(17015,2,-649.897,4149.45,64.13,0,0,0,0,0,0,0,0,0,0,1.61692,0,0),
(17015,3,-650.945,4153.25,64.3724,0,0,0,0,0,0,0,0,0,0,1.86039,0,0),
(17015,4,-653.408,4159.69,65.9067,0,0,0,0,0,0,0,0,0,0,1.62163,0,0),
(17015,5,-649.211,4169.54,67.9885,0,0,0,0,0,0,0,0,0,0,1.06714,0,0),
(17015,6,-647.255,4172.52,68.3677,0,0,0,0,0,0,0,0,0,0,1.36559,0,0),
(17015,7,-646.951,4176.908,68.51362,30000,1701501,0,0,0,0,0,0,0,0,1.95,0,0),
(17015,8,-653.285,4163.94,67.01,0,0,0,0,0,0,0,0,0,0,4.41295,0,0),
(17015,9,-651.272,4154.21,64.553,0,0,0,0,0,0,0,0,0,0,5.07268,0,0),
(17015,10,-649.733,4147.03,64.231,0,0,0,0,0,0,0,0,0,0,4.70747,0,0),
(17015,11,-650.434021,4136.919922,64.620346,120000,0,0,0,0,0,0,0,0,0,1.88,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1701501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1701501,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1701501,4,1,1,0,0,0,0,11,6,0,0,0,0,0,0,'random emote'),
(1701501,7,31,17046,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1701501,8,1,1,0,17046,20,7,11,6,0,0,0,0,0,0,'force buddy to: random emote'),
(1701501,12,1,1,0,0,0,0,11,6,0,0,0,0,0,0,'random emote'),
(1701501,15,31,17046,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1701501,16,1,1,0,17046,20,7,11,6,0,0,0,0,0,0,'force buddy to: random emote');
UPDATE creature SET position_x = -8634.505859, position_y = 918.960571, position_z = 99.354980, orientation = 3.832987, MovementType = 2, spawntimesecs = 5400 WHERE guid = 6311;
UPDATE creature_template SET MovementType = 2 WHERE entry = 8666;
DELETE FROM creature_movement WHERE id = 6311;
DELETE FROM creature_movement_template WHERE entry = 8666;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(8666,1,-8641.4,912.342,99.1397,0,0,0,0,0,0,0,0,0,0,3.91152,0,0),(8666,2,-8661.71,894.74,97.6239,0,0,0,0,0,0,0,0,0,0,3.80549,0,0),(8666,3,-8679.15,880.967,97.0168,0,0,0,0,0,0,0,0,0,0,4.15342,0,0),
(8666,4,-8681.12,877.654,97.0168,0,0,0,0,0,0,0,0,0,0,4.75829,0,0),(8666,5,-8679.29,873.082,97.0168,0,0,0,0,0,0,0,0,0,0,5.44708,0,0),(8666,6,-8659.98,849.329,97.0168,0,0,0,0,0,0,0,0,0,0,5.40624,0,0),
(8666,7,-8639.96,825.073,96.6251,0,0,0,0,0,0,0,0,0,0,5.19026,0,0),(8666,8,-8636.74,813.025,96.6486,0,0,0,0,0,0,0,0,0,0,4.75515,0,0),(8666,9,-8634,793.001,96.6508,0,0,0,0,0,0,0,0,0,0,4.48104,0,0),
(8666,10,-8635.94,785.58,96.6515,0,0,0,0,0,0,0,0,0,0,4.15982,0,0),(8666,11,-8651.43,775.162,96.6714,0,0,0,0,0,0,0,0,0,0,3.96116,0,0),(8666,12,-8661.39,764.974,96.6998,0,0,0,0,0,0,0,0,0,0,4.49418,0,0),
(8666,13,-8662.58,758.134,96.6947,0,0,0,0,0,0,0,0,0,0,5.23402,0,0),(8666,14,-8647.73,738.576,96.6965,0,0,0,0,0,0,0,0,0,0,5.65527,0,0),(8666,15,-8630.74,726.606,96.7377,0,0,0,0,0,0,0,0,0,0,5.49741,0,0),
(8666,16,-8618.88,711.997,96.7248,0,0,0,0,0,0,0,0,0,0,5.71339,0,0),(8666,17,-8614.67,709.545,96.7549,0,0,0,0,0,0,0,0,0,0,6.24353,0,0),(8666,18,-8606.13,711.345,96.7382,0,0,0,0,0,0,0,0,0,0,0.438651,0,0),
(8666,19,-8598.07,712.945,96.6746,0,0,0,0,0,0,0,0,0,0,6.21386,0,0),(8666,20,-8588.25,706.887,97.0168,0,0,0,0,0,0,0,0,0,0,5.36092,0,0),(8666,21,-8566.09,678.512,97.0168,0,0,0,0,0,0,0,0,0,0,5.39783,0,0),
(8666,22,-8561.86,674.735,97.0168,0,0,0,0,0,0,0,0,0,0,0.0948142,0,0),(8666,23,-8556.46,676.784,97.0168,0,0,0,0,0,0,0,0,0,0,0.591183,0,0),(8666,24,-8542.79,686.774,97.6239,0,0,0,0,0,0,0,0,0,0,0.416825,0,0),
(8666,25,-8536.45,686.854,97.6775,0,0,0,0,0,0,0,0,0,0,6.02221,0,0),(8666,26,-8531.64,683.194,98.4422,0,0,0,0,0,0,0,0,0,0,5.39861,0,0),(8666,27,-8524.58,673.178,102.5,0,0,0,0,0,0,0,0,0,0,5.31143,0,0),
(8666,28,-8519.8,666.4,102.615,0,0,0,0,0,0,0,0,0,0,5.35855,0,0),(8666,29,-8512.94,656.648,100.901,0,0,0,0,0,0,0,0,0,0,5.05539,0,0),(8666,30,-8513.15,648.714,100.292,0,0,0,0,0,0,0,0,0,0,4.31398,0,0),
(8666,31,-8518.18,642.361,100.092,0,0,0,0,0,0,0,0,0,0,3.7587,0,0),(8666,32,-8538.04,630.723,100.404,0,0,0,0,0,0,0,0,0,0,3.67624,0,0),(8666,33,-8554.03,617.81,102.053,0,0,0,0,0,0,0,0,0,0,3.67702,0,0),
(8666,34,-8564.5,613.48,102.435,0,0,0,0,0,0,0,0,0,0,3.71158,0,0),(8666,35,-8576.12,601.799,103.26,0,0,0,0,0,0,0,0,0,0,4.10978,0,0),(8666,36,-8582.44,589.572,103.691,0,0,0,0,0,0,0,0,0,0,4.47655,0,0),
(8666,37,-8586.68,575.605,102.985,0,0,0,0,0,0,0,0,0,0,4.63756,0,0),(8666,38,-8585.96,565.941,102.26,0,0,0,0,0,0,0,0,0,0,4.95957,0,0),(8666,39,-8578.9,545.988,101.779,0,0,0,0,0,0,0,0,0,0,4.39958,0,0),
(8666,40,-8581.73,541.012,102.09,0,0,0,0,0,0,0,0,0,0,3.93698,0,0),(8666,41,-8590.09,533.912,104.76,0,0,0,0,0,0,0,0,0,0,3.8286,0,0),(8666,42,-8598.32,527.164,106.399,0,0,0,0,0,0,0,0,0,0,3.8286,0,0),
(8666,43,-8605.67,520.882,105.748,0,0,0,0,0,0,0,0,0,0,4.02573,0,0),(8666,44,-8610.26,515.735,103.79,0,0,0,0,0,0,0,0,0,0,3.59062,0,0),(8666,45,-8613.43,514.684,103.401,0,0,0,0,0,0,0,0,0,0,2.67406,0,0),
(8666,46,-8618.8,518.794,103.068,0,0,0,0,0,0,0,0,0,0,2.25388,0,0),(8666,47,-8635.17,535.152,99.9833,0,0,0,0,0,0,0,0,0,0,2.34105,0,0),(8666,48,-8647.39,546.721,97.8568,0,0,0,0,0,0,0,0,0,0,2.39603,0,0),
(8666,49,-8655.78,552.938,96.9435,0,0,0,0,0,0,0,0,0,0,2.89869,0,0),(8666,50,-8671.86,552.874,97.2037,0,0,0,0,0,0,0,0,0,0,3.45946,0,0),(8666,51,-8679.66,549.654,97.5031,0,0,0,0,0,0,0,0,0,0,3.70294,0,0),
(8666,52,-8689.63,540.268,97.828,0,0,0,0,0,0,0,0,0,0,3.98961,0,0),(8666,53,-8698.98,530.295,97.7173,0,0,0,0,0,0,0,0,0,0,3.86394,0,0),(8666,54,-8712.64,520.242,97.2398,0,0,0,0,0,0,0,0,0,0,3.1995,0,0),
(8666,55,-8715.24,521.571,97.4039,0,0,0,0,0,0,0,0,0,0,2.46279,0,0),(8666,56,-8720.77,528.729,99.1496,0,0,0,0,0,0,0,0,0,0,2.24995,0,0),(8666,57,-8729.84,539.87,101.105,0,0,0,0,0,0,0,0,0,0,2.2578,0,0),
(8666,58,-8735.95,547.101,100.845,0,0,0,0,0,0,0,0,0,0,2.31278,0,0),(8666,59,-8745.79,557.737,97.7107,0,0,0,0,0,0,0,0,0,0,2.76831,0,0),(8666,60,-8746.01,564.915,97.4001,0,0,0,0,0,0,0,0,0,0,1.0217,0,0),
(8666,61,-8729.92,581.294,97.6775,0,0,0,0,0,0,0,0,0,0,0.77273,0,0),(8666,62,-8719.58,591.033,98.4713,0,0,0,0,0,0,0,0,0,0,0.505695,0,0),(8666,63,-8712.04,594.001,98.6079,0,0,0,0,0,0,0,0,0,0,0.512763,0,0),
(8666,64,-8707.26,600.676,98.9982,0,0,0,0,0,0,0,0,0,0,1.19999,0,0),(8666,65,-8704.46,616.407,100.215,0,0,0,0,0,0,0,0,0,0,1.62803,0,0),(8666,66,-8705.6,629.078,100.477,0,0,0,0,0,0,0,0,0,0,1.78904,0,0),
(8666,67,-8708.67,645.787,99.9994,0,0,0,0,0,0,0,0,0,0,1.97518,0,0),(8666,68,-8716.46,666.585,98.8681,0,0,0,0,0,0,0,0,0,0,2.08042,0,0),(8666,69,-8724.09,676.482,98.6317,0,0,0,0,0,0,0,0,0,0,2.17781,0,0),
(8666,70,-8728.54,684.167,98.7324,0,0,0,0,0,0,0,0,0,0,2.09141,0,0),(8666,71,-8733.47,695.151,98.723,0,0,0,0,0,0,0,0,0,0,2.11105,0,0),(8666,72,-8743.6,709.876,98.2678,0,0,0,0,0,0,0,0,0,0,1.36492,0,0),
(8666,73,-8741.08,714.561,98.9815,0,0,0,0,0,0,0,0,0,0,0.788438,0,0),(8666,74,-8734.46,720.119,101.647,0,0,0,0,0,0,0,0,0,0,0.685551,0,0),(8666,75,-8726.79,726.231,100.924,0,0,0,0,0,0,0,0,0,0,0.740529,0,0),
(8666,76,-8718.09,733.687,97.9511,0,0,0,0,0,0,0,0,0,0,0.965938,0,0),(8666,77,-8716.42,737.269,97.7782,0,0,0,0,0,0,0,0,0,0,1.56912,0,0),(8666,78,-8721.01,746.752,97.9693,0,0,0,0,0,0,0,0,0,0,2.11262,0,0),
(8666,79,-8730.96,759.107,98.1572,0,0,0,0,0,0,0,0,0,0,1.95711,0,0),(8666,80,-8731.99,769.385,98.0161,0,0,0,0,0,0,0,0,0,0,1.37435,0,0),(8666,81,-8724.64,778.108,98.0604,0,0,0,0,0,0,0,0,0,0,0.868549,0,0),
(8666,82,-8717.55,792.762,97.1197,0,0,0,0,0,0,0,0,0,0,1.65081,0,0),(8666,83,-8717.68,798.804,97.1792,0,0,0,0,0,0,0,0,0,0,1.9202,0,0),(8666,84,-8728.3,817.744,96.9777,0,0,0,0,0,0,0,0,0,0,1.68929,0,0),
(8666,85,-8726.79,830.504,96.3102,0,0,0,0,0,0,0,0,0,0,1.37607,0,0),(8666,86,-8723.42,841.35,96.0764,0,0,0,0,0,0,0,0,0,0,0.900908,0,0),(8666,87,-8709.57,857.779,96.978,0,0,0,0,0,0,0,0,0,0,0.686494,0,0),
(8666,88,-8692.38,870.557,97.0284,0,0,0,0,0,0,0,0,0,0,0.645652,0,0),(8666,89,-8679.35,880.974,97.0167,0,0,0,0,0,0,0,0,0,0,0.657433,0,0),(8666,90,-8661.22,896.239,97.5968,0,0,0,0,0,0,0,0,0,0,0.7399,0,0),
(8666,91,-8643.7,912.233,98.9288,0,0,0,0,0,0,0,0,0,0,0.7399,0,0),(8666,92,-8634.58,918.926,99.3551,2000,641,0,0,0,0,0,0,0,0,0.618163,0,0);
DELETE FROM creature_linking WHERE guid = 56809;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56809, 6311, 8832);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(56809, 7386, 0, 1, 1, 0, 0, -8634.01, 919.46, 99.36, 3.88, 180, 0, 0, 42, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(59652, 17230, 530, 1, 1, 0, 0, -597.632, 4176.91, 64.8636, 0.418879, 300, 0, 0, 42, 0, 0, 2);
UPDATE creature_template SET MovementType = 2 WHERE entry = 17230;
DELETE FROM creature_movement_template WHERE entry = 17230;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(17230,1,-603.059,4166.03,64.3336,0,0,0,0,0,0,0,0,0,0,4.63706,0,0),
(17230,2,-600.881,4161.52,64.9931,0,0,0,0,0,0,0,0,0,0,5.42795,0,0),
(17230,3,-595.116,4157.8,65.2767,0,0,0,0,0,0,0,0,0,0,5.75546,0,0),
(17230,4,-590.633,4155.53,67.8345,0,0,0,0,0,0,0,0,0,0,5.82222,0,0),
(17230,5,-576.829,4149.44,68.1243,5000,1723001,0,0,0,0,0,0,0,0,5.86542,0,0),
(17230,6,-591.253,4155.71,67.667,0,0,0,0,0,0,0,0,0,0,2.71597,0,0),
(17230,7,-594.879,4158.15,65.2685,0,0,0,0,0,0,0,0,0,0,2.23766,0,0),
(17230,8,-599.785,4161.72,65.0972,0,0,0,0,0,0,0,0,0,0,1.9667,0,0),
(17230,9,-601.114,4164.75,64.754,0,0,0,0,0,0,0,0,0,0,1.20172,0,0),
(17230,10,-597.099,4176,64.9199,240000,0,0,0,0,0,0,0,0,0,0.944113,0,0),
(17230,11,-597.099,4176,64.9199,1000,1723002,0,0,0,0,0,0,0,0,0.944113,0,0),
(17230,12,-602.987,4163.88,64.5397,0,0,0,0,0,0,0,0,0,0,3.80201,0,0),
(17230,13,-605.388,4162.12,64.4036,0,0,0,0,0,0,0,0,0,0,3.27186,0,0),
(17230,14,-618.198,4162.71,63.1639,0,0,0,0,0,0,0,0,0,0,2.73779,0,0),
(17230,15,-620.134,4163.85,63.0323,0,0,0,0,0,0,0,0,0,0,2.11968,0,0),
(17230,16,-621.806,4167.84,62.6762,0,0,0,0,0,0,0,0,0,0,1.72384,0,0),
(17230,17,-623.2,4175.55,61.4847,0,0,0,0,0,0,0,0,0,0,1.74602,0,0),
(17230,18,-628.983,4190.44,58.1583,0,0,0,0,0,0,0,0,0,0,1.95808,0,0),
(17230,19,-623.776,4177.94,60.921,0,0,0,0,0,0,0,0,0,0,5.28581,0,0),
(17230,20,-613.522,4175.35,62.6926,1000,1723003,0,0,0,0,0,0,0,0,0.0464096,0,0),
(17230,21,-597.789,4176.94,64.7764,240000,0,0,0,0,0,0,0,0,0,0.186996,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1723001,1723002,1723003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1723001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1723002,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1723002,0,31,16793,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1723002,1,0,0,0,16793,20,7,2000001188,2000001189,0,0,0,0,0,0,'force buddy to: say random text'),
(1723003,0,31,17282,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1723003,1,0,0,0,17282,62075,7 | 0x10,2000001190,0,0,0,0,0,0,0,'force buddy to: say random text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001188 AND 2000001190;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001188,'Did you find something fun to chase around, Twinkle?  I bet you did!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001189,'It\'s just you and me, Twinkle.  Daddy\'s not going to be coming home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001190,'I wonder how far this would launch that white cat...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(59661, 17282, 530, 1, 1, 0, 0, -675.378, 4118.66, 72.5601, 1.71759, 300, 0, 0, 5495, 2991, 0, 2),
(59662, 17282, 530, 1, 1, 0, 0, -673.344, 4119.52, 72.4843, 1.82217, 300, 0, 0, 5495, 2991, 0, 0),
(59673, 17282, 530, 1, 1, 0, 0, -626.53, 4154.96, 63.9912, 0.249558, 300, 0, 0, 5495, 2991, 0, 0),
(59674, 17282, 530, 1, 1, 0, 0, -627.523, 4156.77, 63.8662, 0.249558, 300, 0, 0, 5495, 2991, 0, 2);
DELETE FROM creature_movement WHERE id = 59661;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(59661,1,-670.398,4115.13,73.5682,0,0,0,0,0,0,0,0,0,0,5.17779,0,0),
(59661,2,-666.054,4107.92,74.8717,0,0,0,0,0,0,0,0,0,0,5.46446,0,0),
(59661,3,-661.391,4103.52,75.996,0,0,0,0,0,0,0,0,0,0,5.74877,0,0),
(59661,4,-655.411,4101.82,77.5939,0,0,0,0,0,0,0,0,0,0,0.0169263,0,0),
(59661,5,-648.99,4102.68,79.0709,0,0,0,0,0,0,0,0,0,0,0.15594,0,0),
(59661,6,-645.083,4104.23,80.0976,0,0,0,0,0,0,0,0,0,0,0.410409,0,0),
(59661,7,-639.382,4108.4,81.9022,0,0,0,0,0,0,0,0,0,0,0.668805,0,0),
(59661,8,-630.143,4117.24,85.0093,0,0,0,0,0,0,0,0,0,0,0.499159,0,0),
(59661,9,-624.318,4120.4,86.5588,0,0,0,0,0,0,0,0,0,0,0.337138,0,0),
(59661,10,-620.052,4121.33,87.6003,0,0,0,0,0,0,0,0,0,0,6.22762,0,0),
(59661,11,-615.922,4120.47,88.4096,0,0,0,0,0,0,0,0,0,0,5.78073,0,0),
(59661,12,-612.447,4117.71,88.8557,0,0,0,0,0,0,0,0,0,0,5.18148,0,0),
(59661,13,-602.748,4097.79,90.8412,5000,0,0,0,0,0,0,0,0,0,5.16813,0,0),
(59661,14,-614.507,4114.82,88.5941,0,0,0,0,0,0,0,0,0,0,2.02246,0,0),
(59661,15,-617.362,4117.91,88.046,0,0,0,0,0,0,0,0,0,0,2.57459,0,0),
(59661,16,-620.27,4118.2,87.2764,0,0,0,0,0,0,0,0,0,0,3.08353,0,0),
(59661,17,-623.8,4117.07,86.2394,0,0,0,0,0,0,0,0,0,0,3.59483,0,0),
(59661,18,-629.685,4112.73,84.306,0,0,0,0,0,0,0,0,0,0,3.76535,0,0),
(59661,19,-639.118,4103.89,81.2014,0,0,0,0,0,0,0,0,0,0,3.64823,0,0),
(59661,20,-649.222,4099.03,78.5886,0,0,0,0,0,0,0,0,0,0,3.36313,0,0),
(59661,21,-654.833,4098.31,77.3976,0,0,0,0,0,0,0,0,0,0,3.10317,0,0),
(59661,22,-660.503,4098.99,76.2923,0,0,0,0,0,0,0,0,0,0,2.76937,0,0),
(59661,23,-665.169,4101.41,75.6001,0,0,0,0,0,0,0,0,0,0,2.40338,0,0),
(59661,24,-670.765,4107.85,74.5016,0,0,0,0,0,0,0,0,0,0,2.05152,0,0),
(59661,25,-675.431,4118.68,72.5593,5000,0,0,0,0,0,0,0,0,0,1.99968,0,0);
DELETE FROM creature_linking WHERE guid = 59662;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(59662, 59661, 512);
DELETE FROM creature_movement WHERE id = 59674;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(59674,1,-624.19,4158.6,63.4654,0,0,0,0,0,0,0,0,0,0,0.408872,0,0),
(59674,2,-622.686,4162.96,63.1608,0,0,0,0,0,0,0,0,0,0,1.32543,0,0),
(59674,3,-622.357,4169.84,62.4888,0,0,0,0,0,0,0,0,0,0,1.48094,0,0),
(59674,4,-623.462,4174.73,61.6499,0,0,0,0,0,0,0,0,0,0,1.86265,0,0),
(59674,5,-626.393,4182.12,60.0974,5000,0,0,0,0,0,0,0,0,0,1.98124,0,0),
(59674,6,-622.172,4178.62,60.9533,0,0,0,0,0,0,0,0,0,0,5.22886,0,0),
(59674,7,-620.102,4173.03,62.0333,0,0,0,0,0,0,0,0,0,0,4.97989,0,0),
(59674,8,-619.011,4165.05,62.9172,0,0,0,0,0,0,0,0,0,0,4.58405,0,0),
(59674,9,-619.732,4160.32,63.3172,0,0,0,0,0,0,0,0,0,0,4.20864,0,0),
(59674,10,-622.894,4155.56,63.691,0,0,0,0,0,0,0,0,0,0,3.76804,0,0),
(59674,11,-628.754,4152.18,64.2084,0,0,0,0,0,0,0,0,0,0,3.38019,0,0),
(59674,12,-639.111,4149.3,64.242,0,0,0,0,0,0,0,0,0,0,3.16028,0,0),
(59674,13,-656.313,4146.89,64.1236,0,0,0,0,0,0,0,0,0,0,3.03775,0,0),
(59674,14,-669.156,4146.29,64.1596,0,0,0,0,0,0,0,0,0,0,3.17363,0,0),
(59674,15,-676.072,4145.15,64.4498,0,0,0,0,0,0,0,0,0,0,3.15949,0,0),
(59674,16,-679.769,4144.66,64.7205,0,0,0,0,0,0,0,0,0,0,2.95529,0,0),
(59674,17,-683.884,4147.79,64.1076,0,0,0,0,0,0,0,0,0,0,2.14868,0,0),
(59674,18,-687.195,4156.14,61.3508,5000,0,0,0,0,0,0,0,0,0,1.87772,0,0),
(59674,19,-681.805,4152.04,62.9783,0,0,0,0,0,0,0,0,0,0,5.30992,0,0),
(59674,20,-679.857,4149.01,63.8403,0,0,0,0,0,0,0,0,0,0,5.48584,0,0),
(59674,21,-675.72,4148.63,64.0716,0,0,0,0,0,0,0,0,0,0,0.0281043,0,0),
(59674,22,-667.948,4149.35,64.1709,0,0,0,0,0,0,0,0,0,0,6.24139,0,0),
(59674,23,-656.199,4149.49,64.152,0,0,0,0,0,0,0,0,0,0,0.0595209,0,0),
(59674,24,-646.359,4151.18,64.2248,0,0,0,0,0,0,0,0,0,0,0.20482,0,0),
(59674,25,-636.105,4153.01,64.0977,0,0,0,0,0,0,0,0,0,0,0.102718,0,0),
(59674,26,-627.604,4156.75,63.782,0,0,0,0,0,0,0,0,0,0,0.401169,0,0);
DELETE FROM creature_linking WHERE guid = 59673;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(59673, 59674, 512);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2410801','24108','8','0','100','1','42436','-1','500','500','5','34','0','0','11','47173','6','0','0','0','0','0','Self-Turning and Oscillating Utility Target - Emote and Cast Brewfest - Dark Iron Attack - Intro - Assign Kill Credit on Drink! Spellhit'),
('2098401','20984','30','0','100','0','5','20985','0','0','5','15','0','0','0','0','0','0','0','0','0','0','Protectorate Defender - Handle Emote on AI event received'),
('2098402','20984','0','0','100','1','1000','2000','11000','15000','11','31553','1','0','0','0','0','0','0','0','0','0','Protectorate Defender - Cast Hamstring'),
('2098403','20984','0','0','100','1','2000','3000','2000','4000','11','36500','4','0','0','0','0','0','0','0','0','0','Protectorate Defender - Cast Glaive'),
('2098501','20985','0','0','100','1','2000','3000','2000','4000','11','15496','1','0','0','0','0','0','0','0','0','0','Captain Saeed - Cast Cleave'),
('2178301','21783','11','0','100','0','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Protectorate Regenerator - Prevent Combat Movement on Spawn'),
('2178302','21783','30','0','100','0','5','20985','0','0','5','15','0','0','0','0','0','0','0','0','0','0','Protectorate Regenerator - Handle Emote on AI event received'),
('2178303','21783','0','0','100','1','1000','2000','3000','4000','11','34232','1','0','0','0','0','0','0','0','0','0','Protectorate Regenerator - Cast Holy Bolt'),
('2178304','21783','9','0','100','1','15','20','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Protectorate Regenerator - Start Combat Movement on Range Check'),
('2178305','21783','9','0','100','1','0','10','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Protectorate Regenerator - Prevent Combat Movement on Range Check'),
('2180501','21805','11','0','100','0','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Protectorate Avenger - Prevent Combat Movement on Spawn'),
('2180502','21805','30','0','100','0','5','20985','0','0','5','15','0','0','0','0','0','0','0','0','0','0','Protectorate Avenger - Handle Emote on AI event received'),
('2180503','21805','0','0','100','1','2000','3000','4000','8000','11','36500','1','0','0','0','0','0','0','0','0','0','Protectorate Avenger  - Cast Glaive'),
('2180504','21805','9','0','100','1','15','25','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Protectorate Avenger - Start Combat Movement on Range Check'),
('2180505','21805','9','0','100','1','0','20','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Protectorate Avenger - Prevent Combat Movement on Range Check'),
('2574402','25744','9','0','100','2','0','5','0','0','11','45944','0','2','41','1000','0','0','0','0','0','0','Dark Fiend - Cast Dark Fiend and Despawn on Range Check');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry in (24108,20984,20985,21783,21805);
UPDATE quest_template SET OfferRewardText ='Hmph. That one.$B$BHow is Rokaro? As suspicious as ever, sending me a note like this.$B$BYou must be on an important mission if Rokaro has sent you to me.$B$BWell, I owe the Warchief a fovor or two.' WHERE entry = 6568;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 20925;
DELETE FROM spell_script_target WHERE entry = 44941;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44941, 0, 187073, 0);
DELETE FROM `creature` WHERE `id`=417;
DELETE FROM creature_linking_template WHERE entry = 36561;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(36561, 249, 10184, 4096, 0);
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (30174,29500);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29500, 0, 29498, 'Brunnhildar Warmaiden'),
(30174, 0, 30175, 'Hyldsmeet Bear Rider');
DELETE FROM spell_target_position WHERE id IN (16572,16767,16768,16772,16775,16776,16777,16778,16779,16780,16786,18634);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(16572,0,-6046.85,-207.329,418.304,0),
(16767,0,-6046.73,-207.159,417.267,0),
(16768,0,-6051.39,-206.749,418.159,0),
(16772,0,-6046.84,-204.535,416.897,0),
(16775,0,-6044.47,-205.783,417.267,0),
(16776,0,-6044.54,-205.562,417.663,0),
(16777,0,-6044.53,-202.912,416.756,0),
(16778,0,-6042.18,-204.949,416.336,0),
(16779,0,-6042.02,-204.134,416.894,0),
(16780,0,-6044.79,-196.959,419.19,0),
(16786,0,-6078.3,-211.89,424.197,0),
(18634,0,-6076,-215,424,0);
DELETE FROM dbscripts_on_go_template_use WHERE id = 185547;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185547,2,10,22993,600000,0,0,0,0,0,0,0,-2623.6,4573.66,138.827,1.64381,'summon');
DELETE FROM dbscripts_on_go_template_use WHERE id = 185553;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185553,2,10,22994,600000,0,0,0,0,0,0,0,-3166.13,3809.05,59.7824,1.84486,'summon');
DELETE FROM dbscripts_on_go_template_use WHERE id = 185551;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185551,2,10,22992,600000,0,0,0,0,0,0,0,-4362.77,4626.06,-39.2711,0.86199,'summon');
UPDATE creature_template SET MovementType = 0 WHERE entry = 22993;
UPDATE creature_template SET MovementType = 0 WHERE entry = 22994;
UPDATE creature_template SET MovementType = 0 WHERE entry = 22992;
UPDATE creature_template SET MovementType = 0, InhabitType = 3 WHERE entry = 23002;
DELETE FROM creature_linking_template WHERE entry = 23167;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES (23167,530,22993,17,100);
DELETE FROM dbscripts_on_go_template_use WHERE id = 128403;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, data_flags, comments) VALUES
(128403, 2, 15, 10247, 0x02, 'cast Summon Zul\'Farrak Zombies');
DELETE FROM dbscripts_on_spell WHERE id = 64063;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, comments) VALUES
(64063, 0, 28, 7, 2, 'set stand state dead');
DELETE FROM dbscripts_on_spell WHERE id IN (54799,54804);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(54804, 8, 29595, 0, 'kill credit for quest 12851'),
(54799, 8, 29597, 0, 'kill credit for quest 12851');
DELETE FROM spell_script_target WHERE entry = 54798;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(54798,1,29358,0),(54798,1,29351,0);
DELETE FROM dbscripts_on_spell WHERE id = 32979;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32979,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(32979,1,9,0,300,182817,30,0,0,0,0,0,0,0,0,0,'respawn gobject');
DELETE FROM dbscripts_on_spell WHERE id = 33067;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(33067,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(33067,1,9,0,300,182817,30,0,0,0,0,0,0,0,0,0,'respawn gobject');
UPDATE gameobject SET spawntimesecs = -300 WHERE guid IN (103099,103097,103098,103100);
DELETE FROM dbscripts_on_spell WHERE id = 33655;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(33655,0,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 1'),
(33655,1,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 2'),
(33655,2,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 3'),
(33655,3,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
UPDATE gameobject SET spawntimesecs = -180 WHERE guid IN (66690,66691,66692,66693);
DELETE FROM dbscripts_on_spell WHERE id = 39810;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(39810,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'); 
UPDATE creature_template SET MovementType = 0, InhabitType = 5 WHERE entry = 23036;
DELETE FROM dbscripts_on_spell WHERE id = 8913; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8913,2,10,24782,120000,1200,50,7,0,0,0,0,0,0,0,0,''),
(8913,3,18,0,0,1200,50,7,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id = 37277; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(37277,0,31,21419,30,0,0,0,0,0,0,0,0,0,0,0,''),
(37277,1,22,90,0x01 | 0x10 | 0x40 | 0x80,21419,30,0,0,0,0,0,0,0,0,0,'temp faction'),
(37277,2,23,17312,0,21419,30,0x08,0,0,0,0,0,0,0,0,'temp model'),
(37277,2,20,1,5,21419,30,2,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
DELETE FROM spell_script_target WHERE entry = 18655;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES (18655,0,176557);
UPDATE creature_ai_scripts SET action1_type = '22', action1_param1 = '1' WHERE COMMENT LIKE '%Set Phase 1%' AND action1_type = '23';
UPDATE creature_ai_scripts SET action2_type = '22', action2_param1 = '1' WHERE COMMENT LIKE '%Set Phase 1%' AND action2_type = '23';
UPDATE creature_ai_scripts SET action3_type = '22', action3_param1 = '1' WHERE COMMENT LIKE '%Set Phase 1%' AND action3_type = '23';
UPDATE creature_ai_scripts SET action1_type = '22', action1_param1 = '2' WHERE COMMENT LIKE '%Set Phase 2%' AND action1_type = '23';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '25', event_param2 = '80', event_param3 = '1000', event_param4 = '1000' WHERE event_type='9' AND event_param1='35' AND event_param2='80' AND event_param3='0' AND event_param4='0';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '5', event_param2 = '15', event_param3 = '1000', event_param4 = '1000' WHERE event_type='9' AND event_param1='5' AND event_param2='15' AND event_param3='0' AND event_param4='0';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '0', event_param2 = '5', event_param3 = '1000', event_param4 = '1000' WHERE event_type='9' AND event_param1='0' AND event_param2='5' AND event_param3='0' AND event_param4='0';
UPDATE `creature_movement_template` SET `orientation` = 1.88 WHERE `entry` =40429;
UPDATE `dbscripts_on_creature_movement` SET `datalong` = 0 WHERE `id` = 4042901 AND `command` = 0 AND `dataint` = 2000000868;
DELETE FROM achievement_criteria_requirement WHERE criteria_id =10338;
INSERT INTO achievement_criteria_requirement (criteria_id, type, value1, value2) VALUES (10338,12,0,0),(10338,18,0,0);
DELETE FROM dbscripts_on_event WHERE id = 21432;
INSERT INTO dbscripts_on_event (id, command, datalong, x, y, z, o, comments) VALUES
(21432, 10, 33991, 1899.941, 0.330621, 332.2957, 0, 'spawn Sanity Well'),
(21432, 10, 33991, 1900.478, -51.23861, 332.1303, 0, 'spawn Sanity Well'),
(21432, 10, 33991, 1987.125, -91.27024, 330.1858, 0, 'spawn Sanity Well'),
(21432, 10, 33991, 1975.885, 40.02165, 331.0996, 0, 'spawn Sanity Well');
DELETE FROM dbscripts_on_event WHERE id = 12353;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(12353,1,31,21075,100,0,0,0,0,0,0,0,0,0,0,0,''),
(12353,1,15,5,0,21075,74081,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,2,15,5,0,21075,74082,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,7,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 23100;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23100,1,15,5,0,23094,96675,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,96676,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,96677,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,96678,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 3421;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3421,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph');
DELETE FROM dbscripts_on_creature_death WHERE id = 21292;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21292,0,10,21318,1200000,0,0,0,0,0,0,0,-3801.75,2600.401,90.27156,5.759586,'summon'),
(21292,2,1,1,0,21318,25,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 21075;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21075,0,31,19215,100,0,0,0,0,0,0,0,0,0,0,0,''),
(21075,1,15,33240,0,19215,68744,0x01 | 0x10,0,0,0,0,0,0,0,0,'cast 33240 on buddy'),
(21075,5,10,18946,0,19215,68744,7 | 0x10,0,0,0,0,0,0,0,0,'summon infernals');
UPDATE creature_template SET InhabitType = 5 WHERE entry = 21075;
DELETE FROM dbscripts_on_creature_death WHERE id = 21877;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21877,1,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_linking_template WHERE entry = 21876;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21876,530,21877,8208,100);
DELETE FROM dbscripts_on_creature_death WHERE id = 21797;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21797,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(21797,3,18,0,0,21877,50,7,0,0,0,0,0,0,0,0,'Karsius the Ancient Watcher despawn'),
(21797,3,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
UPDATE creature_template SET MovementType = 0 WHERE entry = 21417;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21417;
UPDATE creature_template SET factionAlliance = 90, factionHorde = 90, MovementType = 1, unitFlags = 0x2020100 WHERE entry = 21419;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21419,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(21419,10,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,'temp model removed!');
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE id = 21749;
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE id = 21736;
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('153803','1538','14','0','90','1','55','40','18000','29000','11','2052','6','1','0','0','0','0','0','0','0','0','Scarlet Friar - Cast Lesser Heal on Friendlies');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7390, 150137, 0, 1, 1, -6355.19, -2079.83, 243.63, -2.47837, 0, 0, -0.945506, 0.325546, 600, 100, 1),
(16180, 17157, 0, 1, 1, -6350.34, -2079.46, 244.019, -0.907648, 0, 0, -0.438406, 0.898777, 600, 100, 1),
(16427, 17156, 0, 1, 1, -6039.81, -2489.11, 311.545, 2.23395, 0, 0, 0.898778, 0.438403, 600, 100, 1),
(71688, 150138, 0, 1, 1, -6034.97, -2488.73, 311.086, 0.663225, 0, 0, 0.325568, 0.945519, 600, 100, 1);
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN ('17156', '17157');
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('17156', '0', '11', '0', '15', '150138', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonewrought Pass - Northern Door Lever'),
('17157', '0', '11', '0', '15', '150137', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonewrought Pass - Southern Door Lever');
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` =17157;
DELETE FROM gameobject_template WHERE entry = 185523;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(185523,5,7356,'The Book of the Raven','','','',0,0,0.5,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(8849, 185523, 530, 1,1,3024.36, 5509, 145.957, 2.29514, 0, 0, 0.911768, 0.410706, -600, 255, 1);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(8850, 148842, 1, 1,1,1697.41, -5866.47, -130.590, 0.353373, 0, 0, 0.175769, 0.984432, 300, 255, 1);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(8851, 185856, 530, 1,1,-2466.6, 4699.98, 156.65, 0.7544816, 0, 0, 0.3683567, 0.9296846, -300, 255, 1);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(44051, 184683, 530, 1,1,-2804.579, 1259.304, 74.66774, 3.13983, 0.004361629, -0.02181435, 0.999752, 0.0009765625, 180, 100, 1);
DELETE FROM creature_template_spells WHERE entry IN (27881,28312,32627,28319,32629,28094);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(27881, 57606, 50989, 0, 0, 0, 0, 0, 0),
(28094, 57618, 54107, 0, 0, 0, 0, 0, 0),
(28312, 54109, 0, 0, 0, 0, 0, 0, 0),
(32627, 51678, 0, 0, 0, 0, 0, 0, 0),
(28319, 57609, 0, 0, 0, 0, 0, 0, 0),
(32629, 57609, 0, 0, 0, 0, 0, 0, 0);
UPDATE quest_template SET StartScript = 1090 WHERE entry = 1090;
DELETE FROM dbscripts_on_quest_start WHERE id = 1090;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, comments) VALUES
(1090, 5, 26, 0, 0, 3999, 10, 3, 0, 0, 0, 0, 'aggro nearby mob if possible'),
(1090, 60, 10, 3998, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon first wave'),
(1090, 60, 10, 3998, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon first wave'),
(1090, 60, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon first wave'),
(1090, 149, 34, 2191, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 149, 34, 2192, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 150, 10, 4002, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'),
(1090, 150, 10, 4002, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon second wave'),
(1090, 150, 10, 4004, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'),
(1090, 239, 34, 2191, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 239, 34, 2192, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon third wave'),
(1090, 240, 10, 4004, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon third wave'),
(1090, 419, 34, 2191, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 419, 34, 2192, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 420, 7, 1090, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES ('2191', '36', '0', '60'), ('2192', '36', '3', '0');
DELETE FROM db_script_string WHERE entry IN (2000001191,2000001192);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001191,'All hands to battle stations! Naga incoming!',0,1,0,22,'Shakes O\'Breen - yell_naga_1'),
(2000001192,'If we can just hold them now, I am sure we will be in the clear.',0,0,0,0,'Shakes O\'Breen - yell_naga_2');
UPDATE quest_template SET StartScript = entry WHERE entry = 667;
DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(667, 0, 0, 0, 0, 0, 0, 0, 2000001191, 0, 0, 0, 0, 'say_protect_1'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon first wave'),
(667, 50, 34, 2191, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 50, 34, 2192, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 65, 0, 0, 0, 0, 0, 0, 2000001192, 0, 0, 0, 0, 'say_protect_2'),
(667, 100, 34, 2191, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 100, 34, 2192, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 110, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon third wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 190, 34, 2191, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 190, 34, 2192, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 195, 7, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (2775);
DELETE FROM creature_movement_template WHERE entry IN (2775);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(2775, 1, -2153.701, -1973.676, 15.00, 277501, 1000, 5.4),
(2775, 2, -2145.585, -1985.125, 12.04, 0, 0, 0),
(2775, 3, -2132.084, -1992.558, 5.96, 0, 0, 0),
(2775, 4, -2118.418, -2005.057, 5.63, 0, 0, 0),
(2775, 5, -2109.372, -2024.358, 6.08, 0, 0, 0),
(2775, 6, -2100.003, -2030.407, 3.14, 277506, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (277501,277506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(277501, 0, 25, 1, 0, 0, 0, 'set run on'),
(277506, 0, 26, 0, 2610, 20, 2, 'attack Shakes O\'Breen');
DELETE FROM db_script_string WHERE entry IN (2000001193,2000001194,2000001195,2000001196,2000001197);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001193,'Wait... did you hear that? Something approaches from the west!',0,0,0,1,'Sentinel Aynasha - say_protect_1'),
(2000001194,'I\'ve run out of arrows! I\'m afraid if any more come you will need to take them on by yourself my friend.',0,0,0,0,'Sentinel Aynasha - say_protect_2'),
(2000001195,'Praise Elune! I don\'t know if I could have survived the day without you, friend.',0,0,0,5,'Sentinel Aynasha - say_protect_3'),
(2000001196,'My legs feels much better now, the remedy must be working. If you will excuse me, I must go report to my superiors about what has transpired here.',0,0,0,1,'Sentinel Aynasha - say_protect_4'),
(2000001197,'Please speak with Sentinel Onaeya at Maestra\'s Post in Ashenvale, she will see to it that you are properly rewarded for your bravery this day.',0,0,0,1,'Sentinel Aynasha - say_protect_5');
UPDATE quest_template SET StartScript = entry WHERE entry = 5713;
DELETE FROM dbscripts_on_quest_start WHERE id = 5713;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(5713, 0, 0, 0, 0, 0, 0, 0, 2000001193, 0, 0, 0, 0, 'say_protect_1'),
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon first wave'),
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon first wave'),
(5713, 50, 34, 2191, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 50, 34, 2192, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.861, -15.438, 68.36, 0, 'summon second wave'),
(5713, 70, 34, 2191, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 70, 34, 2192, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(5713, 75, 0, 0, 0, 0, 0, 0, 2000001194, 0, 0, 0, 0, 'say_protect_2'),
(5713, 75, 10, 11714, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon third wave'),
(5713, 160, 34, 2191, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 160, 34, 2192, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(5713, 165, 7, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete'),
(5713, 168, 0, 0, 0, 0, 0, 0, 2000001195, 0, 0, 0, 0, 'say_protect_3'),
(5713, 170, 0, 0, 0, 0, 0, 0, 2000001196, 0, 0, 0, 0, 'say_protect_4'),
(5713, 173, 0, 0, 0, 0, 0, 0, 2000001197, 0, 0, 0, 0, 'say_protect_5'),
(5713, 175, 25, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'set run on'),
(5713, 175, 20, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'start wp move'),
(5713, 175, 18, 20000, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'despawn on timer');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (11713,11714);
DELETE FROM creature_movement_template WHERE entry IN (11713,11714,11711);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(11713, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11713, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11713, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11713, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11713, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11713, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11714, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11714, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11714, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11714, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11714, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11714, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11711, 1, 4384.206, -61.075, 86.93, 0, 0, 0),
(11711, 2, 4378.210, -49.390, 85.54, 0, 0, 0),
(11711, 3, 4379.270, -41.688, 80.02, 0, 0, 0),
(11711, 4, 4373.655, -34.314, 73.71, 0, 0, 0),
(11711, 5, 4366.765, -22.430, 70.20, 0, 0, 0),
(11711, 6, 4368.861, -15.438, 68.36, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1171301,1171306);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(1171301, 0, 25, 1, 0, 0, 0, 'set run on'),
(1171306, 0, 26, 0, 11711, 10, 2, 'attack Sentinel Aynasha');
DELETE FROM `creature` WHERE `guid` = 38890;
DELETE FROM `creature` WHERE `guid` = 38908;
DELETE FROM `creature` WHERE `guid` = 38925;
DELETE FROM `creature` WHERE `guid` = 38943;
DELETE FROM `creature` WHERE `guid` = 38998;
DELETE FROM `creature` WHERE `guid` = 38957;
DELETE FROM `creature` WHERE `guid` = 38886;
DELETE FROM `creature` WHERE `guid` = 38980;
DELETE FROM `creature` WHERE `guid` = 38814;
UPDATE creature_template SET MovementType = 2 WHERE entry IN (3998,4001,4002,4003,4004);
DELETE FROM creature_movement_template WHERE entry IN (3998,4001,4002,4003,4004);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(3998, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(3998, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(3998, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4001, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4001, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4001, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4002, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4002, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4002, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4003, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4003, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4003, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4004, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4004, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4004, 3, 959.217, -260.678, -5.673, 399803, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 399803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
(399803, 0, 26, 4276, 10, 2, 'attack Piznik');
DELETE FROM `spell_script_target` WHERE `entry` = 5628 AND `targetEntry` IN (2006, 2007, 2008, 2009, 2012, 2013, 2014);
INSERT INTO `spell_script_target` VALUES
(5628, 1, 2006, 0), (5628, 1, 2007, 0), (5628, 1, 2008, 0), (5628, 1, 2009, 0), (5628, 1, 2012, 0), (5628, 1, 2013, 0), (5628, 1, 2014, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(126636, 23094, 530, 1, 1, 0, 0, -2452.38, 4760.84, 153.167, 5.68977, 30, 0, 0, 6986, 0, 0, 2),
(56810, 23094, 530, 1, 1, 0, 0, -2430.96, 4701.74, 175.406, 3.9619, 30, 0, 0, 6986, 0, 0, 2),
(56811, 23094, 530, 1, 1, 0, 0, -2424.75, 4658.27, 160.435, 4.10152, 30, 0, 0, 6986, 0, 0, 2),
(56812, 23094, 530, 1, 1, 0, 0, -2419.45, 4562.04, 160.518, 1.58825, 30, 0, 0, 6986, 0, 0, 2);
DELETE FROM dbscripts_on_creature_death WHERE id = 23100;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23100,1,15,5,0,23094,126636,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,56810,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,56811,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(23100,1,15,5,0,23094,56812,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement WHERE id in (126636,56810,56811,56812);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(126636, 1, -2454.89, 4756.45, 153.078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.75953, 0, 0),
(126636, 2, -2453.51, 4750.02, 152.925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.37214, 0, 0),
(126636, 3, -2445.16, 4740.12, 153.145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.68252, 0, 0),
(126636, 4, -2440.57, 4742.25, 153.042, 55000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.766487, 0, 0),
(126636, 5, -2460.71, 4751.69, 153.264, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.57064, 0, 0),
(126636, 6, -2452.38, 4760.84, 153.077, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(126636, 7, -2452.38, 4760.84, 153.077, 55000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07762, 0, 0),
(56810, 1, -2433.32, 4709.17, 174.657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3813, 0, 0),
(56810, 2, -2435.92, 4697.7, 172.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.89674, 0, 0),
(56810, 3, -2433.34, 4691.46, 175.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.30043, 0, 0),
(56810, 4, -2429.18, 4683.65, 171.996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.28079, 0, 0),
(56810, 5, -2433.49, 4691.62, 175.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00175, 0, 0),
(56810, 6, -2435.69, 4696.69, 172.972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.67503, 0, 0),
(56810, 7, -2432.91, 4709.57, 174.699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.10247, 0, 0),
(56811, 1, -2428.81, 4653.14, 160.576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80064, 0, 0),
(56811, 2, -2432.53, 4653.75, 160.579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3131, 0, 0),
(56811, 3, -2433.45, 4658.36, 160.583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58817, 0, 0),
(56811, 4, -2432.96, 4662.07, 161.015, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.43266, 0, 0),
(56811, 5, -2429.76, 4658.01, 160.542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.57056, 0, 0),
(56811, 6, -2422.99, 4654.09, 160.546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.38835, 0, 0),
(56811, 7, -2422.99, 4654.09, 160.546, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92437, 0, 0),
(56811, 8, -2424.75, 4658.27, 160.435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.0127, 0, 0),
(56811, 9, -2424.75, 4658.27, 160.435, 55000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.10152, 0, 0),
(56812, 1, -2417.55, 4579.64, 160.559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.58249, 0, 0),
(56812, 2, -2421, 4582.46, 160.57, 55000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44283, 0, 0),
(56812, 3, -2419.45, 4562.04, 160.513, 55000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58825, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(84785, 23091, 530, 1, 1, 0, 0, -2436.65, 4755.24, 153.15, 3.80134, 180, 3, 0, 6986, 0, 0, 1),
(54014, 23092, 530, 1, 1, 0, 0, -2502.14, 4736.15, 153.407, 1.81271, 180, 3, 0, 6986, 0, 0, 1),
(127266, 23093, 530, 1, 1, 0, 0, -2528.15, 4661.22, 170.58, 5.55015, 30, 0, 0, 12117, 0, 0, 0);
UPDATE creature SET MovementType = 2 WHERE guid = 125897;
DELETE FROM creature_movement WHERE id = 125897;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(125897,1,-260.766,1093.41,41.6666,0,0,0,0,0,0,0,0,0,0,5.7179,0,0),
(125897,2,-259.812,1098.64,41.6666,0,0,0,0,0,0,0,0,0,0,6.0242,0,0),
(125897,3,-242.463,1099.17,41.6666,0,0,0,0,0,0,0,0,0,0,6.26846,0,0),
(125897,4,-242.316,1094.29,41.6666,0,0,0,0,0,0,0,0,0,0,4.72515,0,0);
UPDATE creature SET MovementType = 2 WHERE guid = 125898;
DELETE FROM creature_movement WHERE id = 125898;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(125898,1,-233.971,1094.96,41.668,0,0,0,0,0,0,0,0,0,0,4.65979,0,0),
(125898,2,-246.08,1094.57,41.668,0,0,0,0,0,0,0,0,0,0,2.00829,0,0),
(125898,3,-247.234,1097.84,41.668,0,0,0,0,0,0,0,0,0,0,0.171238,0,0),
(125898,4,-232.666,1097.36,41.668,0,0,0,0,0,0,0,0,0,0,6.23451,0,0);
DELETE FROM dbscripts_on_creature_death WHERE id = 21075;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21075,0,31,19215,100,0,0,0,0,0,0,0,0,0,0,0,''),
(21075,1,15,33240,0,19215,125897,0x01 | 0x10,0,0,0,0,0,0,0,0,'cast 33240 on buddy'),
(21075,5,10,18946,0,19215,125897,7 | 0x10,0,0,0,0,0,0,0,0,'summon infernals');
UPDATE creature SET spawntimesecs = 15 WHERE guid IN (122881,122882);
DELETE FROM dbscripts_on_event WHERE id = 12353;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(12353,1,31,21075,100,0,0,0,0,0,0,0,0,0,0,0,''),
(12353,1,15,5,0,21075,122881,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,2,15,5,0,21075,122882,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,7,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1723003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1723003,0,31,17282,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1723003,1,0,0,0,17282,59675,7 | 0x10,2000001190,0,0,0,0,0,0,0,'force buddy to: say random text');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(59675, 17282, 530, 1, 1, 0, 0, -613.088, 4182.41, 63.6378, 2.44346, 300, 0, 0, 5495, 2991, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(60282, 21723, 530, 1, 1, 0, 0, -3579.09, 3127.08, 316.218, 4.46063, 300, 0, 0, 9082, 0, 0, 2),
(60283, 21723, 530, 1, 1, 0, 0, -3521.83, 3188.78, 315.987, 0.133883, 300, 0, 0, 9082, 0, 0, 2),
(60285, 21723, 530, 1, 1, 0, 0, -3557.83, 3210.94, 309.894, 0.701404, 300, 0, 0, 9082, 0, 0, 2),
(60288, 21723, 530, 1, 1, 0, 0, -3522.41, 3254.19, 300.692, 0.0237059, 300, 0, 0, 9082, 0, 0, 2),
(60289, 21723, 530, 1, 1, 0, 0, -3491.7, 3240.65, 299.471, 5.0402, 300, 0, 0, 9082, 0, 0, 2);
DELETE FROM creature_movement WHERE id in (60282,60283,60285,60288,60289);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(60282, 1, -3568.68, 3139.93, 315.043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.03754, 0, 0),
(60282, 2, -3561.34, 3155.8, 313.88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.12849, 0, 0),
(60282, 3, -3548.51, 3150.03, 316.169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.82848, 0, 0),
(60282, 4, -3539.39, 3148.19, 314.788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.271785, 0, 0),
(60282, 5, -3526.79, 3156.78, 315.301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.633107, 0, 0),
(60282, 6, -3522.28, 3161.36, 315.193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.67376, 0, 0),
(60282, 7, -3535.61, 3149.71, 314.956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60898, 0, 0),
(60282, 8, -3545.89, 3147.29, 315.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.85186, 0, 0),
(60282, 9, -3551.95, 3152.98, 316.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.75997, 0, 0),
(60282, 10, -3561.65, 3153.16, 313.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.99922, 0, 0),
(60282, 11, -3568.63, 3140.61, 315.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.2584, 0, 0),
(60282, 12, -3582.56, 3123.18, 315.775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96388, 0, 0),
(60283, 1, -3527.22, 3178.89, 316.906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.40628, 0, 0),
(60283, 2, -3527.43, 3171.43, 317.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.03067, 0, 0),
(60283, 3, -3522.81, 3163.53, 315.422, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.80039, 0, 0),
(60283, 4, -3513.18, 3160.94, 316.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85144, 0, 0),
(60283, 5, -3506.16, 3153.53, 314.594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.43126, 0, 0),
(60283, 6, -3512.24, 3160.96, 316.164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.69729, 0, 0),
(60283, 7, -3523.14, 3162.26, 315.303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.15114, 0, 0),
(60283, 8, -3528.31, 3175.28, 317.054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52047, 0, 0),
(60283, 9, -3521.96, 3187.97, 316.155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.880319, 0, 0),
(60285, 1, -3552.02, 3222.28, 307.958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.13522, 0, 0),
(60285, 2, -3556.98, 3209.75, 309.921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.90434, 0, 0),
(60285, 3, -3552.94, 3200.65, 310.456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.47079, 0, 0),
(60285, 4, -3532.93, 3189.69, 314.899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.76209, 0, 0),
(60285, 5, -3527.84, 3183.87, 316.585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.38903, 0, 0),
(60285, 6, -3537.02, 3193.84, 313.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73203, 0, 0),
(60285, 7, -3553.85, 3201.59, 310.415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.33278, 0, 0),
(60285, 8, -3557.78, 3208.74, 310.26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.0304, 0, 0),
(60288, 1, -3512.91, 3253.65, 298.684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.52543, 0, 0),
(60288, 2, -3509.42, 3247.42, 297.527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.89712, 0, 0),
(60288, 3, -3508.96, 3238.18, 291.435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.40741, 0, 0),
(60288, 4, -3509.74, 3247.4, 297.482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56703, 0, 0),
(60288, 5, -3510.9, 3254.41, 298.329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.41352, 0, 0),
(60288, 6, -3520.29, 3251.55, 300.414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.74712, 0, 0),
(60288, 7, -3529.47, 3244.12, 301.703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60732, 0, 0),
(60288, 8, -3544.26, 3234.75, 303.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92855, 0, 0),
(60288, 9, -3550.47, 3226.39, 307.004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.16495, 0, 0),
(60288, 10, -3543.36, 3236.64, 303.118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.771562, 0, 0),
(60288, 11, -3523.98, 3253.32, 300.861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.200578, 0, 0),
(60289, 1, -3491.98, 3230.37, 298.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.26973, 0, 0),
(60289, 2, -3499.64, 3217.43, 296.899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.19904, 0, 0),
(60289, 3, -3490.54, 3233.88, 298.693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.81536, 0, 0),
(60289, 4, -3497.68, 3253.86, 299.642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.66849, 0, 0),
(60289, 5, -3499.37, 3269.09, 301.012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.70383, 0, 0),
(60289, 6, -3501.71, 3273.94, 300.778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.20925, 0, 0),
(60289, 7, -3498.72, 3268.99, 301.056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.13994, 0, 0),
(60289, 8, -3498.38, 3254.15, 299.717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.93181, 0, 0),
(60289, 9, -3491.69, 3241.45, 299.476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.19491, 0, 0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 60918;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18248;
DELETE FROM creature_movement WHERE id = 60918;
DELETE FROM creature_movement_template WHERE entry = 18248;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(18248,1,2317.72,6030.27,142.57,0,1824801,0,0,0,0,0,0,0,0,3.58,0,0),
(18248,2,2307.82,6024.44,142.56,0,0,0,0,0,0,0,0,0,0,2.97,0,0),
(18248,3,2304.89,6025.77,142.96,0,0,0,0,0,0,0,0,0,0,2.44,0,0),
(18248,4,2304.89,6025.77,142.96,240000,1824802,0,0,0,0,0,0,0,0,5.63,0,0),
(18248,5,2306.93,6023.86,142.56,180000,0,0,0,0,0,0,0,0,0,5.46,0,0),
(18248,6,2317.38,6030.00,142.57,0,0,0,0,0,0,0,0,0,0,6.24,0,0),
(18248,7,2319.51,6029.16,142.62,0,0,0,0,0,0,0,0,0,0,5.50,0,0),
(18248,8,2319.51,6029.16,142.62,240000,1824803,0,0,0,0,0,0,0,0,3.88,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1824801, 1824802, 1824803); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1824801,0,0,0,0,0,0,0,2000001198,0,0,0,0,0,0,0,''),
(1824802,0,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(1824802,235,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1824803,0,0,0,0,0,0,0,2000001199,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000001198, 2000001199);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001198,'Grunting, %s turns away from the wanted poster, returning to his warm spot by the fire.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001199,'%s begins to read the wanted poster.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
DELETE FROM `creature` WHERE `guid` = 60299;
DELETE FROM `creature` WHERE `guid` = 60320;
DELETE FROM `creature` WHERE `guid` = 60361;
DELETE FROM `creature` WHERE `guid` = 60401;
UPDATE creature_template SET inhabittype = 5, MovementType = 2 WHERE entry = 21497;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(60281, 21497, 530, 1, 1, 0, 0, 3178.03, 7162.76, 198.649, 2.094, 300, 0, 0, 34930, 0, 0, 2);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(21497, 0, 50331648, 1, 16, 0, 0, NULL);
DELETE FROM creature_movement WHERE id = 60281;
DELETE FROM creature_movement_template WHERE entry = 21497;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(21497,1,3406.09,7124.062,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,2,3406.942,7123.539,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,3,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,4,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,5,3174.604,7175.172,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,6,3206.274,7208.284,193.488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,7,3226.79,7220.991,193.488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,8,3255.189,7222.584,193.488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,9,3300.442,7212.049,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,10,3313.925,7200.428,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,11,3343.274,7180.307,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,12,3375.993,7142.719,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,13,3417.932,7115.399,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,14,3443.302,7078.937,189.294,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,15,3423.431,7041.686,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,16,3389.923,7007.877,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,17,3346.986,6983.501,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,18,3303.022,6983.777,183.6277,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,19,3281.571,7027.427,186.3498,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,20,3283.781,7064.684,186.4331,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,21,3281.752,7085.844,187.9886,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,22,3266.412,7105.881,192.0718,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,23,3242.702,7118.664,196.0163,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,24,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,25,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_quest_end WHERE id = 308;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(308,0,0,0,0,0,0,0,2000000729,0,0,0,0,0,0,0,''),
(308,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag removed'),
(308,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 2:waypoint'),
(308,12,9,35875,55,0,0,0,0,0,0,0,-5607.24,-547.934,392.985,0.471239,''),
(308,23,0,0,0,0,0,0,2000000092,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_quest_end WHERE id = 7642;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7642,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag removed'),
(7642,2,0,0,0,0,0,0,2000000012,0,0,0,0,0,0,0,''),
(7642,4,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 2:waypoint'),
(7642,105,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag added');
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,0,0,0,0,0,0,2000000579,0,0,0,0,0,0,0,''),
(10639,3,23,21867,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10639,5,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,8,0,0,0,21872,40,0,2000001170,0,0,0,0,0,0,0,''),
(10639,9,22,90,0x01,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,23,21797,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,1,18,0,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000000888,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,0,0,0,0,0,2000000889,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(40214, 3967, 11013, 0, 0, 0, 0, 0, 2, 1),
(40214, 3967, 11013, 1, 0, 0, 0, 0, 2, 1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1700803 AND delay IN (26,27); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1700803,26,14,35996,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1700803,27,31,21052,30,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_movement WHERE id = 153301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(153301,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(153301,175,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 1373;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1373,1,-5601.64,-541.38,392.42,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,2,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,3,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,4,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,5,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,6,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,7,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,8,-5603.67,-529.91,399.65,20000,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,9,-5603.67,-529.91,399.65,0,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,10,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,11,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,12,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,13,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,14,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,15,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,16,-5601.64,-541.38,392.42,1000,137301,0,0,0,0,0,0,0,0,0,0,0),
(1373,17,-5605.96,-544.451,392.43,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,18,-5605.96,-544.451,392.43,2000,137302,0,0,0,0,0,0,0,0,0.977384,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (137301,137302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137301,0,0,0,0,0,0,0,2000000730,0,0,0,0,0,0,0,''),
(137302,0,0,0,0,0,0,0,2000000731,0,0,0,0,0,0,0,''),
(137302,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag added'),
(137302,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 0:idle');
DELETE FROM creature_movement_template WHERE entry = 1416;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1416,1,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,0,3.72,0,0),
(1416,2,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0,5,0,0),
(1416,3,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,0,3.92,0,0),
(1416,4,-8422.25,618.12,95.46,10000,141601,0,0,0,0,0,0,0,0,3.2,0,0), 
(1416,5,-8421.99,617.93,95.45,9000,141602,0,0,0,0,0,0,0,0,5.34,0,0), 
(1416,6,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,0,1.98295,0,0),
(1416,7,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0,0.798564,0,0),
(1416,8,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,0,6.03867,0,0),
(1416,9,-8387,685.202,95.356,0,0,0,0,0,0,0,0,0,0,2.47925,0,0),
(1416,10,-8387,685.202,95.356,2000,141603,0,0,0,0,0,0,0,0,2.47925,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (141601,141602,141603); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141601,9,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,9,0,0,0,0,0,0,2000000011,0,0,0,0,0,0,0,''),
(141603,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 0:idle');
DELETE FROM creature_movement_template WHERE entry = 5042;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5042,1,-8759.62,812.343,97.635,0,0,0,0,0,0,0,0,0,0,3.86606,0,0),
(5042,2,-8761.61,810.579,97.635,0,0,0,0,0,0,0,0,0,0,2.0785,0,0),
(5042,3,-8762.09,811.25,97.635,15000,141601,0,0,0,0,0,0,0,0,2.08714,0,0),
(5042,4,-8765.12,809.343,97.635,0,0,0,0,0,0,0,0,0,0,2.33218,0,0),
(5042,5,-8768.82,813.976,97.635,0,0,0,0,0,0,0,0,0,0,0.817934,0,0),
(5042,6,-8765.6,816.682,97.635,0,0,0,0,0,0,0,0,0,0,5.0206,0,0),
(5042,7,-8765.49,816.11,97.635,15000,0,0,0,0,0,0,0,0,0,4.90279,0,0),
(5042,8,-8766.14,815.698,97.635,0,0,0,0,0,0,0,0,0,0,3.76789,0,0),
(5042,9,-8762.85,818.44,97.635,0,0,0,0,0,0,0,0,0,0,6.00235,0,0),
(5042,10,-8757.2,817.107,97.635,0,0,0,0,0,0,0,0,0,0,5.2413,0,0),
(5042,11,-8755.51,815.287,97.635,0,0,0,0,0,0,0,0,0,0,5.48793,0,0),
(5042,12,-8755.65,815.128,97.635,15000,0,0,0,0,0,0,0,0,0,4.32318,0,0),
(5042,13,-8755.62,815.616,97.635,0,0,0,0,0,0,0,0,0,0,2.83609,0,0),
(5042,14,-8766.1,820.151,97.635,0,0,0,0,0,0,0,0,0,0,3.84219,0,0),
(5042,15,-8766.37,820.027,97.635,15000,141601,0,0,0,0,0,0,0,0,3.58301,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 504201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,5,0,0,0,0,0,0,2000000680,2000000681,2000000682,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 19543;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19543,1,2236.11,2320.3,92.4652,0,1954301,0,0,0,0,0,0,0,0,3.97722,0,0),
(19543,2,2229.81,2315.17,90.2113,0,0,0,0,0,0,0,0,0,0,4.19949,0,0),
(19543,3,2229.04,2313.74,89.7226,11000,1954303,0,0,0,0,0,0,0,0,4.20892,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954301 AND 1954303;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954301,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954302,0,22,1810,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954303,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954303,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954303,8,0,0,0,0,0,0,2000000820,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 19544;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19544,1,2198.5,2333.17,89.213,1000,1954401,0,0,0,0,0,0,0,0,2.33355,0,0),
(19544,2,2194.71,2339.86,90.392,2000,0,0,0,0,0,0,0,0,0,2.33197,0,0),
(19544,3,2194.71,2339.86,90.392,17000,1954403,0,0,0,0,0,0,0,0,3.89963,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954401 AND 1954403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954401,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954402,0,22,1811,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954403,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954403,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954403,8,0,0,0,0,0,0,2000000821,0,0,0,0,0,0,0,''),
(1954403,13,0,0,0,0,0,0,2000000822,0,0,0,0,0,0,0,''),
(1954403,13,23,19008,0,0,0,0x08,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 19545;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19545,1,2212.27,2399.45,108.288,0,1954501,0,0,0,0,0,0,0,0,2.13592,0,0),
(19545,2,2203.2,2411.26,108.721,0,0,0,0,0,0,0,0,0,0,2.35263,0,0),
(19545,3,2203.2,2411.26,108.721,13000,1954503,0,0,0,0,0,0,0,0,2.35263,0,0),
(19545,4,2203.85,2410.99,108.81,5000,1954504,0,0,0,0,0,0,0,0,5.34107,0,0),
(19545,5,2203.85,2410.99,108.81,3000,0,0,0,0,0,0,10,0,0,5.34107,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954501 AND 1954504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954501,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954502,0,22,1809,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954503,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954503,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954503,9,0,0,0,0,0,0,2000000819,0,0,0,0,0,0,0,''),
(1954503,9,23,19005,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1954504,3,1,10,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 19546;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19546,1,2236.71,2392.84,112.165,1000,1954601,0,0,0,0,0,0,0,0,0.576619,0,0),
(19546,2,2238.63,2393.47,112.776,0,0,0,0,0,0,0,0,0,0,5.83721,0,0),
(19546,3,2240.88,2391.2,112.802,13000,1954603,0,0,0,0,0,0,0,0,4.93637,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954601 AND 1954603;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954601,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954602,0,22,1808,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954603,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954603,4,0,0,0,0,0,0,2000000823,0,0,0,0,0,0,0,''),
(1954603,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 21500;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21500,1,-3342.87,2941.55,169.88,5000,0,0,0,0,0,0,0,0,0,2.50724,0,0),
(21500,2,-3348.61,2968.61,170.043,0,0,0,0,0,0,0,0,0,0,2.37111,0,0),
(21500,3,-3371.9,2990.27,169.947,10000,0,0,0,0,0,0,0,0,0,2.59685,0,0),
(21500,4,-3380.8,2998.32,170.333,0,0,0,0,0,0,0,0,0,0,3.14427,0,0),
(21500,5,-3421.18,2996.89,170.164,0,0,0,0,0,0,0,0,0,0,3.95166,0,0),
(21500,6,-3431.01,2985.65,170.578,0,0,0,0,0,0,0,0,0,0,4.80067,0,0),
(21500,7,-3431.16,2976.08,170.543,10000,0,0,0,0,0,0,0,0,0,4.69778,0,0),
(21500,8,-3431.63,2961.85,170.481,0,0,0,0,0,0,0,0,0,0,6.00388,0,0),
(21500,9,-3401.55,2956.34,169.881,0,0,0,0,0,0,0,0,0,0,5.62817,0,0),
(21500,10,-3391.49,2941.6,169.879,10000,0,0,0,0,0,0,0,0,0,5.30381,0,0),
(21500,11,-3342.87,2941.55,169.88,9000,2150001,0,0,0,0,0,0,0,0,2.50724,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150001,6,1,15,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_linking_template WHERE entry IN (33988,33983,33966,33985,33991,33136);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33988, 603, 33288, 4096, 0),
(33983, 603, 33288, 4096, 0),
(33966, 603, 33288, 4096, 0),
(33985, 603, 33288, 4096, 0),
(33991, 603, 33288, 4096, 0),
(33136, 603, 33280, 8192, 0);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 34072;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags,condition_id) VALUES
(34072, 0, 0, 0, 0, 0, 0);
DELETE FROM spell_script_target WHERE entry IN (45863);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45863,1,24771,0);
DELETE FROM creature_linking_template WHERE entry IN (31832, 31701);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(31832, 571, 31833, 131, 12),
(31701, 571, 31737, 131, 12);
DELETE FROM creature_linking_template WHERE entry IN (8421, 8391);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(8421, 0, 8400, 3, 50),
(8391, 0, 8400, 3, 50);
DELETE FROM creature_linking_template WHERE entry IN (17367,17368,17369);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(17367, 532, 15689, 4112, 0),
(17368, 532, 15689, 4112, 0),
(17369, 532, 15689, 4112, 0);
DELETE FROM spell_script_target WHERE entry = 38866;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(38866,1,22331);
DELETE FROM spell_script_target WHERE entry = 37134;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(37134,1,21316);
DELETE FROM spell_template WHERE id = 33242;
INSERT INTO `spell_template` (`id`, `attr`, `attr_ex`, `attr_ex2`, `attr_ex3`, `proc_flags`, `proc_chance`, `duration_index`, `effect0`, `effect0_implicit_target_a`, `effect0_implicit_target_b`, `effect0_radius_idx`, `effect0_apply_aura_name`, `effect0_misc_value`, `effect0_misc_value_b`, `effect0_trigger_spell`, `comments`) VALUES
('33242','384','0','4','0','0','101','21','28','18','0','7','0','19259','64','0','summon Infernal Invader');
UPDATE creature_template SET MovementType = 2 WHERE entry = 19259;
DELETE FROM `creature` WHERE `id` = 19259;
DELETE FROM creature_movement_template WHERE entry = 19259;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19259,1,67.6326,2535.33,64.2527,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT IGNORE INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) values (36327,1,21186,0);
DELETE FROM spell_script_target WHERE entry IN (64069,63882,63886,64466,64465,65206,64172,65238,64173,63037,64063,64184);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(64069, 1, 33288, 0),
(63882, 1, 33882, 0),
(63886, 1, 33882, 0),
(64465, 1, 33988, 0),
(64466, 1, 33288, 0),
(65206, 1, 33983, 0),
(65206, 1, 33985, 0),
(65206, 1, 33966, 0),
(64172, 1, 33988, 0),
(65238, 1, 33983, 0),
(65238, 1, 33985, 0),
(65238, 1, 33966, 0),
(65238, 1, 33288, 0),
(65238, 1, 33134, 0),
(64173, 1, 33983, 0),
(64173, 1, 33985, 0),
(64173, 1, 33966, 0),
(64173, 1, 33288, 0),
(64173, 1, 33134, 0),
(63037, 1, 33442, 0),
(64063, 1, 33437, 0),
(64184, 1, 33288, 0);
DELETE FROM creature_template_spells WHERE entry IN (32227, 31884);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4, spell5, spell6, spell7, spell8) VALUES
(32227,59880, 0, 0, 0, 0, 0, 0, 0),
(31884,59880, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_linking_template WHERE entry = 22331;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(22331,530,11980,17,100);
UPDATE creature_template SET movementType = 0 WHERE entry = 22331;
UPDATE creature_template SET movementType = 0, DynamicFlags = 8, UnitFlags = 33554432 WHERE entry = 22336;
UPDATE creature_template SET FactionAlliance = 1840, FactionHorde = 1840, movementType = 0, InhabitType = 5, UnitFlags = 33555200 WHERE entry = 22332;
DELETE FROM creature_linking_template WHERE entry = 18969;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18969,530,18972,1,100);
DELETE FROM creature_linking_template WHERE entry = 18966;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18966,530,18986,1,100);
DELETE FROM creature_linking_template WHERE entry = 18971;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18971,530,18950,1,100);
DELETE FROM creature_linking_template WHERE entry = 18949;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18949,530,18948,1,100);
DELETE FROM creature_linking_template WHERE entry IN (2331,3504);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(2331,0,2330,656,20),
(3504,0,2330,656,20);
DELETE FROM creature_linking_template WHERE entry IN (1414,1415);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1414,0,1413,656,30),
(1415,0,1413,656,30);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (11673,12101);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('67401','674','4','0','100','0','0','0','0','0','11','7978','1','1','0','0','0','0','0','0','0','0','Venture Co Strip Miner - Cast Throw Dynamite'),
('67402','674','0','0','100','1','8000','14000','12000','18000','11','8800','4','0','0','0','0','0','0','0','0','0','Venture Co Strip Miner - Cast Dynamite'),
('67403','674','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Venture Co Strip Miner - Flee at 15% HP'),
('1165801','11658','11','0','100','2','0','0','0','0','11','18943','0','2','0','0','0','0','0','0','0','0','Molten Giant - Double Attack'),
('1165802','11658','9','0','100','3','0','10','6000','9000','11','18945','4','1','0','0','0','0','0','0','0','0','Molten Giant - Cast Knock Away'),
('1165803','11658','0','0','100','3','6000','10000','7000','10000','11','18944','0','0','0','0','0','0','0','0','0','0','Molten Giant - Cast Smash'),
('1165901','11659','11','0','100','2','0','0','0','0','11','18943','0','2','0','0','0','0','0','0','0','0','Molten Destroyer - Double Attack'),
('1165902','11659','9','0','100','3','0','10','7000','10000','11','20276','4','0','0','0','0','0','0','0','0','0','Molten Destroyer - Cast Knockdown'),
('1165903','11659','0','0','100','3','9000','12000','8000','11000','11','19129','0','1','0','0','0','0','0','0','0','0','Molten Destroyer - Cast Massive Tremor'),
('1166501','11665','11','0','100','2','0','0','0','0','11','19194','0','2','11','19195','0','2','0','0','0','0','Annihilator - Double Attack + Hate to 90%'),
('1166701','11667','11','0','100','2','0','0','0','0','11','19626','0','2','0','0','0','0','0','0','0','0','Flameguard - Fire Shield'),
('1166702','11667','9','0','100','3','0','18','6000','9000','11','19630','0','0','0','0','0','0','0','0','0','0','Flameguard - Cast Cone of Fire'),
('1166703','11667','0','0','100','3','5000','8000','7000','11000','11','19631','0','0','0','0','0','0','0','0','0','0','Flameguard - Cast Melt Armor'),
('1166801','11668','11','0','100','2','0','0','0','0','11','19396','0','2','0','0','0','0','0','0','0','0','Firelord - Incinerate'),
('1166802','11668','0','0','100','3','4000','6000','2000','4000','11','19393','4','32','0','0','0','0','0','0','0','0','Firelord - Soul Burn'),
('1166803','11668','0','0','100','3','10000','15000','15000','20000','11','19392','0','1','0','0','0','0','0','0','0','0','Firelord - Summon Lava Spawn'),
('1207601','12076','11','0','100','2','0','0','0','0','11','19640','0','2','0','0','0','0','0','0','0','0','Lava Elemental - Pummel'),
('1207602','12076','0','0','100','3','6000','9000','9000','14000','11','19641','0','0','0','0','0','0','0','0','0','0','Lava Elemental - Cast Pyroclast Barrage'),
('1210001','12100','11','0','100','2','0','0','0','0','11','12787','0','2','0','0','0','0','0','0','0','0','Lava Reaver - Thrash'),
('1210002','12100','9','0','100','3','0','5','5000','7000','11','19644','1','0','0','0','0','0','0','0','0','0','Lava Reaver - Cast Strike'),
('1210003','12100','9','0','100','3','8000','11000','12000','15000','11','19642','4','1','0','0','0','0','0','0','0','0','Lava Reaver - Cast Cleave'),
('1210101','12101','0','0','100','3','0','1000','12000','15000','11','19196','4','0','0','0','0','0','0','0','0','0','Lava Surger - Surge'),
('1214301','12143','11','0','100','2','0','0','0','0','11','19818','0','2','11','21857','0','2','0','0','0','0','Son of Flame - Double Attack + Fire Shield'),
('1226501','12265','0','0','100','3','0','1000','3000','3000','11','19391','1','0','0','0','0','0','0','0','0','0','Lava Spawn - Fireball'),
('1226502','12265','0','0','100','2','30000','30000','0','0','1','-1320','0','0','11','19569','0','2','0','0','0','0','Lava Spawn - Emote + Split1'),
('1226503','12265','17','0','100','2','12265','0','0','0','11','19570','0','2','41','0','0','0','0','0','0','0','Lava Spawn - Split2 + Despawn'),
('1167301','11673','11','0','100','2','0','0','0','0','11','18950','0','2','0','0','0','0','0','0','0','0','Ancient Core Hound - Invisibility and Stealth Detection'),
('1167302','11673','4','0','100','34','0','0','0','0','31','0','5','0','0','0','0','0','0','0','0','0','Ancient Core Hound - Set random phase on Aggro'),
('1167303','11673','0','0','100','3','1000','1000','1000','1000','11','19319','1','0','0','0','0','0','0','0','0','0','Ancient Core Hound - Vicious Bite'),
('1167304','11673','0','0','100','3','8000','12000','9000','14000','11','19272','1','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Lava Breath'),
('1167305','11673','0','62','100','3','5000','10000','8000','12000','11','19364','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Ground Stomp (Phase 0)'),
('1167306','11673','0','61','100','3','9000','14000','17000','24000','11','19365','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Ancient Dread (Phase 1)'),
('1167307','11673','0','59','100','3','10000','17000','13000','18000','11','19369','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Ancient Despair (Phase 2)'),
('1167308','11673','0','55','100','3','11000','16000','13000','18000','11','19366','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Cauterizing Flames (Phase 3)'),
('1167309','11673','0','47','100','3','7000','11000','14000','18000','11','19367','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Withering Heat (Phase 4)'),
('1167310','11673','0','31','100','3','6000','10000','14000','19000','11','19372','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Ancient Hysteria (Phase 5)');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry in (12143,674);
DELETE FROM creature_movement WHERE id = 77878;
UPDATE creature_template SET MovementType = 2 WHERE entry = 20159;
DELETE FROM creature_movement_template WHERE entry = 20159;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(20159,1,-689.583,4167.8,58.5228,1000,0,0,0,0,0,0,0,0,0,5.0053,0,0),(20159,2,-693.036,4187.63,57.0026,0,0,0,0,0,0,0,0,0,0,1.48198,0,0),(20159,3,-686.684,4207.12,56.9095,0,0,0,0,0,0,0,0,0,0,0.657309,0,0),
(20159,4,-673.93,4220,56.0948,0,0,0,0,0,0,0,0,0,0,0,0,0),(20159,5,-624.874,4218.4,50.713,0,0,0,0,0,0,0,0,0,0,0.10753,0,0),(20159,6,-596.977,4224.52,48.6696,0,0,0,0,0,0,0,0,0,0,6.15902,0,0),
(20159,7,-576.122,4218.94,48.58,0,0,0,0,0,0,0,0,0,0,5.54249,0,0),(20159,8,-553.78,4199.66,46.1163,0,0,0,0,0,0,0,0,0,0,4.98093,0,0),(20159,9,-519.57,4119.03,47.3006,0,0,0,0,0,0,0,0,0,0,5.29901,0,0),
(20159,10,-485.123,4058.18,53.734,0,0,0,0,0,0,0,0,0,0,5.08696,0,0),(20159,11,-478.09,3999.92,57.6679,0,0,0,0,0,0,0,0,0,0,4.50577,0,0),(20159,12,-496.692,3932.76,57.9235,0,0,0,0,0,0,0,0,0,0,4.62357,0,0),
(20159,13,-493.247,3891.55,58.318,0,0,0,0,0,0,0,0,0,0,4.98093,0,0),(20159,14,-474.63,3861.86,58.288,0,0,0,0,0,0,0,0,0,0,6.17474,0,0),(20159,15,-450.394,3863.51,59.0796,0,0,0,0,0,0,0,0,0,0,0.484525,0,0),
(20159,16,-349.7,3907.2,69.8351,0,0,0,0,0,0,0,0,0,0,0.614116,0,0),(20159,17,-279.334,3999.36,95.9918,0,0,0,0,0,0,0,0,0,0,0.614116,0,0),(20159,18,-232.732,4117.03,97.6089,0,0,0,0,0,0,0,0,0,0,1.55267,0,0),
(20159,19,-202.878,4449.16,42.317,0,0,0,0,0,0,0,0,0,0,1.55267,0,0),(20159,20,-242.425,4671.69,13.1567,0,0,0,0,0,0,0,0,0,0,1.55267,0,0),(20159,21,-238.807,4959.8,48.0196,0,0,0,0,0,0,0,0,0,0,1.55267,0,0),
(20159,22,-253.257,5040.5,65.242,0,0,0,0,0,0,0,0,0,0,1.29192,0,0),(20159,23,-249.016,5098.27,79.0187,0,0,0,0,0,0,0,0,0,0,1.1639,0,0),(20159,24,-236.775,5118.65,80.6934,0,0,0,0,0,0,0,0,0,0,1.1639,0,0),
(20159,25,-240.258,5160.67,82.8653,0,0,0,0,0,0,0,0,0,0,1.76865,0,0),(20159,26,-264.781,5218.37,71.2915,0,0,0,0,0,0,0,0,0,0,1.76865,0,0),(20159,27,-240.832,5165.19,82.9734,0,0,0,0,0,0,0,0,0,0,4.69425,0,0),
(20159,28,-235.967,5118.04,80.8555,0,0,0,0,0,0,0,0,0,0,4.25443,0,0),(20159,29,-250.706,5090.25,76.6508,0,0,0,0,0,0,0,0,0,0,4.39188,0,0),(20159,30,-237.145,4591.76,21.3237,0,0,0,0,0,0,0,0,0,0,4.49398,0,0),
(20159,31,-205.064,4496.58,32.8833,0,0,0,0,0,0,0,0,0,0,4.81599,0,0),(20159,32,-222.911,4135.43,96.5037,0,0,0,0,0,0,0,0,0,0,4.23479,0,0),(20159,33,-271.347,4011.59,98.3579,0,0,0,0,0,0,0,0,0,0,4.12876,0,0),
(20159,34,-335.207,3913.54,73.2693,0,0,0,0,0,0,0,0,0,0,3.64574,0,0),(20159,35,-463.987,3857.78,57.9562,0,0,0,0,0,0,0,0,0,0,2.99386,0,0),(20159,36,-484.733,3870.49,59.5534,0,0,0,0,0,0,0,0,0,0,2.11029,0,0),
(20159,37,-496.964,3917.13,57.8782,0,0,0,0,0,0,0,0,0,0,1.56837,0,0),(20159,38,-478.162,4003.4,57.2783,0,0,0,0,0,0,0,0,0,0,1.56837,0,0),(20159,39,-481.994,4050.11,54.1059,0,0,0,0,0,0,0,0,0,0,1.91,0,0),
(20159,40,-559.431,4206.77,47.1758,0,0,0,0,0,0,0,0,0,0,2.45586,0,0),(20159,41,-587.111,4223.03,48.9446,0,0,0,0,0,0,0,0,0,0,2.95459,0,0),(20159,42,-625.306,4216.87,50.828,0,0,0,0,0,0,0,0,0,0,2.95459,0,0),
(20159,43,-674.66,4220.79,56.2164,0,0,0,0,0,0,0,0,0,0,3.53186,0,0),(20159,44,-691.373,4198.99,56.9174,0,0,0,0,0,0,0,0,0,0,4.39972,0,0),(20159,45,-689.993,4167.72,58.5173,0,0,0,0,0,0,0,0,0,0,4.76493,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 8081;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8081,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8081,3,0,0,0,0,0,0,2000000490,0,0,0,0,0,0,0,''),
(8081,6,22,17,0x02,0,0,0,0,0,0,0,0,0,0,0,'Faction change'),
(8081,8,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_quest_end WHERE id IN (112, 114);
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(112, 0, 0, 0, 0, 0, 0, 0, 2000000099, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Initial Say'),
(112, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'NpcFlag removed'),
(112, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.45219, 'William Pestle - Turn To Face Bookshelf'),
(112, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Emote Working on Bookshelf'),
(112, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Stop Emote'),
(112, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98451, 'William Pestle - Turn to Face Original Direction'),
(112, 6, 0, 0, 0, 0, 0, 0, 2000000094, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Final Say'),
(112, 7, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'NpcFlag added'),
(114, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.39307, 'Maybell Maclure - Turn To Face Wall'),
(114, 2, 0, 0, 0, 0, 0, 0, 2000001205, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - First Say'),
(114, 4, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - Emote Drinking Vial'),
(114, 8, 18, 0, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - Despawn');
DELETE FROM db_script_string WHERE entry = 2000001205;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001205, 'Here goes nothing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
UPDATE creature SET spawntimesecs = 20 WHERE id = 251;
UPDATE quest_template SET CompleteScript = 114 WHERE Entry = 114;
DELETE FROM dbscripts_on_event WHERE id = 2313;
INSERT INTO dbscripts_on_event  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2313,1,10,7411,300000,0,0,0,0,0,0,0,9639.5,2528.97,1331.72,5.28395,'quest 2520');
UPDATE creature_template SET MovementType = 2 WHERE entry = 7411;
DELETE FROM creature_movement_template WHERE entry = 7411;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(7411,1,9642.47,2523.25,1331.54,0,0,0,0,0,0,0,0,0,0,4.70163,0,0),
(7411,2,9640.32,2517.43,1331.57,0,0,0,0,0,0,0,0,0,0,4.00734,0,0),
(7411,3,9635.62,2514.35,1331.4,0,0,0,0,0,0,0,0,0,0,3.21959,0,0),
(7411,4,9630.91,2515.59,1331.72,0,0,0,0,0,0,0,0,0,0,2.56535,0,0),
(7411,5,9626.52,2520.1,1331.73,0,0,0,0,0,0,0,0,0,0,1.9496,0,0),
(7411,6,9625.02,2526.36,1331.61,0,0,0,0,0,0,0,0,0,0,1.20975,0,0),
(7411,7,9630.56,2532.58,1331.39,0,0,0,0,0,0,0,0,0,0,0.604212,0,0),
(7411,8,9636.59,2532.65,1331.73,0,0,0,0,0,0,0,0,0,0,5.88602,0,0),
(7411,9,9640.05,2529.06,1331.77,3000,741101,0,0,0,0,0,0,0,0,5.3818,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 741101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(741101,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
UPDATE quest_template SET OfferRewardText = 'Greetings young $C, I\'m glad to see you ready and eager to learn about the curing of poisons.$B$BWhile most druids in the past were put through pre-planned trials, your work will involve no such thing. There has been a rash of animal poisonings in Auberdine, and the village there has been unable to cure it. To that end, a representative there has asked Moonglade for aid and we are sending you there to aid them. This is no exercise - the work you\'ll do is quite real. Bear this in mind.' WHERE entry = 6121;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(58378, 16959, 530, 1, 1, 0, 0, -306.171, 1499.76, 31.8909, 2.96873, 300, 0, 0, 27945, 3155, 0, 2),
(58388, 16959, 530, 1, 1, 0, 0, -172.334, 1505.05, 27.1644, 2.39654, 300, 0, 0, 27945, 3155, 0, 2);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (58378,58388);
DELETE FROM creature_movement WHERE id IN (58378,58388);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(58378,1,-323.527,1504.12,33.9252,0,0,0,0,0,0,0,0,0,0,1.99358,0,0),(58378,2,-330.577,1518.24,37.4233,0,0,0,0,0,0,0,0,0,0,1.44851,0,0),(58378,3,-328.461,1534.86,41.7774,0,0,0,0,0,0,0,0,0,0,1.05581,0,0),
(58378,4,-318.088,1547.75,41.9369,0,0,0,0,0,0,0,0,0,0,0.4809,0,0),(58378,5,-297.698,1553.57,38.8787,0,0,0,0,0,0,0,0,0,0,0.41257,0,0),(58378,6,-285.704,1560.12,37.6612,0,0,0,0,0,0,0,0,0,0,1.14299,0,0),
(58378,7,-284.294,1569.71,39.2983,0,0,0,0,0,0,0,0,0,0,2.02813,0,0),(58378,8,-296.783,1577.63,43.7813,0,0,0,0,0,0,0,0,0,0,2.82688,0,0),(58378,9,-313.325,1574,47.7174,0,0,0,0,0,0,0,0,0,0,3.7273,0,0),
(58378,10,-325.579,1560.42,46.902,0,0,0,0,0,0,0,0,0,0,4.23388,0,0),(58378,11,-332.434,1540.82,43.8767,0,0,0,0,0,0,0,0,0,0,4.58652,0,0),(58378,12,-334.572,1520.35,38.2739,0,0,0,0,0,0,0,0,0,0,4.80721,0,0),
(58378,13,-325.434,1502.2,33.6747,0,0,0,0,0,0,0,0,0,0,5.59652,0,0),(58378,14,-311.298,1489.55,30.5442,0,0,0,0,0,0,0,0,0,0,5.89104,0,0),(58378,15,-291.215,1486.19,28.0306,0,0,0,0,0,0,0,0,0,0,0.0594546,0,0),
(58378,16,-279.277,1488.25,27.0881,0,0,0,0,0,0,0,0,0,0,0.380683,0,0),(58378,17,-272.568,1492.31,26.443,0,0,0,0,0,0,0,0,0,0,1.09463,0,0),(58378,18,-272.052,1500.23,27.7578,0,0,0,0,0,0,0,0,0,0,1.81249,0,0),
(58378,19,-276.87,1505.09,29.066,0,0,0,0,0,0,0,0,0,0,2.74319,0,0),(58378,20,-285.793,1504.62,29.8596,0,0,0,0,0,0,0,0,0,0,3.3558,0,0),(58378,21,-293.821,1496.54,29.8149,0,0,0,0,0,0,0,0,0,0,3.06598,0,0),
(58378,22,-305.978,1499.34,31.68,0,0,0,0,0,0,0,0,0,0,2.82251,0,0),(58388,1,-181.884,1532.15,29.6203,0,0,0,0,0,0,0,0,0,0,1.81292,0,0),(58388,2,-171.958,1503.01,26.9809,0,0,0,0,0,0,0,0,0,0,5.18621,0,0),
(58388,3,-158.915,1487.57,26.6283,0,0,0,0,0,0,0,0,0,0,5.50507,0,0),(58388,4,-137.304,1475.64,26.2033,0,0,0,0,0,0,0,0,0,0,5.92603,0,0),(58388,5,-122.424,1476.88,26.5783,0,0,0,0,0,0,0,0,0,0,0.370122,0,0),
(58388,6,-116.089,1481.98,29.0019,0,0,0,0,0,0,0,0,0,0,0.996085,0,0),(58388,7,-106.426,1504.22,32.3395,0,0,0,0,0,0,0,0,0,0,1.01101,0,0),(58388,8,-101.499,1529.12,34.7616,0,0,0,0,0,0,0,0,0,0,1.47832,0,0),
(58388,9,-98.9696,1538.63,38.0054,0,0,0,0,0,0,0,0,0,0,1.41549,0,0),(58388,10,-92.0829,1554.42,41.4467,0,0,0,0,0,0,0,0,0,0,1.38207,0,0),(58388,11,-94.3617,1569.15,44.765,0,0,0,0,0,0,0,0,0,0,1.99076,0,0),
(58388,12,-101.038,1576.31,45.8974,0,0,0,0,0,0,0,0,0,0,2.50127,0,0),(58388,13,-122.664,1575,42.6959,0,0,0,0,0,0,0,0,0,0,3.13744,0,0),(58388,14,-153.603,1577.63,38.4126,0,0,0,0,0,0,0,0,0,0,2.58923,0,0),
(58388,15,-132.849,1584.64,43.1805,0,0,0,0,0,0,0,0,0,0,0.00998227,0,0),(58388,16,-113.376,1583.4,46.1522,0,0,0,0,0,0,0,0,0,0,5.93032,0,0),(58388,17,-100.754,1576.82,46.0942,0,0,0,0,0,0,0,0,0,0,5.59338,0,0),
(58388,18,-93.3234,1568.3,44.6706,0,0,0,0,0,0,0,0,0,0,5.04204,0,0),(58388,19,-91.5001,1554.54,41.5127,0,0,0,0,0,0,0,0,0,0,4.5284,0,0),(58388,20,-93.1,1536.02,37.0006,0,0,0,0,0,0,0,0,0,0,4.44593,0,0),
(58388,21,-96.5151,1526.82,33.6709,0,0,0,0,0,0,0,0,0,0,4.31634,0,0),(58388,22,-99.2641,1520.25,34.4914,0,0,0,0,0,0,0,0,0,0,4.31634,0,0),(58388,23,-115.688,1488.39,30.4987,0,0,0,0,0,0,0,0,0,0,3.93857,0,0),
(58388,24,-127.385,1477.06,26.5594,0,0,0,0,0,0,0,0,0,0,3.4367,0,0),(58388,25,-138.635,1474.09,25.9177,0,0,0,0,0,0,0,0,0,0,3.06992,0,0),(58388,26,-153.117,1480.54,26.1379,0,0,0,0,0,0,0,0,0,0,2.31201,0,0),
(58388,27,-172.138,1504.48,27.064,0,0,0,0,0,0,0,0,0,0,2.2429,0,0);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (184289,184290,184414,184415);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184289,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject'),
(184290,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject'),
(184414,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject'),
(184415,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(9377, 183816, 530, 1, 1, -418.627, 1847.49, 80.7808, 1.48097, 0, 0, 0.674647, 0.738141, -60, 100, 1),
(9375, 183816, 530, 1, 1, -545.259, 1781.17, 56.2263, 2.14675, 0, 0, 0.878817, 0.47716, -60, 100, 1),
(9374, 183816, 530, 1, 1, 147.018, 1717.34, 37.464, -0.942477, 0, 0, -0.45399, 0.891007, -60, 100, 1),
(9369, 183816, 530, 1, 1, -84.5415, 1881.74, 73.8264, 3.35296, 0, 0, 0.984807, 0.173652, -60, 100, 1);
UPDATE gameobject SET position_x = -144.4861, position_y = 1511.453, position_z = 29.58671, orientation = 3.028119, rotation0 = -0.04258156, rotation1 = -0.05868149, rotation2 = 0.9958963, rotation3 = 0.05416433 WHERE id = 183350; 
UPDATE gameobject SET position_x = -303.5573, position_y = 1526.004, position_z = 33.8859, orientation = -2.993238, rotation0 = -0.06276989, rotation1 = 0.0825901, rotation2 = -0.9922237, rotation3 = 0.06878129 WHERE id = 183351; 
UPDATE gameobject SET position_x = -418.401, position_y = 1848.877, position_z = 78.58884, orientation = 1.53589, rotation0 = 0.07789183, rotation1 = -0.1241655, rotation2 = 0.6839972, rotation3 = 0.7146074 WHERE id = 184414; 
UPDATE gameobject SET position_x = -548.9393, position_y = 1783.983, position_z = 56.2879, orientation = 2.652893, rotation0 = 0.1065927, rotation1 = -0.07565403, rotation2 = 0.9605389, rotation3 = 0.245519 WHERE id = 184415;
UPDATE gameobject SET position_x = -84.78993, position_y = 1881.726, position_z = 72.19016, orientation = 2.54818, rotation0 = 0.101759, rotation1 = 0.005214691, rotation2 = 0.9523001, rotation3 = 0.28765 WHERE id = 184290;
UPDATE gameobject SET position_x = 147.0052, position_y = 1718.116, position_z = 35.80159, orientation = 3.14126, rotation0 = 0.06085968, rotation1 = -0.07831287, rotation2 = 0.9950571, rotation3 = 0.004954683 WHERE id = 184289;
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(56813, 28567, 617, 1, 1, 0, 0, 1292.587, 790.2205, 7.19796, 3.054326, 300, 0, 0, 42, 0, 0, 0),
(56814, 28567, 617, 1, 1, 0, 0, 1369.977, 817.2882, 16.08718, 3.106686, 300, 0, 0, 42, 0, 0, 0),
(56815, 28567, 617, 1, 1, 0, 0, 1212.833, 765.3871, 16.09484, 0.0, 300, 0, 0, 42, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2141901 AND 2141904; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2141901,1,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''),
(2141901,3,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141902,4,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''),
(2141902,6,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141903,1,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''),
(2141903,3,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141904,4,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''),
(2141904,6,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s');
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(56816,21419,530,1,1,20577,0,-3281.24,2416.61,61.0348,1.92474,30,0,0,6326,0,0,2),
(56817,21419,530,1,1,20577,0,-3284.71,2448.13,64.5764,2.57989,30,0,0,6326,0,0,2),
(71276,21419,530,1,1,20577,0,-3249.14,2559.47,64.3195,4.85854,30,0,0,6326,0,0,2),
(71277,21419,530,1,1,20577,0,-3146.26,2350.15,59.31,0.82,30,0,0,6326,0,0,2),
(71284,21419,530,1,1,20577,0,-3211.75,2553.34,61.7269,5.99206,30,0,0,6326,0,0,2),
(71286,21419,530,1,1,20577,0,-3215.52,2582.65,63.6521,3.36233,30,0,0,6326,0,0,2),
(71287,21419,530,1,1,20577,0,-3149.07,2652.16,62.3524,1.09791,30,0,0,6326,0,0,2),
(71291,21419,530,1,1,20577,0,-3118.96,2685.17,60.0948,5.7209,30,0,0,6326,0,0,2),
(72626,21419,530,1,1,20577,0,-3149.35,2685.7,61.4335,1.70149,30,0,0,6326,0,0,2),
(72627,21419,530,1,1,20577,0,-3016.61,2750.28,70.4933,1.62316,30,0,0,6326,0,0,2),
(72646,21419,530,1,1,20577,0,-3056.41,2687.51,63.1477,5.80999,30,0,0,6326,0,0,2),
(72647,21419,530,1,1,20577,0,-3042.09,2749.99,69.3486,3.10776,30,0,0,6326,0,0,2),
(72648,21419,530,1,1,20577,0,-3022.26,2712.04,66.4497,3.49487,30,0,0,6326,0,0,2),
(72651,21419,530,1,1,20577,0,-2987.05,2714.73,69.3391,3.61302,30,0,0,6326,0,0,2),
(72653,21419,530,1,1,20577,0,-3019.95,2692.35,64.9556,4.77987,30,0,0,6326,0,0,2),
(72654,21419,530,1,1,20577,0,-4013.64,1983.89,91.9235,3.00984,30,0,0,6326,0,0,2),
(72655,21419,530,1,1,20577,0,-3916.59,1916.38,92.2323,3.97536,30,0,0,6326,0,0,2),
(72658,21419,530,1,1,20577,0,-3986.2,1949.37,94.6088,3.05842,30,0,0,6326,0,0,2),
(72683,21419,530,1,1,20577,0,-3984.77,1981.59,96.78,1.11,30,0,0,6326,0,0,2),
(72684,21419,530,1,1,20577,0,-3850.49,1982.87,95.26,2.33,30,0,0,6326,0,0,2),
(72687,21419,530,1,1,20577,0,-3847.89,1952.49,94.1589,2.72547,30,0,0,6326,0,0,2),
(72689,21419,530,1,1,20577,0,-3886.18,1984.3,98.3,3.04,30,0,0,6326,0,0,2),
(72691,21419,530,1,1,20577,0,-3949.72,1916.77,95.39,6.13,30,0,0,6326,0,0,2),
(72693,21419,530,1,1,20577,0,-3883.72,1946.14,98.4499,4.17084,30,0,0,6326,0,0,2),
(72694,21419,530,1,1,20577,0,-3917.07,1947.74,93.53,0.36,30,0,0,6326,0,0,2),
(72702,21419,530,1,1,20577,0,-3815.88,2023.09,93.75,4.78,30,0,0,6326,0,0,2),
(72720,21419,530,1,1,20577,0,-3821.13,2120.74,92.0849,3.8364,30,0,0,6326,0,0,2),
(72813,21419,530,1,1,20577,0,-3849,2115.38,95.1725,2.39329,30,0,0,6326,0,0,2),
(72818,21419,530,1,1,20577,0,-3817.68,2044.13,94.6227,1.56998,30,0,0,6326,0,0,2),
(72819,21419,530,1,1,20577,0,-3879.87,2012.63,95.3365,5.49429,30,0,0,6326,0,0,2),
(72822,21419,530,1,1,20577,0,-3249.06,2651.38,60.8545,5.34022,30,0,0,6326,0,0,2),
(72823,21419,530,1,1,20577,0,-3218.49,2649.44,63.2653,3.9241,30,0,0,6326,0,0,2),
(72826,21419,530,1,1,20577,0,-3117.82,2716.87,63.0454,0.050962,30,0,0,6326,0,0,2),
(72828,21419,530,1,1,20577,0,-3216.96,2616.12,62.8288,5.3974,30,0,0,6326,0,0,2),
(72907,21419,530,1,1,20577,0,-3253.62,2323.84,62.2317,5.70665,30,0,0,6326,0,0,2),
(72908,21419,530,1,1,20577,0,-3181.8,2316.44,63.31,6.13,30,0,0,6326,0,0,2),
(72914,21419,530,1,1,20577,0,-3215.87,2350.4,62.34,6.02,30,0,0,6326,0,0,2),
(72916,21419,530,1,1,20577,0,-3253.86,2381.16,62.47,0.51,30,0,0,6326,0,0,2),
(72920,21419,530,1,1,20577,0,-3212.24,2416.83,62.4066,3.0449,30,0,0,6326,0,0,2),
(72921,21419,530,1,1,20577,0,-3216.87,2517.24,63.1658,0.575763,30,0,0,6326,0,0,2),
(72939,21419,530,1,1,20577,0,-3247.42,2515.34,63.0471,4.55048,30,0,0,6326,0,0,2),
(72942,21419,530,1,1,20577,0,-3186.6,2482.22,62.6348,1.17725,30,0,0,6326,0,0,2),
(72946,21419,530,1,1,20577,0,-3149.82,2514.48,62.2887,5.54055,30,0,0,6326,0,0,2),
(72953,21419,530,1,1,20577,0,-3250.2,2583.78,61.6328,0.962609,30,0,0,6326,0,0,2),
(72954,21419,530,1,1,20577,0,-3186.76,2548.82,61.8554,0.892435,30,0,0,6326,0,0,2),
(72960,21419,530,1,1,20577,0,-3217.28,2484.21,57.89,0.47,30,0,0,6326,0,0,2),
(72961,21419,530,1,1,20577,0,-3254.84,2618.44,61.45,0.2,30,0,0,6326,0,0,2),
(72994,21419,530,1,1,20577,0,-3784.81,2286.66,83.0783,2.74718,30,0,0,6542,0,0,2),
(72995,21419,530,1,1,20577,0,-3816.42,2285.9,91.4079,0.0375435,30,0,0,6542,0,0,2),
(73015,21419,530,1,1,20577,0,-3848.72,2300.26,96.3976,4.24727,30,0,0,6542,0,0,2),
(73016,21419,530,1,1,20577,0,-3847.77,2218.69,93.8801,4.7028,30,0,0,6326,0,0,2),
(73021,21419,530,1,1,20577,0,-3849.34,2185.77,95.7345,1.94999,30,0,0,6326,0,0,2),
(73022,21419,530,1,1,20577,0,-3817.76,2219.59,91.8577,5.30308,30,0,0,6326,0,0,2),
(73033,21419,530,1,1,20577,0,-3817.89,2186.58,90.4282,4.72244,30,0,0,6542,0,0,2),
(73034,21419,530,1,1,20577,0,-3783.44,2249.07,86.5784,4.04307,30,0,0,6326,0,0,2),
(73035,21419,530,1,1,20577,0,-3786.38,2217.81,86.5859,2.04816,30,0,0,6542,0,0,2),
(73944,21419,530,1,1,20577,0,-3784.5,2184.19,81.3733,4.78919,30,0,0,6542,0,0,2),
(73948,21419,530,1,1,20577,0,-3786.1,2152.5,81.8705,2.4919,30,0,0,6326,0,0,2),
(73958,21419,530,1,1,20577,0,-3785.82,2083.22,87.6686,4.80097,30,0,0,6326,0,0,2),
(73960,21419,530,1,1,20577,0,-3783.75,2051.07,90.8064,1.65152,30,0,0,6326,0,0,2),
(73971,21419,530,1,1,20577,0,-3846.34,2019.34,95.0945,4.72635,30,0,0,6542,0,0,2),
(73987,21419,530,1,1,20577,0,-3784.7,1917.45,96.7852,1.54941,30,0,0,6542,0,0,2),
(73989,21419,530,1,1,20577,0,-3783.79,1946.7,93.7058,1.51014,30,0,0,6326,0,0,2),
(73992,21419,530,1,1,20577,0,-3756.44,1944.63,95.9784,3.68963,30,0,0,6326,0,0,2),
(73996,21419,530,1,1,20577,0,-3751.48,1983.8,88.7101,2.73537,30,0,0,6326,0,0,2),
(73999,21419,530,1,1,20577,0,-3719.93,1983.6,84.9934,2.87674,30,0,0,6542,0,0,2),
(74003,21419,530,1,1,20577,0,-3715.19,2079.73,79.8674,4.93449,30,0,0,6542,0,0,2),
(74007,21419,530,1,1,20577,0,-3716.08,2119.36,79.1584,1.53086,30,0,0,6542,0,0,2),
(74012,21419,530,1,1,20577,0,-3716.16,2149.15,78.6881,1.59262,30,0,0,6326,0,0,2),
(74017,21419,530,1,1,20577,0,-3719.69,2184.11,77.1836,1.86751,30,0,0,6542,0,0,2),
(74020,21419,530,1,1,20577,0,-3685.3,2183.46,76.2974,0.0178981,30,0,0,6542,0,0,2),
(74027,21419,530,1,1,20577,0,-3683.27,2153.68,77.2081,4.69102,30,0,0,6542,0,0,2),
(74029,21419,530,1,1,20577,0,-3685.26,2114.55,77.2785,4.52609,30,0,0,6542,0,0,2),
(74101,21419,530,1,1,20577,0,-3683.11,2082.65,79.0549,4.85596,30,0,0,6326,0,0,2),
(74107,21419,530,1,1,20577,0,-3652.89,2118.24,74.0999,4.19622,30,0,0,6542,0,0,2);
DELETE FROM creature_movement WHERE id IN
(56816,56817,71276,71277,71284,71286,71287,71291,72626,72627,72646,72647,72648,72651,72653,72654,72655,72658,72683,
72684,72687,72689,72691,72693,72694,72702,72720,72813,72818,72819,72822,72823,72826,72828,72907,72908,72914,72916,
72920,72921,72939,72942,72946,72953,72954,72960,72961,72994,72995,73015,73016,73021,73022,73033,73034,73035,73944,
73948,73958,73960,73971,73987,73989,73992,73996,73999,74003,74007,74012,74017,74020,74027,74029,74101,74107);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(72655,1,-3916.59,1916.38,92.2323,10000,2141904,0,0,0,0,0,0,0,0,3.97536,0,0),
(72683,1,-3984.77,1981.59,96.7819,10000,2141904,0,0,0,0,0,0,0,0,1.10935,0,0),
(72687,1,-3847.89,1952.49,94.1589,10000,2141904,0,0,0,0,0,0,0,0,2.72547,0,0),
(72691,1,-3949.72,1916.78,95.3962,10000,2141904,0,0,0,0,0,0,0,0,6.12805,0,0),
(72694,1,-3917.08,1947.75,93.5279,10000,2141904,0,0,0,0,0,0,0,0,0.367148,0,0),
(72720,1,-3821.13,2120.74,92.0849,10000,2141904,0,0,0,0,0,0,0,0,3.8364,0,0),
(72818,1,-3817.68,2044.13,94.6227,10000,2141904,0,0,0,0,0,0,0,0,1.56998,0,0),
(56816,1,-3281.24,2416.61,61.0348,10000,2141901,0,0,0,0,0,0,0,0,1.92474,0,0),
(71276,1,-3249.14,2559.47,64.3195,10000,2141901,0,0,0,0,0,0,0,0,4.85854,0,0),
(71284,1,-3211.75,2553.34,61.7269,10000,2141901,0,0,0,0,0,0,0,0,5.99206,0,0),
(71287,1,-3149.07,2652.16,62.3524,10000,2141901,0,0,0,0,0,0,0,0,1.09791,0,0),
(72626,1,-3149.35,2685.7,61.4335,10000,2141901,0,0,0,0,0,0,0,0,1.70149,0,0),
(72646,1,-3056.41,2687.51,63.1477,10000,2141901,0,0,0,0,0,0,0,0,5.80999,0,0),
(72648,1,-3022.26,2712.04,66.4497,10000,2141901,0,0,0,0,0,0,0,0,3.49487,0,0),
(72653,1,-3019.95,2692.35,64.9556,10000,2141901,0,0,0,0,0,0,0,0,4.77987,0,0),
(72823,1,-3218.49,2649.44,63.2653,10000,2141901,0,0,0,0,0,0,0,0,3.9241,0,0),
(72828,1,-3216.96,2616.12,62.8288,10000,2141901,0,0,0,0,0,0,0,0,5.3974,0,0),
(72908,1,-3181.8,2316.44,63.31,10000,2141901,0,0,0,0,0,0,0,0,6.13,0,0),
(72916,1,-3253.86,2381.16,62.47,10000,2141901,0,0,0,0,0,0,0,0,0.51,0,0),
(72921,1,-3216.87,2517.24,63.1658,10000,2141901,0,0,0,0,0,0,0,0,0.575763,0,0),
(72942,1,-3186.6,2482.22,62.6348,10000,2141901,0,0,0,0,0,0,0,0,1.17725,0,0),
(72953,1,-3250.2,2583.78,61.6328,10000,2141901,0,0,0,0,0,0,0,0,0.962609,0,0),
(72960,1,-3217.28,2484.21,57.89,10000,2141901,0,0,0,0,0,0,0,0,0.47,0,0),
(56817,1,-3284.71,2448.13,64.5764,10000,2141902,0,0,0,0,0,0,0,0,2.57989,0,0),
(71277,1,-3146.26,2350.15,59.31,10000,2141902,0,0,0,0,0,0,0,0,0.82,0,0),
(71286,1,-3215.52,2582.65,63.6521,10000,2141902,0,0,0,0,0,0,0,0,3.36233,0,0),
(71291,1,-3118.96,2685.17,60.0948,10000,2141902,0,0,0,0,0,0,0,0,5.7209,0,0),
(72627,1,-3016.61,2750.28,70.4933,10000,2141902,0,0,0,0,0,0,0,0,1.62316,0,0),
(72647,1,-3042.09,2749.99,69.3486,10000,2141902,0,0,0,0,0,0,0,0,3.10776,0,0),
(72651,1,-2987.05,2714.73,69.3391,10000,2141902,0,0,0,0,0,0,0,0,3.61302,0,0),
(72822,1,-3249.06,2651.38,60.8545,10000,2141902,0,0,0,0,0,0,0,0,5.34022,0,0),
(72826,1,-3117.82,2716.87,63.0454,10000,2141902,0,0,0,0,0,0,0,0,0.050962,0,0),
(72907,1,-3253.62,2323.84,62.2317,10000,2141902,0,0,0,0,0,0,0,0,5.70665,0,0),
(72914,1,-3215.87,2350.4,62.34,10000,2141902,0,0,0,0,0,0,0,0,6.02,0,0),
(72920,1,-3212.24,2416.83,62.4066,10000,2141902,0,0,0,0,0,0,0,0,3.0449,0,0),
(72939,1,-3247.42,2515.34,63.0471,10000,2141902,0,0,0,0,0,0,0,0,4.55048,0,0),
(72946,1,-3149.82,2514.48,62.2887,10000,2141902,0,0,0,0,0,0,0,0,5.54055,0,0),
(72954,1,-3186.76,2548.82,61.8554,10000,2141902,0,0,0,0,0,0,0,0,0.892435,0,0),
(72961,1,-3254.84,2618.44,61.45,10000,2141902,0,0,0,0,0,0,0,0,0.2,0,0),
(72654,1,-4013.64,1983.89,91.9235,10000,2141903,0,0,0,0,0,0,0,0,3.00984,0,0),
(72658,1,-3986.2,1949.37,94.6088,10000,2141903,0,0,0,0,0,0,0,0,3.05842,0,0),
(72684,1,-3850.49,1982.88,95.2666,10000,2141903,0,0,0,0,0,0,0,0,2.32593,0,0),
(72689,1,-3886.18,1984.3,98.3027,10000,2141903,0,0,0,0,0,0,0,0,3.0375,0,0),
(72693,1,-3883.72,1946.14,98.4499,10000,2141903,0,0,0,0,0,0,0,0,4.17084,0,0),
(72702,1,-3815.89,2023.09,93.7481,10000,2141903,0,0,0,0,0,0,0,0,4.78265,0,0),
(72813,1,-3849,2115.38,95.1725,10000,2141903,0,0,0,0,0,0,0,0,2.39329,0,0),
(72819,1,-3879.87,2012.63,95.3365,10000,2141903,0,0,0,0,0,0,0,0,5.49429,0,0),
(72994,1,-3784.81,2286.66,83.0783,10000,2141903,0,0,0,0,0,0,0,0,2.74718,0,0),
(73015,1,-3848.72,2250.26,96.3976,10000,2141903,0,0,0,0,0,0,0,0,4.24727,0,0),
(73021,1,-3849.34,2185.77,95.7345,10000,2141903,0,0,0,0,0,0,0,0,1.94999,0,0),
(73033,1,-3817.89,2186.58,90.4282,10000,2141903,0,0,0,0,0,0,0,0,4.72244,0,0),
(73035,1,-3786.38,2217.81,86.5859,10000,2141903,0,0,0,0,0,0,0,0,2.04816,0,0),
(73948,1,-3786.1,2152.5,81.8705,10000,2141903,0,0,0,0,0,0,0,0,2.4919,0,0),
(73960,1,-3783.75,2051.07,90.8064,10000,2141903,0,0,0,0,0,0,0,0,1.65152,0,0),
(73987,1,-3784.7,1917.45,96.7852,10000,2141903,0,0,0,0,0,0,0,0,1.54941,0,0),
(73992,1,-3756.44,1944.63,95.9784,10000,2141903,0,0,0,0,0,0,0,0,3.68963,0,0),
(73999,1,-3719.93,1983.6,84.9934,10000,2141903,0,0,0,0,0,0,0,0,2.87674,0,0),
(74007,1,-3716.08,2119.36,79.1584,10000,2141903,0,0,0,0,0,0,0,0,1.52586,0,0),
(74017,1,-3719.69,2184.11,77.1836,10000,2141903,0,0,0,0,0,0,0,0,1.86751,0,0),
(74027,1,-3683.27,2153.68,77.2081,10000,2141903,0,0,0,0,0,0,0,0,4.69102,0,0),
(74101,1,-3683.11,2082.65,79.0549,10000,2141903,0,0,0,0,0,0,0,0,4.85596,0,0),
(72995,1,-3816.42,2285.9,91.4079,10000,2141904,0,0,0,0,0,0,0,0,0.0375435,0,0),
(73016,1,-3847.77,2218.69,93.8801,10000,2141904,0,0,0,0,0,0,0,0,4.7028,0,0),
(73022,1,-3817.76,2219.59,91.8577,10000,2141904,0,0,0,0,0,0,0,0,5.25258,0,0),
(73034,1,-3783.44,2249.07,86.5784,10000,2141904,0,0,0,0,0,0,0,0,4.04307,0,0),
(73944,1,-3784.5,2184.19,81.3733,10000,2141904,0,0,0,0,0,0,0,0,4.78919,0,0),
(73958,1,-3785.82,2083.22,87.6686,10000,2141904,0,0,0,0,0,0,0,0,4.80097,0,0),
(73971,1,-3846.34,2019.34,95.0945,10000,2141904,0,0,0,0,0,0,0,0,4.72635,0,0),
(73989,1,-3783.79,1946.7,93.7058,10000,2141904,0,0,0,0,0,0,0,0,1.51014,0,0),
(73996,1,-3751.48,1983.8,88.7101,10000,2141904,0,0,0,0,0,0,0,0,2.73537,0,0),
(74003,1,-3715.19,2079.73,79.8674,10000,2141904,0,0,0,0,0,0,0,0,4.93449,0,0),
(74012,1,-3716.16,2149.15,78.6881,10000,2141904,0,0,0,0,0,0,0,0,1.59262,0,0),
(74020,1,-3685.3,2183.46,76.2974,10000,2141904,0,0,0,0,0,0,0,0,0.0178981,0,0),
(74029,1,-3685.26,2114.55,77.2785,10000,2141904,0,0,0,0,0,0,0,0,4.52609,0,0),
(74107,1,-3652.89,2118.24,74.0999,10000,2141904,0,0,0,0,0,0,0,0,4.19622,0,0);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (31282,11665,11667,11668,12076);
UPDATE creature_template SET AIName = '' WHERE Entry in (31282,11665);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1166701','11667','9','0','100','3','0','18','6000','9000','11','19630','0','0','0','0','0','0','0','0','0','0','Flameguard - Cast Cone of Fire'),
('1166702','11667','0','0','100','3','5000','8000','7000','11000','11','19631','0','0','0','0','0','0','0','0','0','0','Flameguard - Cast Melt Armor'),
('1166801','11668','0','0','100','3','4000','6000','2000','4000','11','19393','4','32','0','0','0','0','0','0','0','0','Firelord - Soul Burn'),
('1166802','11668','0','0','100','3','10000','15000','15000','20000','11','19392','0','1','0','0','0','0','0','0','0','0','Firelord - Summon Lava Spawn'),
('1207601','12076','0','0','100','3','6000','9000','9000','14000','11','19641','0','0','0','0','0','0','0','0','0','0','Lava Elemental - Cast Pyroclast Barrage');
UPDATE `creature` SET `position_x`='1390.215', `position_y`='35.21756', `position_z`='-62.19329', `orientation`='2.079669', `MovementType`='2' WHERE `id`= 2802;
DELETE FROM `creature_movement` WHERE `id`= 15453;
DELETE FROM `creature_movement_template` WHERE `entry`= 2802;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(2802, '01', '1378.640', '55.96495', '-62.27666', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '02', '1383.241', '83.34830', '-62.27637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '03', '1399.806', '97.16917', '-62.28856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '04', '1417.964', '141.0208', '-62.29459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '05', '1433.981', '149.9107', '-62.28405', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '06', '1447.694', '137.1492', '-62.29281', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '07', '1461.869', '120.9715', '-60.18844', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '08', '1464.949', '111.2182', '-60.18949', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '09', '1479.520', '98.09299', '-60.19012', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '10', '1484.867', '94.61426', '-62.24970', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '11', '1500.437', '81.32889', '-62.29831', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '12', '1481.725', '47.70671', '-62.29490', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '13', '1442.540', '36.23264', '-62.27830', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '14', '1416.399', '21.24002', '-62.27507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '15', '1405.658', '23.78299', '-62.27616', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2802, '16', '1387.197', '36.69661', '-62.27608', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='1533.843', `position_y`='202.2378', `position_z`='-62.18006', `orientation`='5.400798', `MovementType`='2' WHERE `id`= 5747;
DELETE FROM `creature_movement` WHERE `id`= 53197;
DELETE FROM `creature_movement_template` WHERE `entry`= 5747;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(5747, '01', '1542.791', '191.3619', '-62.18080', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '02', '1559.787', '178.5941', '-62.18031', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '03', '1577.523', '172.1603', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '04', '1587.420', '169.3764', '-62.17775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '05', '1594.174', '161.3339', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '06', '1594.491', '131.5768', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '07', '1592.605', '113.0221', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '08', '1582.281', '104.4307', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '09', '1563.744', '107.6496', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '10', '1547.055', '113.0844', '-62.14216', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '11', '1537.052', '122.4526', '-61.50877', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '12', '1532.863', '139.5267', '-62.17167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '13', '1521.765', '154.1877', '-62.16089', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '14', '1509.385', '165.7573', '-62.14750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '15', '1501.144', '174.2727', '-62.16182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '16', '1488.744', '180.8999', '-62.17804', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '17', '1474.736', '188.0014', '-62.18966', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '18', '1465.005', '201.3092', '-62.17617', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '19', '1462.536', '211.2530', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '20', '1461.918', '229.9350', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '21', '1474.278', '240.6842', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '22', '1514.806', '238.4358', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '23', '1525.648', '233.3281', '-62.17818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '24', '1526.560', '219.5792', '-62.17558', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5747, '25', '1531.405', '205.2021', '-62.17986', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='1415.262', `position_y`='127.1627', `position_z`='-62.20718', `orientation`='5.085003', `MovementType`='2' WHERE `id`=5744;
DELETE FROM `creature_movement` WHERE `id`=53196;
DELETE FROM `creature_movement_template` WHERE `entry`=5744;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(5744, '01', '1425.305', '101.4690', '-62.28652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '02', '1447.392', '72.06684', '-62.28137', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '03', '1463.838', '56.03592', '-62.29101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '04', '1492.961', '64.92709', '-62.29579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '05', '1508.147', '72.92220', '-62.30066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '06', '1518.455', '76.94629', '-62.29570', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '07', '1518.262', '82.08084', '-62.33875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '08', '1509.344', '87.64920', '-57.15322', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '09', '1508.419', '90.72157', '-57.11293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '10', '1515.074', '104.4576', '-50.89964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '11', '1524.594', '119.0230', '-57.15204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '12', '1521.995', '122.3141', '-57.15204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '13', '1514.910', '126.3855', '-60.77751', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '14', '1509.876', '134.5304', '-60.09520', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '15', '1502.532', '143.4817', '-60.09521', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '16', '1488.885', '157.5371', '-60.08819', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '17', '1480.589', '161.4890', '-60.79473', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '18', '1477.119', '168.5383', '-57.15204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '19', '1473.485', '169.9341', '-57.15204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '20', '1459.536', '162.9077', '-50.91343', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '21', '1444.435', '154.0052', '-57.15290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '22', '1436.596', '165.1508', '-62.29477', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '23', '1432.084', '165.8221', '-62.27603', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '24', '1427.117', '148.9120', '-62.28601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '25', '1416.204', '136.2396', '-62.29322', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5744, '26', '1413.280', '124.9320', '-62.29495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='1706.866', `position_y`='173.5195', `position_z`='-60.65545', `orientation`='2.348261', `MovementType`='2' WHERE `id`=4571;
DELETE FROM `creature_movement` WHERE `id`=15954;
DELETE FROM `creature_movement_template` WHERE `entry`=4571;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(4571, 1, '1689.393', '177.5078', '-62.17167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 2, '1682.125', '173.6181', '-62.15007', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 3, '1679.010', '170.4191', '-62.14515', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 4, '1664.058', '155.1304', '-62.14642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 5, '1660.320', '151.2245', '-62.15894', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 6, '1656.651', '142.3302', '-62.15651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 7, '1661.991', '130.1960', '-61.84471', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 8, '1676.097', '127.9013', '-60.37975', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 9, '1683.653', '131.5577', '-60.43893', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 10, '1691.373', '139.0889', '-55.21449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 11, '1694.585', '138.9976', '-55.21449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 12, '1705.707', '127.6135', '-48.91090', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 13, '1716.679', '116.0953', '-55.21507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 14, '1715.674', '112.2779', '-55.21564', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 15, '1709.764', '105.6789', '-60.19003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 16, '1697.478', '93.34071', '-62.23631', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 17, '1694.804', '80.54069', '-62.29029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 18, '1700.168', '73.63531', '-62.29224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 19, '1713.855', '66.62489', '-62.28612', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 20, '1733.035', '77.48069', '-62.27810', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 21, '1744.218', '91.91211', '-62.27541', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 22, '1757.176', '102.9975', '-62.27699', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 23, '1764.380', '120.8597', '-62.28633', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 24, '1759.657', '131.1934', '-62.29120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 25, '1748.012', '137.4028', '-62.18575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 26, '1740.992', '133.7818', '-62.18155', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 27, '1734.000', '128.8200', '-60.07695', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 28, '1728.170', '124.1366', '-60.24635', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 29, '1721.189', '117.5238', '-55.21569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 30, '1717.064', '115.9389', '-55.21523', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 31, '1706.279', '127.6673', '-48.94267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 32, '1694.081', '139.2291', '-55.21449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 33, '1695.937', '143.2202', '-55.21449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 34, '1701.630', '150.0567', '-60.47129', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 35, '1700.794', '156.4153', '-60.44687', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 36, '1706.710', '173.6413', '-60.73823', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4571, 37, '1701.233', '179.2417', '-62.18938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='1558.904', `position_y`='247.7700', `position_z`='-43.01935', `orientation`='4.709930', `MovementType`='2' WHERE `id`=4554;
DELETE FROM `creature_movement` WHERE `id`=15563;
DELETE FROM `creature_movement_template` WHERE `entry`=4554;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(4554, 1, '1558.865', '231.7458', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 2, '1565.029', '219.2863', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 3, '1575.238', '209.3330', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 4, '1585.829', '203.3863', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 5, '1605.897', '202.9824', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 6, '1615.094', '208.4064', '-43.10271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 7, '1631.786', '225.5727', '-43.10271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 8, '1633.566', '240.9065', '-43.10271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 9, '1629.720', '255.7577', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 10, '1615.501', '270.9346', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 11, '1604.583', '277.0562', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 12, '1585.277', '276.9533', '-43.10273', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 13, '1571.827', '267.4717', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 14, '1562.386', '258.2707', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4554, 15, '1558.899', '249.2707', '-43.10272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='1595.761', `position_y`='260.1375', `position_z`='-57.07836', `orientation`='3.5298360', `MovementType`='2' WHERE `id`=10879;
DELETE FROM `creature_movement` WHERE `id`=15608;
DELETE FROM `creature_movement_template` WHERE `entry`=10879;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(10879, 1, '1581.823', '254.4370', '-62.10552', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 2, '1575.266', '243.1816', '-62.07737', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 3, '1576.985', '231.0778', '-62.06101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 4, '1578.098', '222.2382', '-61.04656', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 5, '1554.969', '199.6583', '-60.77608', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 6, '1546.076', '190.2032', '-62.18159', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 7, '1570.378', '175.8391', '-62.17905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 8, '1589.876', '172.9214', '-62.17778', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 9, '1613.641', '174.8410', '-62.17780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 10, '1632.234', '180.7852', '-62.17731', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 11, '1650.286', '198.4710', '-62.18111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 12, '1658.255', '216.4895', '-62.17989', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 13, '1663.214', '231.2824', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 14, '1661.302', '260.8908', '-62.17834', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 15, '1656.121', '278.1525', '-62.18019', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 16, '1640.977', '294.3095', '-62.17684', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 17, '1621.073', '303.8107', '-62.17511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 18, '1597.038', '305.6069', '-62.17797', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 19, '1570.288', '304.0811', '-62.17671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 20, '1548.990', '291.5624', '-62.18175', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 21, '1531.857', '264.7233', '-62.17767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 22, '1528.448', '242.5587', '-62.17806', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 23, '1529.805', '219.4320', '-62.17561', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 24, '1535.449', '201.8574', '-62.18048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 25, '1553.841', '200.0119', '-60.77554', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 26, '1567.785', '213.0403', '-60.01546', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 27, '1583.052', '225.3536', '-62.08376', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 28, '1583.052', '225.3536', '-62.08376', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 29, '1588.728', '221.4616', '-59.49532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 30, '1595.215', '219.9118', '-57.16176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 31, '1602.882', '222.2778', '-60.22803', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 32, '1612.337', '230.1261', '-62.07736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 33, '1614.620', '243.4541', '-62.07736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 34, '1609.965', '254.0528', '-62.07736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 35, '1602.818', '258.5897', '-59.73981', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10879, 36, '1594.158', '260.0942', '-57.16173', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='1717.100', `position_y`='290.1810', `position_z`='-62.10680', `orientation`='5.026550', `MovementType`='2' WHERE `id`=5669;
DELETE FROM `creature_movement` WHERE `id`=15975;
DELETE FROM `creature_movement_template` WHERE `entry`=5669;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(5669, 1, '1717.100', '290.1810', '-62.10680', '6000', 361, '0', '0', '0', '0', '0', '0', '0', '0', '5.026550', '0', '0');
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=361;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(361, '0', '15', '9008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Helena Atwood - Shoot');
UPDATE creature SET position_x = -2589.136230, position_y = 8002.366211, position_z = -51.544746, orientation = 6.202310 WHERE guid = 76946;
DELETE FROM creature_movement WHERE id = 76946;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18298;
DELETE FROM creature_movement_template WHERE entry = 18298;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(18298,1,-2589.136230,8002.366211,-51.544746,2000,0,0,0,0,0,0,0,0,0,6.20,0,0),
(18298,2,-2610.8,7967.75,-50.8763,0,0,0,0,0,0,0,0,0,0,4.44459,0,0),
(18298,3,-2627.87,7928.58,-52.769,0,0,0,0,0,0,0,0,0,0,4.44537,0,0),
(18298,4,-2634.57,7904.54,-52.3424,0,0,0,0,0,0,0,0,0,0,4.30337,0,0),
(18298,5,-2654.97,7886.68,-49.4946,0,0,0,0,0,0,0,0,0,0,3.82428,0,0),
(18298,6,-2680.16,7873.41,-45.0046,0,0,0,0,0,0,0,0,0,0,3.45122,0,0),
(18298,7,-2699.47,7873.76,-44.3478,0,0,0,0,0,0,0,0,0,0,2.99961,0,0),
(18298,8,-2707.71,7877.92,-43.6352,0,0,0,0,0,0,0,0,0,0,2.44591,0,0),
(18298,9,-2710.89,7887.83,-41.7327,0,0,0,0,0,0,0,0,0,0,1.43667,0,0),
(18298,10,-2705.75,7898.3,-39.8618,0,0,0,0,0,0,0,0,0,0,0.973284,0,0),
(18298,11,-2686.2,7913.81,-33.1254,0,0,0,0,0,0,0,0,0,0,0.686614,0,0),
(18298,12,-2673.78,7928.45,-27.9666,0,0,0,0,0,0,0,0,0,0,1.04397,0,0),
(18298,13,-2667.95,7940.04,-23.1435,0,0,0,0,0,0,0,0,0,0,1.17356,0,0),
(18298,14,-2665.32,7953.93,-18.9239,30000,1829801,0,0,0,0,0,0,0,0,1.39347,0,0),
(18298,15,-2669.96,7936,-25.2282,0,0,0,0,0,0,0,0,0,0,4.2641,0,0),
(18298,16,-2683.54,7916.2,-32.0025,0,0,0,0,0,0,0,0,0,0,3.96173,0,0),
(18298,17,-2713.41,7891.17,-41.4143,0,0,0,0,0,0,0,0,0,0,3.38367,0,0),
(18298,18,-2726.82,7891.56,-41.4211,0,0,0,0,0,0,0,0,0,0,2.78677,0,0),
(18298,19,-2736.02,7907.62,-41.745,0,0,0,0,0,0,0,0,0,0,1.63459,0,0),
(18298,20,-2733.7,7930.83,-40.224,0,0,0,0,0,0,0,0,0,0,1.20419,0,0),
(18298,21,-2720.23,7957.16,-42.3013,0,0,0,0,0,0,0,0,0,0,0.909668,0,0),
(18298,22,-2695.55,7974.55,-45.8718,0,0,0,0,0,0,0,0,0,0,0.423506,0,0),
(18298,23,-2664.2,7984.73,-47.5107,0,0,0,0,0,0,0,0,0,0,0.231627,0,0),
(18298,24,-2628.98,7998.33,-49.0176,0,0,0,0,0,0,0,0,0,0,0.34551,0,0),
(18298,25,-2588.29,8002.47,-51.696,15000,1829802,0,0,0,0,0,0,0,0,6.26349,0,0);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 535;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1829801, 1829802); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1829801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1829802,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1829802,1,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1829802,15,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
DELETE FROM dbscripts_on_quest_end WHERE id = 9387;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9387,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Azethen - active'),
(9387,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9387,5,0,0,0,0,0,0,2000001206,0,0,0,0,0,0,0,''),
(9387,9,0,0,0,0,0,0,2000001207,0,0,0,0,0,0,0,''),
(9387,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9387,13,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9387,17,0,0,0,0,0,0,2000001208,0,0,0,0,0,0,0,''),
(9387,21,0,0,0,16795,20,7,2000001226,0,0,0,0,0,0,0,''),
(9387,23,1,7,0,16795,20,7,0,0,0,0,0,0,0,0,''),
(9387,26,15,5,0,16795,20,7,0,0,0,0,0,0,0,0,''),
(9387,30,0,0,0,0,0,0,2000001240,0,0,0,0,0,0,0,''),
(9387,31,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Azethen - unactive');
UPDATE quest_template SET CompleteScript = 9387 WHERE entry = 9387;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001206,'...a potent concoction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001207,'But where could I ever find a suitable test subject?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000001208,'Drink this, you blue brute! Disobey me and I promise you a slow, painful death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(2000001226,'I pity you Forsaken, Your soul is devoid of light.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,35,0,NULL),
(2000001240,'Hmmm... looks like I\'m going to need a new test subject.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE creature SET spawntimesecs = 15 WHERE guid = 59680;
UPDATE creature SET position_x = -2585.202637, position_y = 8010.064941, position_z = -51.298, orientation = 6.08 WHERE guid = 69400;
UPDATE creature SET position_x = -2580.087158, position_y = 7975.53369, position_z = -53.674, orientation = 5.991354 WHERE guid = 69499;
DELETE FROM creature_movement WHERE id in (82893,92504,92506,92507);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(9367, 182817, 530, 1,1,-353.264, 2714.73, 44.4037, 0.53776, 0, 0, 0.06975555, 0.9975641, -300, 100, 1),
(9364, 182817, 530, 1,1,-300.684, 2407.6, 60.7085, 0.113659, 0, 0, -0.7604055, 0.6494485, -300, 100, 1),
(9356, 182090, 530, 1,1,-294.437, 1525.48, 36.6622, 4.09861, 0, 0, 0.9681473, 0.2503814, -180, 100, 1),
(9355, 182090, 530, 1,1,-297.022, 1520.55, 67.9861, 3.90619, 0, 0, 0.92781, -0.373052, -180, 100, 1),
(9351, 182090, 530, 1,1,-308.298, 1530.72, 54.7025, 2.2372, 0, 0, 0.899489, 0.436943, -180, 100, 1),
(9350, 182090, 530, 1,1,-320.928, 1530.98, 40.3923, 5.85003, 0, 0, 0.214889, -0.976638, -180, 100, 1),
(9349, 184614, 530, 1,1,4924.32, 2991.21, 93.8808, 3.88003, 0, 0, 0.932609, -0.360887, -15, 100, 1),
(9347, 184614, 530, 1,1,4924.47, 2990.35, 93.8867, 2.25067, 0, 0, 0.902413, 0.430872, -15, 100, 1),
(9344, 184614, 530, 1,1,4923.45, 2991.21, 93.9248, 5.49404, 0, 0, 0.384413, -0.923161, -15, 100, 1),
(9343, 184614, 530, 1,1,4923.56, 2990.45, 93.9413, 0.813699, 0, 0, 0.395718, 0.918372, -15, 100, 1);
DELETE FROM creature WHERE id in (21044,22972,30141,30143,30145,31884,15989);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(8852, 194957, 603, 1, 1, 2737.86, 2568.98, 364.314, 0.0139475, 0, 0, 0.00697369, 0.999976, -604800, 100, 1),
(8857, 194958, 603, 2, 1, 2737.86, 2568.98, 364.314, 0.0139475, 0, 0, 0.00697369, 0.999976, -604800, 100, 1);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(7852, 192642, 617, 1, 1, 1350.95, 817.2, 20.8096, 3.15, 0, 0, 0.99627, 0.0862864, 900, 100, 1),
(7859, 192643, 617, 1, 1, 1232.65, 764.913, 20.0729, 6.3, 0, 0, 0.0310211, -0.999519, 900, 100, 1),
(7860, 194395, 617, 1, 1, 1291.56, 790.837, 7.1, 3.14238, 0, 0, 0.694215, -0.719768, 900, 100, 0),
(42438, 191877, 617, 1, 1, 1291.56, 790.837, 7.1, 3.14238, 0, 0, 0.694215, -0.719768, 900, 100, 0),
(42543, 184663, 617, 1, 1, 1291.7, 813.424, 7.11472, 4.64562, 0, 0, 0.730314, -0.683111, 900, 100, 1),
(42545, 184664, 617, 1, 1, 1291.7, 768.911, 7.11472, 1.55194, 0, 0, 0.700409, 0.713742, 900, 100, 1),
(42547, 194582, 618, 1, 1, 763.536, -294.535, 0.505, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(42669, 194586, 618, 1, 1, 763.506, -273.873, 0.505, 0, 0, 0, 0, 0, 900, 100, 1),
(42766, 184663, 618, 1, 1, 735.551, -284.794, 28.276, 0.0349, 0, 0, 0, 0, 900, 100, 1),
(42767, 184664, 618, 1, 1, 791.224, -284.794, 28.276, 2.60053, 0, 0, 0, 0, 900, 100, 1),
(42768, 192704, 618, 1, 1, 743.543, -283.799, 28.286, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(42769, 192705, 618, 1, 1, 782.971, -283.799, 28.286, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9341, 192387, 618, 1, 1, 743.711, -284.099, 27.542, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9337, 192388, 618, 1, 1, 783.221, -284.133, 27.535, 0, 0, 0, 0, 0, 900, 100, 1),
(9335, 192393, 618, 1, 1, 763.664, -261.872, 26.686, 0, 0, 0, 0, 0, 900, 100, 1),
(9333, 192394, 618, 1, 1, 763.578, -306.146, 26.665, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9328, 192389, 618, 1, 1, 700.722, -283.990, 39.517, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9325, 192390, 618, 1, 1, 826.303, -283.996, 39.517, 0, 0, 0, 0, 0, 900, 100, 1),
(9324, 194583, 618, 1, 1, 763.632, -306.162, 25.909, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9322, 194584, 618, 1, 1, 723.644, -284.493, 24.648, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9321, 194585, 618, 1, 1, 763.611, -261.856, 25.909, 0, 0, 0, 0, 0, 900, 100, 1),
(9319, 194587, 618, 1, 1, 802.211, -284.493, 24.648, 0, 0, 0, 0, 0, 900, 100, 1),
(9311, 194580, 618, 1, 1, 763.632, -306.162, 30.639, 3.14159, 0, 0, 0, 0, 900, 100, 1),
(9306, 194579, 618, 1, 1, 723.644, -284.493, 32.382, 0, 0, 0, 0, 0, 900, 100, 1),
(9305, 194581, 618, 1, 1, 763.611, -261.856, 30.639, 0, 0, 0, 0, 0, 900, 100, 1),
(9303, 194578, 618, 1, 1, 802.211, -284.493, 32.382, 3.14159, 0, 0, 0, 0, 900, 100, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(72625, 19355, 530, 1, 1, 0, 0, -3123.57, 2480.26, 62.442, 1.25, 300, 0, 0, 3052, 0, 0, 0),
(72637, 19355, 530, 1, 1, 0, 0, -3123, 2449, 63, 4, 300, 0, 0, 3052, 0, 0, 0),
(72967, 19355, 530, 1, 1, 0, 0, -3123.92, 2444.36, 64.2023, 5.70716, 300, 0, 0, 3052, 0, 0, 0),
(72977, 19355, 530, 1, 1, 0, 0, -3128.24, 2493.16, 61.8843, 0.476898, 300, 0, 0, 3052, 0, 0, 0),
(72996, 19355, 530, 1, 1, 0, 0, -2964.79, 2663.02, 98.6458, 0.333633, 300, 0, 0, 3052, 0, 0, 2),
(72979, 19355, 530, 1, 1, 0, 0, -3035.78, 2636.94, 76.544, 2.29483, 300, 0, 0, 3052, 0, 0, 0),
(72999, 19355, 530, 1, 1, 0, 0, -2960.15, 2578.3, 76.601, 4.548, 300, 0, 0, 3052, 0, 0, 2),
(72985, 19355, 530, 1, 1, 0, 0, -3032.08, 2646.79, 76.544, 1.25025, 300, 0, 0, 3052, 0, 0, 0),
(73001, 19355, 530, 1, 1, 0, 0, -2958, 2531, 76.2, 4, 300, 0, 0, 3052, 0, 0, 2),
(73002, 19355, 530, 1, 1, 0, 0, -2971, 2528, 76.2, 0, 300, 0, 0, 3052, 0, 0, 2),
(73009, 19355, 530, 1, 1, 0, 0, -3037, 2523, 62.79, 0, 300, 0, 0, 3052, 0, 0, 2),
(73010, 19355, 530, 1, 1, 0, 0, -3037, 2528, 63.39, 5, 300, 0, 0, 3052, 0, 0, 2),
(72987, 19355, 530, 1, 1, 0, 0, -3119, 2491, 62.2, 2, 300, 0, 0, 3052, 0, 0, 0),
(73011, 19355, 530, 1, 1, 0, 0, -3173.56, 2491.29, 62.632, 2.219, 300, 0, 0, 3052, 0, 0, 2),
(72988, 19355, 530, 1, 1, 0, 0, -3139, 2453, 63.8, 4, 300, 0, 0, 3052, 0, 0, 0),
(72989, 19355, 530, 1, 1, 0, 0, -3108, 2458, 62.6, 5, 300, 0, 0, 3052, 0, 0, 0),
(73012, 19355, 530, 1, 1, 0, 0, -2996.39, 2508.83, 61.0712, 1.73924, 300, 0, 0, 3052, 0, 0, 2),
(73013, 19355, 530, 1, 1, 0, 0, -3127.64, 2479.66, 61.9797, 1.01755, 300, 0, 0, 3052, 0, 0, 2),
(73014, 19355, 530, 1, 1, 0, 0, -3163.27, 2504.62, 63.1041, 2.94101, 300, 0, 0, 3052, 0, 0, 2),
(73019, 19355, 530, 1, 1, 0, 2, -3114.63, 2574.29, 61.833, 4.23464, 180, 0, 0, 3052, 0, 0, 2);
DELETE FROM creature_movement WHERE id in (72996,72999,73001,73002,73009,73010,73011,73012,73013,73014,73019);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(72996, 1, -2964.79, 2663.02, 98.6458, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.333633, 0, 0),
(72996, 2, -2964.79, 2663.02, 98.6458, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 0.333633, 0, 0),
(72996, 3, -2964.79, 2663.02, 98.6458, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.333633, 0, 0),
(72996, 4, -2964.79, 2663.02, 98.6458, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 0.333633, 0, 0),
(72999, 1, -2961.77, 2580.02, 76.6315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76803, 0, 0),
(72999, 2, -2969.93, 2582.73, 76.6074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.03192, 0, 0),
(72999, 3, -2979.89, 2582.2, 76.7159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5495, 0, 0),
(72999, 4, -2986.86, 2578.18, 76.5467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03651, 0, 0),
(72999, 5, -2994.66, 2565.47, 76.5969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62163, 0, 0),
(72999, 6, -2995, 2561.25, 76.7025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06538, 0, 0),
(72999, 7, -2989.7, 2553.02, 76.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50991, 0, 0),
(72999, 8, -2975.72, 2541.5, 76.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96387, 0, 0),
(72999, 9, -2966.21, 2538.27, 76.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.13062, 0, 0),
(72999, 10, -2958.14, 2537.13, 76.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.22817, 0, 0),
(72999, 11, -2957.46, 2540.13, 76.544, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 1.50965, 0, 0),
(72999, 12, -2954.92, 2539.23, 76.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.16549, 0, 0),
(72999, 13, -2950.72, 2539.54, 76.544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.541258, 0, 0),
(72999, 14, -2941.84, 2555.1, 76.5368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.36593, 0, 0),
(72999, 15, -2942.38, 2560.67, 76.453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.86073, 0, 0),
(72999, 16, -2950.02, 2573.23, 76.5052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.25186, 0, 0),
(72999, 17, -2955.78, 2578.84, 76.81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.84012, 0, 0),
(72999, 18, -2959.71, 2578.55, 76.6279, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 3.77003, 0, 0),
(73001, 1, -2957.58, 2530.63, 76.5432, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.75986, 0, 0),
(73001, 2, -2957.58, 2530.63, 76.5432, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 3.75986, 0, 0),
(73001, 3, -2957.58, 2530.63, 76.5432, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.75986, 0, 0),
(73001, 4, -2957.58, 2530.63, 76.5432, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 3.75986, 0, 0),
(73002, 1, -2971.19, 2527.98, 76.4119, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 0.434474, 0, 0),
(73002, 2, -2971.19, 2527.98, 76.4119, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.434474, 0, 0),
(73002, 3, -2971.19, 2527.98, 76.4119, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 0.434474, 0, 0),
(73002, 4, -2971.19, 2527.98, 76.4119, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.434474, 0, 0),
(73009, 1, -3056.67, 2514.83, 62.2971, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.31755, 0, 0),
(73009, 2, -3058.29, 2510.66, 62.8859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6592, 0, 0),
(73009, 3, -3057.79, 2504.41, 63.0217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.17442, 0, 0),
(73009, 4, -3054.61, 2498.85, 63.5269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.73833, 0, 0),
(73009, 5, -3049.98, 2496.51, 63.5463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.27431, 0, 0),
(73009, 6, -3040.85, 2502.48, 62.8464, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 0.531134, 0, 0),
(73009, 7, -3049.42, 2497.03, 63.4375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1363, 0, 0),
(73009, 8, -3053.86, 2498.14, 63.5696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.16142, 0, 0),
(73009, 9, -3059.52, 2504.94, 62.9774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.85058, 0, 0),
(73009, 10, -3059.28, 2510.55, 62.9044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.916821, 0, 0),
(73009, 11, -3055.18, 2513.61, 62.3955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.61994, 0, 0),
(73009, 12, -3037.3, 2523.28, 62.7923, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 0.425394, 0, 0),
(73010, 1, -3038.74, 2529.66, 63.6941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1413, 0, 0),
(73010, 2, -3067.88, 2529.54, 61.7375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.99365, 0, 0),
(73010, 3, -3083.25, 2532.27, 62.2109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.22691, 0, 0),
(73010, 4, -3102.37, 2527.62, 62.5549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89685, 0, 0),
(73010, 5, -3106.63, 2523.94, 62.5927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.79613, 0, 0),
(73010, 6, -3108.07, 2510.02, 62.3835, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 4.6744, 0, 0),
(73010, 7, -3107.33, 2521.02, 62.6933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.15895, 0, 0),
(73010, 8, -3104.38, 2526.09, 62.6008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.613101, 0, 0),
(73010, 9, -3089.15, 2532.62, 62.315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.168566, 0, 0),
(73010, 10, -3058.59, 2531.74, 62.195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26875, 0, 0),
(73010, 11, -3038.45, 2530.36, 63.8704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.59096, 0, 0),
(73010, 12, -3036.48, 2528.65, 63.5111, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 5.37576, 0, 0),
(73011, 1, -3173.56, 2491.29, 62.632, 12000, 1935501, 0, 0, 0, 0, 0, 0, 0, 0, 2.219, 0, 0),
(73011, 2, -3173.56, 2491.29, 62.632, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 2.219, 0, 0),
(73011, 3, -3173.56, 2491.29, 62.632, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.219, 0, 0),
(73011, 4, -3173.56, 2491.29, 62.6317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.21921, 0, 0),
(73011, 5, -3152.44, 2480.45, 61.9384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.4362, 0, 0),
(73011, 6, -3144.52, 2469.61, 62.2388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.80082, 0, 0),
(73011, 7, -3144.04, 2453.07, 64.3027, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 4.70893, 0, 0),
(73011, 8, -3144.04, 2453.07, 64.3027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70893, 0, 0),
(73011, 9, -3145.88, 2471.43, 62.224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.90741, 0, 0),
(73011, 10, -3153.54, 2483.97, 61.9492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.53337, 0, 0),
(73011, 11, -3173.56, 2491.29, 62.632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.219, 0, 0),
(73012, 1, -2996.5, 2505.12, 60.8425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.52872, 0, 0),
(73012, 2, -3006.43, 2500.08, 62.2098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.44782, 0, 0),
(73012, 3, -3016.86, 2496.55, 62.7357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2986, 0, 0),
(73012, 4, -3031.44, 2495.81, 63.3779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10461, 0, 0),
(73012, 5, -3033.58, 2499.9, 63.044, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 1.98934, 0, 0),
(73012, 6, -3032.03, 2496, 63.4441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.72749, 0, 0),
(73012, 7, -3022.13, 2494.63, 62.746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.272892, 0, 0),
(73012, 8, -3004.16, 2499.54, 61.7559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.552623, 0, 0),
(73012, 9, -2997.32, 2505.29, 60.9061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.22571, 0, 0),
(73012, 10, -2996.37, 2508.72, 61.0472, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 1.67182, 0, 0),
(73013, 1, -3127.64, 2479.66, 61.9797, 1000, 1935501, 0, 0, 0, 0, 0, 0, 0, 0, 1.01755, 0, 0),
(73013, 2, -3133.47, 2455.16, 62.6615, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 4.28716, 0, 0),
(73013, 3, -3133.47, 2455.16, 62.6615, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.28716, 0, 0),
(73013, 4, -3127.64, 2479.66, 61.9797, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 1.01755, 0, 0),
(73013, 5, -3127.64, 2479.66, 61.9797, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.01755, 0, 0),
(73014, 1, -3163.27, 2504.62, 63.0599, 2000, 1935501, 0, 0, 0, 0, 0, 0, 0, 0, 2.86325, 0, 0),
(73014, 2, -3127.7, 2498.97, 62.6807, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 6.1148, 0, 0),
(73014, 3, -3127.7, 2498.97, 62.6807, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.1148, 0, 0),
(73014, 4, -3163.29, 2504.88, 63.0677, 60000, 1935503, 0, 0, 0, 0, 0, 0, 0, 0, 2.98498, 0, 0),
(73014, 5, -3163.29, 2504.88, 63.0677, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98498, 0, 0),
(73019, 1, -3119.21, 2568.56, 61.7314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.18299, 0, 0),
(73019, 2, -3130.42, 2567.74, 61.6389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76673, 0, 0),
(73019, 3, -3136.44, 2571.7, 61.7384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.25073, 0, 0),
(73019, 4, -3144.4, 2579.04, 62.0745, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 2.21617, 0, 0),
(73019, 5, -3134.28, 2550.84, 62.1044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.07262, 0, 0),
(73019, 6, -3133.02, 2552.09, 62.1456, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 0.716047, 0, 0),
(73019, 7, -3134.71, 2552.86, 62.148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04494, 0, 0),
(73019, 8, -3134.6, 2557.56, 61.9761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.965803, 0, 0),
(73019, 9, -3127.74, 2563.25, 61.4409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.286433, 0, 0),
(73019, 10, -3086.83, 2576.14, 61.8572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.544829, 0, 0),
(73019, 11, -3082.29, 2579.78, 62.3389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58156, 0, 0),
(73019, 12, -3083.66, 2582.2, 62.1725, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 2.47377, 0, 0),
(73019, 13, -3080.6, 2583.78, 62.5164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.944598, 0, 0),
(73019, 14, -3075.93, 2599.77, 61.7457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.73706, 0, 0),
(73019, 15, -3077.69, 2603.51, 61.7306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3858, 0, 0),
(73019, 16, -3084.03, 2610.19, 61.7291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.52639, 0, 0),
(73019, 17, -3086.55, 2611.93, 61.7291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.14155, 0, 0),
(73019, 18, -3087.66, 2614.89, 61.7291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63732, 0, 0),
(73019, 19, -3087.33, 2619.43, 61.7291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.352407, 0, 0),
(73019, 20, -3082.3, 2619.89, 61.7291, 60000, 1935502, 0, 0, 0, 0, 0, 0, 0, 0, 0.044531, 0, 0),
(73019, 21, -3102.85, 2609, 61.7642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.16549, 0, 0),
(73019, 22, -3111.04, 2600.86, 61.9742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.40974, 0, 0),
(73019, 23, -3113.23, 2590.05, 62.3248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61237, 0, 0),
(73019, 24, -3114.75, 2573.97, 61.828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.30842, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1935501,1935502,1935503); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1935501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1935502,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1935502,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1935503,3,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1935503,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(77223, 21029, 530, 1, 1, 0, 0, -2729.85, 1215.23, 48.2141, 1.5708, 600, 0, 0, 3984, 2434, 0, 0),
(77224, 21029, 530, 1, 1, 0, 0, -2713.19, 1221.69, 38.1432, 2.09439, 600, 0, 0, 3984, 2434, 0, 0),
(77225, 21029, 530, 1, 1, 0, 0, -2711.53, 1230.92, 37.3221, 2.54818, 600, 0, 0, 3984, 2434, 0, 0),
(77226, 21029, 530, 1, 1, 0, 0, -2721.25, 1216.49, 41.7782, 1.79769, 600, 0, 0, 3984, 2434, 0, 0),
(77227, 21029, 530, 1, 1, 0, 0, -2708.88, 1239.1, 38.1921, 3.08923, 600, 0, 0, 3984, 2434, 0, 0);
UPDATE creature_template SET UnitFlags = 33024, InhabitType = 5 WHERE entry = 21029;
DELETE FROM creature_template_addon WHERE entry = 21029;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21029,0,0,1,0,0,0,35929);
UPDATE creature_template SET InhabitType = 4 WHERE entry = 21041;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(86089, 21041, 530, 1, 1, 0, 0, -2638.89, 1358.96, 35.9607, 0.574121, 180, 0, 0, 8, 0, 0, 0),
(77228, 21041, 530, 1, 1, 0, 0, -2614.51, 1381.27, 51.6831, 5.55015, 180, 0, 0, 8, 0, 0, 2),
(77229, 21041, 530, 1, 1, 0, 0, -2605.25, 1369.39, 47.99, 4.03171, 180, 0, 0, 8, 0, 0, 2),
(77230, 21041, 530, 1, 1, 0, 0, -2610.76, 1377.7, 41.0943, 3.50811, 180, 0, 0, 8, 0, 0, 2),
(77231, 21041, 530, 1, 1, 0, 0, -2605.53, 1374.24, 45.3846, 5.55015, 180, 0, 0, 8, 0, 0, 2),
(77859, 21041, 530, 1, 1, 0, 0, -2590.76, 1387.65, 54.3178, 4.10152, 180, 0, 0, 8, 0, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(92448, 20795, 530, 1, 1, 0, 0, -2593.76, 1384.13, 44.286, 0.561506, 300, 0, 0, 6803, 2991, 0, 0);
DELETE FROM creature_movement WHERE id in (77228,77229,77230,77231,77859);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(77228, 1, -2614.51, 1381.27, 51.6831, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55015, 0, 0),
(77228, 2, -2614.51, 1381.27, 51.6831, 180000, 2104101, 0, 0, 0, 0, 0, 0, 0, 0, 5.55015, 0, 0),
(77229, 1, -2605.25, 1369.39, 47.99, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03171, 0, 0),
(77229, 2, -2605.25, 1369.39, 47.99, 180000, 2104101, 0, 0, 0, 0, 0, 0, 0, 0, 4.03171, 0, 0),
(77230, 1, -2610.76, 1377.7, 41.0943, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.50811, 0, 0),
(77230, 2, -2610.76, 1377.7, 41.0943, 180000, 2104101, 0, 0, 0, 0, 0, 0, 0, 0, 3.50811, 0, 0),
(77231, 1, -2605.53, 1374.24, 45.3846, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55015, 0, 0),
(77231, 2, -2605.53, 1374.24, 45.3846, 180000, 2104101, 0, 0, 0, 0, 0, 0, 0, 0, 5.55015, 0, 0),
(77859, 1, -2590.76, 1387.65, 54.3178, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.10152, 0, 0),
(77859, 2, -2590.76, 1387.65, 54.3178, 180000, 2104101, 0, 0, 0, 0, 0, 0, 0, 0, 4.10152, 0, 0);
REPLACE INTO creature_linking (guid, master_guid, flag) VALUES
(77228, 92448, 144),
(77229, 92448, 144),
(77230, 92448, 144),
(77231, 92448, 144),
(77859, 92448, 144);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104101,0,31,21027,40,0,0,0,0,0,0,0,0,0,0,0,''),
(2104101,1,3,0,0,21027,40,0x08,0,0,0,0,-2616.361084,1372.072021,46.028641,3.857178,''),
(2104101,2,15,35928,0,21027,40,1,0,0,0,0,0,0,0,0,'watery prison - channel');
UPDATE creature SET position_x = -2616.361084, position_y = 1372.072021, position_z = 46.028641, orientation = 3.857178, spawntimesecs = 300 WHERE guid = 77662;
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 21027;
DELETE FROM creature_template_addon WHERE entry = 21027;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21027,0,0,1,0,0,0,35921);
UPDATE creature_template SET FactionAlliance = 1826, FactionHorde = 1826 WHERE entry = 20795;
DELETE FROM dbscripts_on_creature_death WHERE id = 20795;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20795,0,31,21027,25,0,0,0,0,0,0,0,0,0,0,0,''),
(20795,1,29,2,0x02,21027,25,0x04,0,0,0,0,0,0,0,0,''),
(20795,1,3,0,0,21027,25,0x04,0,0,0,0,-2638.89,1358.96,35.9607,0,''),
(20795,10,14,35921,0,21027,50,0x04,0,0,0,0,0,0,0,0,''),
(20795,14,0,0,0,21027,50,0x04,2000001241,0,0,0,0,0,0,0,''),
(20795,16,29,2,0x01,21027,50,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000001241;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001241,'Thank you, kind soul. You have freed me from the watery prison of Coilskar but many more are being held prisoner nearby. Will you assist me in freeing them as well?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21061;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(60271, 21061, 530, 1, 1, 0, 0, -4024.1, 1350.26, 37.7708, 3.67852, 300, 0, 0, 6542, 0, 0, 2),
(60272, 21061, 530, 1, 1, 0, 0, -3831.88, 1338.6, 40.215, 3.38891, 300, 0, 0, 6542, 0, 0, 2),
(60273, 21061, 530, 1, 1, 0, 0, -3855.62, 1327.46, 41.7383, 1.76344, 300, 0, 0, 6542, 0, 0, 2),
(60274, 21061, 530, 1, 1, 0, 0, -3562.34, 1715.34, 39.7787, 4.74713, 300, 0, 0, 6542, 0, 0, 2),
(60275, 21061, 530, 1, 1, 0, 0, -3459.81, 1729.88, 82.9985, 3.84683, 300, 0, 0, 6542, 0, 0, 2),
(60276, 21061, 530, 1, 1, 0, 0, -3375.25, 1673.66, 98.6486, 2.8489, 300, 0, 0, 6542, 0, 0, 2),
(60277, 21061, 530, 1, 1, 0, 0, -3604.05, 1797.81, 39.6566, 2.41269, 300, 0, 0, 6542, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 60273;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60273,1,-3846.195068,1363.642212,40.851978,0,0,0,0,0,0,0,0,0,0,1.273996,0,0),
(60273,2,-3841.328125,1378.156372,39.785717,0,0,0,0,0,0,0,0,0,0,1.556739,0,0),
(60273,3,-3839.727051,1389.478027,39.423538,0,0,0,0,0,0,0,0,0,0,1.769581,0,0),
(60273,4,-3841.834717,1403.790405,39.791061,0,0,0,0,0,0,0,0,0,0,1.757015,0,0),
(60273,5,-3844.524414,1416.042236,40.086765,0,0,0,0,0,0,0,0,0,0,1.768795,0,0),
(60273,6,-3841.644775,1395.771484,39.422878,0,0,0,0,0,0,0,0,0,0,4.800430,0,0),
(60273,7,-3842.135254,1378.813965,39.827480,0,0,0,0,0,0,0,0,0,0,4.419513,0,0),
(60273,8,-3846.776855,1349.218994,40.616627,0,0,0,0,0,0,0,0,0,0,4.816137,0,0),
(60273,9,-3848.199463,1327.060669,39.424561,0,0,0,0,0,0,0,0,0,0,4.275786,0,0),
(60273,10,-3864.122314,1307.699463,39.640980,0,0,0,0,0,0,0,0,0,0,4.192537,0,0),
(60273,11,-3873.697998,1291.151733,39.888130,0,0,0,0,0,0,0,0,0,0,4.276571,0,0),
(60273,12,-3890.034424,1260.608154,39.967388,0,0,0,0,0,0,0,0,0,0,4.311911,0,0),
(60273,13,-3870.437012,1290.671387,39.437202,0,0,0,0,0,0,0,0,0,0,1.052508,0,0),
(60273,14,-3858.252686,1327.987671,41.851032,0,0,0,0,0,0,0,0,0,0,1.284201,0,0);
DELETE FROM creature_movement WHERE id = 60272;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60272,1,-3838.326172,1339.890869,39.679127,0,0,0,0,0,0,0,0,0,0,2.485078,0,0),
(60272,2,-3845.816162,1348.884033,40.481323,0,0,0,0,0,0,0,0,0,0,2.143429,0,0),
(60272,3,-3858.004883,1368.138916,40.105995,0,0,0,0,0,0,0,0,0,0,2.159137,0,0),
(60272,4,-3869.950439,1399.025024,39.393257,0,0,0,0,0,0,0,0,0,0,1.801781,0,0),
(60272,5,-3864.750732,1378.347778,40.433006,0,0,0,0,0,0,0,0,0,0,4.959087,0,0),
(60272,6,-3854.033691,1365.311523,40.322079,0,0,0,0,0,0,0,0,0,0,5.410688,0,0),
(60272,7,-3843.046631,1340.538818,39.898426,0,0,0,0,0,0,0,0,0,0,5.409903,0,0),
(60272,8,-3835.042969,1338.908813,39.922791,0,0,0,0,0,0,0,0,0,0,6.191370,0,0),
(60272,9,-3824.309814,1338.807861,40.255920,0,0,0,0,0,0,0,0,0,0,0.041700,0,0),
(60272,10,-3832.898682,1338.197266,40.190769,0,0,0,0,0,0,0,0,0,0,3.281500,0,0);
DELETE FROM creature_movement WHERE id = 60271;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60271,1,-4054.979004,1329.807739,40.801224,0,0,0,0,0,0,0,0,0,0,0.687020,0,0),
(60271,2,-3997.711182,1363.837646,39.641212,0,0,0,0,0,0,0,0,0,0,0.330736,0,0),
(60271,3,-3983.934570,1369.024780,39.637756,0,0,0,0,0,0,0,0,0,0,0.358226,0,0),
(60271,4,-4017.294189,1357.051880,39.385571,0,0,0,0,0,0,0,0,0,0,3.853249,0,0),
(60271,5,-4028.906250,1349.502686,38.773022,0,0,0,0,0,0,0,0,0,0,3.707332,0,0);
DELETE FROM creature_movement WHERE id = 60274;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60274,1,-3559.886230,1699.506836,39.850990,0,0,0,0,0,0,0,0,0,0,4.197893,0,0),
(60274,2,-3564.114258,1692.038818,39.721752,0,0,0,0,0,0,0,0,0,0,3.685816,0,0),
(60274,3,-3572.404297,1690.466309,39.712170,0,0,0,0,0,0,0,0,0,0,2.942044,0,0),
(60274,4,-3577.244141,1694.272339,39.849777,0,0,0,0,0,0,0,0,0,0,1.723106,0,0),
(60274,5,-3571.291748,1712.859497,39.663181,0,0,0,0,0,0,0,0,0,0,1.490628,0,0),
(60274,6,-3566.329346,1742.497681,39.574017,0,0,0,0,0,0,0,0,0,0,1.642210,0,0),
(60274,7,-3567.489258,1756.302734,39.214058,0,0,0,0,0,0,0,0,0,0,2.014488,0,0),
(60274,8,-3579.901611,1774.918151495,39.055790,0,0,0,0,0,0,0,0,0,0,1.888039,0,0),
(60274,9,-3581.278564,1785.543701,39.792999,0,0,0,0,0,0,0,0,0,0,1.124632,0,0),
(60274,10,-3577.571289,1790.180420,39.750645,0,0,0,0,0,0,0,0,0,0,0.605483,0,0),
(60274,11,-3570.380127,1791.656982,39.690193,0,0,0,0,0,0,0,0,0,0,0.076125,0,0),
(60274,12,-3558.971191,1791.784180,39.417141,0,0,0,0,0,0,0,0,0,0,5.860590,0,0),
(60274,13,-3576.411621,1790.503052,39.720089,0,0,0,0,0,0,0,0,0,0,4.204185,0,0),
(60274,14,-3581.364258,1781.916992,39.511158,0,0,0,0,0,0,0,0,0,0,4.819938,0,0),
(60274,15,-3579.156494,1769.406738,39.313389,0,0,0,0,0,0,0,0,0,0,5.178077,0,0),
(60274,16,-3567.903809,1748.264648,39.483555,0,0,0,0,0,0,0,0,0,0,4.885123,0,0),
(60274,17,-3559.448975,1704.930542,39.660011,0,0,0,0,0,0,0,0,0,0,4.936172,0,0);
DELETE FROM creature_movement WHERE id = 60277;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60277,1,-3617.447266,1804.358521,39.764160,0,0,0,0,0,0,0,0,0,0,3.120324,0,0),
(60277,2,-3640.799805,1800.557129,39.625957,0,0,0,0,0,0,0,0,0,0,3.623765,0,0),
(60277,3,-3654.481445,1791.969360,39.621109,0,0,0,0,0,0,0,0,0,0,3.993687,0,0),
(60277,4,-3661.470215,1783.241943,39.642189,0,0,0,0,0,0,0,0,0,0,4.435863,0,0),
(60277,5,-3662.236328,1774.897949,39.622753,0,0,0,0,0,0,0,0,0,0,4.725671,0,0),
(60277,6,-3659.632080,1786.029175,39.624077,0,0,0,0,0,0,0,0,0,0,0.944764,0,0),
(60277,7,-3652.408936,1793.561035,39.620708,0,0,0,0,0,0,0,0,0,0,0.627464,0,0),
(60277,8,-3640.748291,1801.082642,39.620174,0,0,0,0,0,0,0,0,0,0,0.255970,0,0),
(60277,9,-3615.342285,1803.995483,39.752888,0,0,0,0,0,0,0,0,0,0,5.845651,0,0),
(60277,10,-3605.901123,1798.453369,39.718403,0,0,0,0,0,0,0,0,0,0,4.774671,0,0),
(60277,11,-3609.395508,1770.178711,39.777660,0,0,0,0,0,0,0,0,0,0,4.738232,0,0),
(60277,12,-3606.962646,1724.272461,39.604599,0,0,0,0,0,0,0,0,0,0,1.644137,0,0),
(60277,13,-3609.615723,1777.833374,39.785160,0,0,0,0,0,0,0,0,0,0,1.302489,0,0),
(60277,14,-3607.008301,1797.140625,39.798298,0,0,0,0,0,0,0,0,0,0,1.915099,0,0);
DELETE FROM creature_movement WHERE id = 60275;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60275,1,-3467.010986,1727.532104,80.341957,0,0,0,0,0,0,0,0,0,0,3.871508,0,0),
(60275,2,-3476.325684,1717.079102,72.664696,0,0,0,0,0,0,0,0,0,0,4.053719,0,0),
(60275,3,-3486.913574,1701.502319,66.438675,0,0,0,0,0,0,0,0,0,0,4.279125,0,0),
(60275,4,-3489.807129,1693.493286,63.737061,0,0,0,0,0,0,0,0,0,0,4.542233,0,0),
(60275,5,-3491.357666,1683.330200,59.958420,0,0,0,0,0,0,0,0,0,0,4.286978,0,0),
(60275,6,-3492.780273,1678.502930,57.278198,0,0,0,0,0,0,0,0,0,0,4.432278,0,0),
(60275,7,-3498.009521,1669.833862,49.509212,0,0,0,0,0,0,0,0,0,0,3.726209,0,0),
(60275,8,-3501.708252,1666.100830,46.463818,0,0,0,0,0,0,0,0,0,0,3.937482,0,0),
(60275,9,-3504.910645,1663.563232,45.975742,0,0,0,0,0,0,0,0,0,0,3.796110,0,0),
(60275,10,-3500.515625,1668.427368,47.560513,0,0,0,0,0,0,0,0,0,0,0.866575,0,0),
(60275,11,-3493.849854,1675.918213,55.527012,0,0,0,0,0,0,0,0,0,0,1.165812,0,0),
(60275,12,-3490.829102,1689.250977,62.355751,0,0,0,0,0,0,0,0,0,0,1.432847,0,0),
(60275,13,-3487.906738,1699.827637,65.774681,0,0,0,0,0,0,0,0,0,0,1.030723,0,0),
(60275,14,-3482.273193,1707.706177,69.129219,0,0,0,0,0,0,0,0,0,0,0.953754,0,0),
(60275,15,-3475.362549,1718.226563,73.349861,0,0,0,0,0,0,0,0,0,0,0.949827,0,0),
(60275,16,-3467.111816,1727.616821,80.312614,0,0,0,0,0,0,0,0,0,0,0.396907,0,0),
(60275,17,-3458.540527,1729.605835,83.453857,0,0,0,0,0,0,0,0,0,0,0.648234,0,0),
(60275,18,-3448.852051,1737.152466,91.521782,0,0,0,0,0,0,0,0,0,0,0.714993,0,0),
(60275,19,-3439.660156,1742.241333,96.386360,0,0,0,0,0,0,0,0,0,0,0.491155,0,0),
(60275,20,-3431.528076,1747.294434,99.761780,0,0,0,0,0,0,0,0,0,0,0.573622,0,0),
(60275,21,-3438.066406,1743.678101,97.230766,0,0,0,0,0,0,0,0,0,0,3.723068,0,0),
(60275,22,-3447.634766,1736.637695,91.812401,0,0,0,0,0,0,0,0,0,0,3.742703,0,0),
(60275,23,-3461.307617,1730.620728,82.665756,0,0,0,0,0,0,0,0,0,0,3.672016,0,0);
DELETE FROM creature_movement WHERE id = 60276;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(60276,1,-3386.534668,1680.418823,99.950859,0,0,0,0,0,0,0,0,0,0,2.329757,0,0),
(60276,2,-3394.987305,1689.722900,99.826988,0,0,0,0,0,0,0,0,0,0,1.894646,0,0),
(60276,3,-3393.533203,1700.587646,101.722290,0,0,0,0,0,0,0,0,0,0,1.481527,0,0),
(60276,4,-3390.240967,1722.795532,100.836090,0,0,0,0,0,0,0,0,0,0,1.430476,0,0),
(60276,5,-3393.843750,1699.974243,101.758476,0,0,0,0,0,0,0,0,0,0,4.583844,0,0),
(60276,6,-3392.999512,1686.690674,99.501984,0,0,0,0,0,0,0,0,0,0,5.781574,0,0),
(60276,7,-3385.755127,1679.740601,99.771248,0,0,0,0,0,0,0,0,0,0,5.697533,0,0),
(60276,8,-3377.450439,1675.936279,98.378250,0,0,0,0,0,0,0,0,0,0,5.889953,0,0),
(60276,9,-3361.713867,1670.050415,94.663925,0,0,0,0,0,0,0,0,0,0,5.640195,0,0),
(60276,10,-3356.403320,1663.421875,90.909996,0,0,0,0,0,0,0,0,0,0,5.018948,0,0),
(60276,11,-3355.299316,1658.171631,87.426849,0,0,0,0,0,0,0,0,0,0,4.829906,0,0),
(60276,12,-3355.264648,1651.613525,82.771057,0,0,0,0,0,0,0,0,0,0,4.376731,0,0),
(60276,13,-3362.166748,1638.422241,74.643501,0,0,0,0,0,0,0,0,0,0,4.203946,0,0),
(60276,14,-3365.688477,1627.690430,68.810814,0,0,0,0,0,0,0,0,0,0,4.747435,0,0),
(60276,15,-3362.734375,1619.184448,61.100243,0,0,0,0,0,0,0,0,0,0,4.800838,0,0),
(60276,16,-3362.980225,1607.159790,51.606964,0,0,0,0,0,0,0,0,0,0,4.663400,0,0),
(60276,17,-3363.577637,1615.618286,57.098583,0,0,0,0,0,0,0,0,0,0,1.806119,0,0),
(60276,18,-3365.995850,1625.432251,66.795067,0,0,0,0,0,0,0,0,0,0,1.374150,0,0),
(60276,19,-3360.840332,1639.688965,75.360352,0,0,0,0,0,0,0,0,0,0,1.158165,0,0),
(60276,20,-3355.079102,1652.479248,83.419128,0,0,0,0,0,0,0,0,0,0,1.411195,0,0),
(60276,21,-3355.262939,1662.151001,90.080475,0,0,0,0,0,0,0,0,0,0,1.998674,0,0),
(60276,22,-3361.813721,1670.348022,94.783272,0,0,0,0,0,0,0,0,0,0,2.583795,0,0),
(60276,23,-3377.158691,1675.288208,98.324844,0,0,0,0,0,0,0,0,0,0,2.841412,0,0);
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (194789,194956,194957,194958);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(194956, 45643, 100, 0, -45643, 1, 0),
(194956, 47241, 100, 0, 1, 1, 0), 
(194956, 45038, 10, 0, 1, 1, 0), 
(194958, 45643, 100, 0, -45643, 1, 0),
(194958, 45816, 100, 0, 1, 1, 0),
(194958, 47241, 100, 0, 1, 1, 0), 
(194958, 45038, 20, 0, 1, 1, 0), 
(194958, 45494, 0, 1, 1, 1, 0),
(194958, 45495, 0, 1, 1, 1, 0),
(194958, 45496, 0, 1, 1, 1, 0),
(194958, 45497, 0, 1, 1, 1, 0),
(194958, 45620, 0, 1, 1, 1, 0),
(194958, 45663, 0, 1, 1, 1, 0),
(194789, 45649, 100, 0, -45649, 1, 0),
(194789, 47241, 100, 0, 1, 1, 0), 
(194957, 45649, 100, 0, -45649, 1, 0),
(194957, 47241, 100, 0, 1, 1, 0),
(194957, 45787, 100, 0, 1, 1, 0),
(194957, 45982, 0, 1, 1, 1, 0),
(194957, 45988, 0, 1, 1, 1, 0),
(194957, 45989, 0, 1, 1, 1, 0),
(194957, 45990, 0, 1, 1, 1, 0),
(194957, 45993, 0, 1, 1, 1, 0);
DELETE FROM `reference_loot_template` WHERE `entry` in (45643,45649);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(45649, 45647, 0, 1, 1, 1, 0),
(45649, 45648, 0, 1, 1, 1, 0),
(45649, 45649, 0, 1, 1, 1, 0),
(45649, 45972, 0, 2, 1, 1, 0),
(45649, 45973, 0, 2, 1, 1, 0),
(45649, 45974, 0, 2, 1, 1, 0),
(45649, 45975, 0, 2, 1, 1, 0),
(45649, 45976, 0, 2, 1, 1, 0),
(45643, 45089, 10, 0, -45089, 1, 0),
(45643, 45489, 0, 2, 1, 1, 0),
(45643, 45490, 0, 2, 1, 1, 0),
(45643, 45491, 0, 2, 1, 1, 0),
(45643, 45492, 0, 2, 1, 1, 0),
(45643, 45493, 0, 2, 1, 1, 0),
(45643, 45641, 0, 1, 1, 1, 0),
(45643, 45642, 0, 1, 1, 1, 0),
(45643, 45643, 0, 1, 1, 1, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 36 AND delay = 1;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(36,1,0,0,0,0,0,0,2000001242,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000001242;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001242,'You have done well, $N. Continue your search for knowledge, and remember the history you have learned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM gameobject WHERE guid = 14760;
DELETE FROM `creature` WHERE `guid` = 125181;
DELETE FROM dbscripts_on_event WHERE id = 13256;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(13256,0,21,1,0,20781,122755,0x10,0,0,0,0,0,0,0,0,'20781 - active'),
(13256,2,20,2,0,20617,122747,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122751,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122742,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122745,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122749,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122746,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122744,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122752,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122753,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,122743,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,8,10,21504,44000,0,0,0,0,0,0,0,129.1348,4834.785,76.19424,0.06981317,'spawn - Pathaleon the Calculator\'s Image'),
(13256,100,18,0,0,20617,122748,7 | 0x10,0,0,0,0,0,0,0,0,''),
(13256,101,18,0,0,20617,122750,7 | 0x10,0,0,0,0,0,0,0,0,''),
(13256,102,20,0,0,20617,122747,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122751,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122742,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122745,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122749,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122746,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122744,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122752,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122753,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,122743,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,105,21,0,0,20781,122755,0x10,0,0,0,0,0,0,0,0,'20781 - unactive');
UPDATE creature_template SET InhabitType = 4 WHERE entry = 20617;
UPDATE creature SET spawntimesecs = 5 WHERE id = 20617;
DELETE FROM creature_movement WHERE id IN (122742,122743,122744,122745,122746,122747,122749,122751,122752,122753);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(122742,1,68.9566,4780.13,80.87505,3000,2061701,0,0,0,0,0,0,0,0,2.46091,0,0),
(122743,1,74.08681,4829.924,81.73363,3000,2061701,0,0,0,0,0,0,0,0,5.65487,0,0),
(122744,1,55.99306,4800.013,81.18014,3000,2061701,0,0,0,0,0,0,0,0,6.21337,0,0),
(122745,1,91.92361,4828.726,82.48882,3000,2061701,0,0,0,0,0,0,0,0,5.044,0,0),
(122746,1,105.2986,4823.434,83.29948,3000,2061701,0,0,0,0,0,0,0,0,1.98968,0,0),
(122747,1,113.6053,4812.225,83.72208,3000,2061701,0,0,0,0,0,0,0,0,5.88176,0,0),
(122749,1,113.9206,4793.067,83.29414,3000,2061701,0,0,0,0,0,0,0,0,3.63029,0,0),
(122751,1,100.5938,4776.241,81.56815,3000,2061701,0,0,0,0,0,0,0,0,1.55334,0,0),
(122752,1,68.9566,4780.13,80.87505,3000,2061701,0,0,0,0,0,0,0,0,4.4855,0,0),
(122753,1,84.66146,4771.719,81.1701,3000,2061701,0,0,0,0,0,0,0,0,6.0912,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2061701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2061701,1,15,35487,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE creature_template SET MovementType = 2 WHERE entry = 21504;
DELETE FROM creature_movement_template WHERE entry = 21504;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(21504,1,129.1348,4834.785,76.19424,50000,2150401,0,0,0,0,0,0,0,0,0.06981317,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150401,0,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,1,15,35468,0,20617,122750,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2150401,3,15,33900,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,4,0,0,0,0,0,0,2000001243,0,0,0,0,0,0,0,''),
(2150401,10,15,35471,0,20617,122748,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2150401,13,0,0,0,0,0,0,2000001244,0,0,0,0,0,0,0,''),
(2150401,22,0,0,0,0,0,0,2000001245,0,0,0,0,0,0,0,''),
(2150401,23,15,23017,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,27,14,23017,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,39,0,0,0,0,0,0,2000001246,0,0,0,0,0,0,0,''),
(2150401,41,10,19305,600000,0,0,0,0,0,0,0,108.7072,4839.411,78.57397,6.064728,'spawn - Goliathon <King of the Colossi>'),
(2150401,42,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001243 AND 2000001246;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000001243,'And just what do you think you are doing?  You dare to interfere with my master\'s experiment?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(2000001244,'Do you like what we\'ve done here?  Perhaps we will drop these crystals from the sky all over Outland.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000001245,'I grow bored with your attempt to heal the land and quell the energies summoning and driving the colossi mad.  Goliathon, King of the Colossi, Prince Kael\'thas and I demand that you defend the crystal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001246,'We will meet again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE creature_template SET MovementType = 2 WHERE entry = 19305;
DELETE FROM creature_movement_template WHERE entry = 19305;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(19305,1,108.7072,4839.411,78.57397,2000,1930501,0,0,0,0,0,0,0,0,6.064728,0,0),
(19305,2,134.45,4835.4,76.7612,600000,0,0,0,0,0,0,0,0,0,3.52038,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1930501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1930501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` =29476;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` =10134;
DELETE FROM dbscripts_on_quest_end WHERE id = 10258;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10258,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Commander Hogarth - active'),
(10258,1,10,20117,15000,0,0,0,0,0,0,0,-1186.952,2608.809,27.702,5.385233,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1192.142,2602.695,29.26251,0.08202434,''),
(10258,1,10,20117,15000,0,0,0,0,0,0,0,-1181.955,2611.131,27.30041,4.615656,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1183.653,2603.656,29.49267,6.092192,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1176.263,2604.513,29.68511,3.302124,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1184.48,2609.259,27.71925,5.011032,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1175.393,2607.397,28.85298,3.634733,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1178.365,2609.962,27.88143,4.123753,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1182.51,2608.35,28.12008,4.673831,''), 
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1189.117,2601.882,29.69882,0.2426594,''), 
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1179.461,2606.029,29.02162,3.810308,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1180.596,2598.148,35.23167,1.946922,''),
(10258,1,10,20117,15000,0,0,0,0,0,0,0,-1190.869,2607.063,27.9991,5.868977,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1179.811,2603.427,29.80272,3.126373,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1184.467,2606.898,28.44422,5.188805,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1186.627,2605.579,28.7169,5.790787,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1189.033,2604.599,28.8694,6.106967,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1185.68,2603.391,29.44758,5.188805,''),
(10258,1,10,19863,20000,0,0,0,0,0,0,0,-1181.975,2605.763,28.94763,4.406826,''),
(10258,17,28,0,0,19863,20,7,0,0,0,0,0,0,0,0,''),
(10258,18,1,3,0,19863,20,7,0,0,0,0,0,0,0,0,''),
(10258,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Commander Hogarth - unactive');
UPDATE quest_template SET CompleteScript = 10258 WHERE entry = 10258;
UPDATE creature SET modelid = 16502, spawndist = 0, MovementType = 0 WHERE guid = 57163;
DELETE FROM creature_template_addon WHERE entry = 20117;
INSERT INTO creature_template_addon VALUES (20117,0,0,1,0,0,0,33900);
DELETE FROM creature_template_addon WHERE entry = 19863;
INSERT INTO creature_template_addon VALUES (19863,0,8,1,0,0,0,33900);
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` in (10229,10230,10250);
UPDATE `creature_template` SET `FactionAlliance` = 1771, `FactionHorde` = 1771 WHERE `Entry` =19862;
UPDATE `creature_template` SET `FactionAlliance` = 1935, `FactionHorde` = 1935 WHERE `Entry` =20137;
DELETE FROM `gameobject` WHERE `guid` = 37367;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(9301, 193997, 571, 1, 6, 7155.12, -2096.03, 764.428, 2.53072, 0, 0, 0, 1, 300, 100, 1),
(9300, 193997, 571, 1, 6, 7218.2, -2139.83, 863.085, -1.09956, 0, 0, 0, 1, 300, 100, 1),
(46602, 193997, 571, 1, 6, 7330.44, -2212.68, 800.483, 4.25861, 0, 0, 0, 1, 300, 100, 1),
(9299, 193997, 571, 1, 6, 7211.5, -2373.86, 781.449, 4.38078, 0, 0, 0, 1, 300, 100, 1),
(9297, 193997, 571, 1, 6, 6973.8, -2096.83, 777.638, 3.26377, 0, 0, 0, 1, 300, 100, 1),
(9294, 193997, 571, 1, 6, 7310.71, -2812.07, 798.081, 1.5708, 0, 0, 0, 1, 300, 100, 1),
(9293, 193997, 571, 1, 6, 7301.01, -2746.12, 749.508, 0.157079, 0, 0, 0, 1, 300, 100, 1),
(46640, 193997, 571, 1, 6, 7550.37, -3154.98, 840.146, 4.41568, 0, 0, 0, 1, 300, 100, 1),
(9292, 193997, 571, 1, 6, 7177.29, -3071.11, 862.298, 0.680677, 0, 0, 0, 1, 300, 100, 1),
(9291, 193997, 571, 1, 6, 7694.28, -3154.72, 869.769, 3.76991, 0, 0, 0, 1, 300, 100, 1);
UPDATE `gameobject` SET `rotation2` = 0, `rotation3` = 1 WHERE `guid` =52864;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14644', '2', 'Everfrost Chip');
REPLACE INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES ('193997', '14644', '0', 'Everfrost Chip');
UPDATE `gameobject` SET `spawntimesecs` = 900 WHERE `id` = 193997;
UPDATE `gameobject_loot_template` SET `condition_id` = 1702 WHERE `entry` =193997 AND `item` =44729;
UPDATE `gameobject_loot_template` SET `condition_id` = 0 WHERE `entry` =193997 AND `item` =44725;
UPDATE `gameobject_loot_template` SET `condition_id` = 247 WHERE `entry` =193997 AND `item` =44724;
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(247, 5, 1119, 4),
(248, 30, 1119, 4),
(1701, 5, 1119, 3),
(1702, -1, 248, 1701);
DELETE FROM dbscripts_on_quest_end WHERE id IN (994,995);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(994,0,31,3694,15,0,0,0x08,0,0,0,0,0,0,0,0,''),
(994,1,10,3694,650000,0,0,0,0,0,0,0,6339.14,341.764,24.3387,0.498114,'spawn Sentinel Selarin'),
(995,0,31,3694,15,0,0,0x08,0,0,0,0,0,0,0,0,''),
(995,1,10,3694,650000,0,0,0,0,0,0,0,6339.14,341.764,24.3387,0.498114,'spawn Sentinel Selarin');
UPDATE quest_template SET CompleteScript = 994 WHERE entry = 994;
UPDATE quest_template SET CompleteScript = 995 WHERE entry = 995;
DELETE FROM `creature` WHERE `guid` = 44187;
UPDATE creature_template SET FactionAlliance = 80, FactionHorde = 80, SpeedWalk = 1, MovementType = 2 WHERE entry = 3694;
DELETE FROM creature_template_addon WHERE entry = 3694;
INSERT INTO creature_template_addon VALUES (3694,0,0,1,1,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 3694;
INSERT INTO creature_movement_template VALUES
(3694,1,6339.14,341.764,24.3387,1000,369401,0,0,0,0,0,0,0,0,0.498114,0,0),
(3694,2,6353.39,354.557,22.3779,0,0,0,0,0,0,0,0,0,0,0.768994,0,0),
(3694,3,6368.99,357.894,21.5712,0,0,0,0,0,0,0,0,0,0,0.171388,0,0),
(3694,4,6387.81,359.455,18.9899,0,0,0,0,0,0,0,0,0,0,0.328468,0,0),
(3694,5,6398.12,363.588,17.366,0,0,0,0,0,0,0,0,0,0,0.505183,0,0),
(3694,6,6403.68,370.92,15.6815,0,0,0,0,0,0,0,0,0,0,0.983488,0,0),
(3694,7,6416.57,392.998,12.0215,0,0,0,0,0,0,0,0,0,0,0.944219,0,0),
(3694,8,6424.95,399.193,10.9586,0,0,0,0,0,0,0,0,0,0,0.0292295,0,0),
(3694,9,6428.93,396.971,11.1736,0,0,0,0,0,0,0,0,0,0,5.0974,0,0),
(3694,10,6432,388.708,13.7662,0,0,0,0,0,0,0,0,0,0,5.02044,0,0),
(3694,11,6436.71,375.264,13.9403,0,0,0,0,0,0,0,0,0,0,4.74006,0,0),
(3694,12,6434.92,367.203,13.9403,600000,369402,0,0,0,0,0,0,0,0,4.6089,0,0),
(3694,13,6436.9,374.833,13.9403,0,0,0,0,0,0,0,0,0,0,1.85765,0,0),
(3694,14,6431.63,389.723,13.5875,0,0,0,0,0,0,0,0,0,0,1.96918,0,0),
(3694,15,6428.84,397.45,11.0941,0,0,0,0,0,0,0,0,0,0,2.58414,0,0),
(3694,16,6424,400.084,10.9784,0,0,0,0,0,0,0,0,0,0,3.33734,0,0),
(3694,17,6413.76,392.804,12.2825,0,0,0,0,0,0,0,0,0,0,4.12981,0,0),
(3694,18,6401.4,368.195,16.4249,0,0,0,0,0,0,0,0,0,0,3.85806,0,0),
(3694,19,6393.69,360.887,18.1549,0,0,0,0,0,0,0,0,0,0,3.44736,0,0),
(3694,20,6377.21,357.731,20.6589,0,0,0,0,0,0,0,0,0,0,3.04995,0,0),
(3694,21,6358.35,357.353,22.2106,0,0,0,0,0,0,0,0,0,0,3.50941,0,0),
(3694,22,6348.45,352.662,22.6056,0,0,0,0,0,0,0,0,0,0,4.03249,0,0),
(3694,23,6322.42,326.649,25.3338,2000,369403,0,0,0,0,0,0,0,0,3.91389,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 369401 AND 369403; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(369401,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sentinel Selarin active'),
(369401,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(369402,3,0,0,0,0,0,0,2000001247,0,0,0,0,0,0,0,''),
(369403,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sentinel Selarin unactive'),
(369403,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry = 2000001247;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001247,'Terenthis, Raene sent me to find you. The Sentinels are in need of help in Ashenvale.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE quest_template SET PrevQuestid = 0 WHERE entry = 990;
UPDATE quest_template SET NextQuestid = 990 WHERE entry IN (994,995);
UPDATE `quest_template` SET `PrevQuestId` = 984, `NextQuestId` = 0 WHERE `entry` =4761;
UPDATE `gossip_menu` SET `condition_id` = 0 WHERE `entry` =5502 AND `text_id` =6553;
UPDATE `gossip_menu` SET `condition_id` = 314 WHERE `entry` =5502 AND `text_id` =6555;
DELETE FROM spell_script_target WHERE entry IN (47184);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(47184,1,26590,0);
DELETE FROM creature_linking_template WHERE entry IN (26589);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26589, 571, 26588, 512, 100);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2658601','26586','0','0','100','1','1000','2000','15000','20000','11','32019','1','0','0','0','0','0','0','0','0','0','Hungry Worg - Cast Gore'),
('2658901','26589','4','0','100','0','0','0','0','0','45','3','50','0','0','0','0','0','0','0','0','0','Mr. Floppy - Send AI Event on Aggro'),
('2658902','26589','2','0','100','1','20','0','1000','5000','45','1','50','0','0','0','0','0','0','0','0','0','Mr. Floppy - Send AI Event on Critical Health'),
('2658903','26589','6','0','100','0','0','0','0','0','45','0','50','0','0','0','0','0','0','0','0','0','Mr. Floppy - Send AI Event on Death'),
('2659001','26590','0','0','100','1','1000','2000','15000','20000','11','32019','1','0','0','0','0','0','0','0','0','0','Ravenous Worg - Cast Gore');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry in (26586,26589,26590);
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, UnitFlags=UnitFlags|768 WHERE entry IN (26586,26590);
DELETE FROM dbscripts_on_spell WHERE id IN (42436);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(42436,0,15,42523,8,'Cast Weak Alcohol'),
(42436,0,15,42536,10,'Cast Brewfest Request Chick Chuck Mug'),
(42436,1,15,47173,10,'Cast Brewfest - Dark Iron Attack - Intro -  Assign Kill Credit'),
(42436,1,15,43126,10,'Cast Mug Target Practice'),
(42436,1,15,43073,10,'Cast Mug Target Practice');
DELETE FROM spell_script_target WHERE entry IN (42436);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(42436,1,24108,0);
DELETE FROM dbscripts_on_quest_start WHERE id = 8447;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8447,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Remulos active'),
(8447,1,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag removed'),
(8447,3,0,0,0,0,0,0,2000001248,0,0,0,0,0,0,0,''),
(8447,6,3,0,0,0,0,0,0,0,0,0,7841.78,-2226.41,468.062,4.27031,''),
(8447,7,3,0,0,0,0,0,0,0,0,0,7828.99,-2246.58,463.559,4.44419,''),
(8447,11,3,0,0,0,0,0,0,0,0,0,7824.59,-2280.33,459.171,4.52666,''),
(8447,16,3,0,0,0,0,0,0,0,0,0,7817.51,-2302.91,456.077,3.83315,''),
(8447,19,3,0,0,0,0,0,0,0,0,0,7808.83,-2304.32,455.411,3.81116,''),
(8447,21,3,0,0,0,0,0,0,0,0,0,7788.35,-2321.57,454.651,3.49596,''),
(8447,24,3,0,0,0,0,0,0,0,0,0,7775.52,-2324.3,454.189,3.10954,''),
(8447,26,3,0,0,0,0,0,0,0,0,0,7755.16,-2315.33,455.235,2.95796,''),
(8447,31,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(8447,35,0,0,0,0,0,0,2000001249,0,0,0,0,0,0,0,''),
(8447,40,15,25004,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8447,50,10,17949,180000,0,0,0,0,0,0,0,7738.52,-2314.8,454.679,0.046443,'summon'),
(8447,54,0,0,0,0,0,0,2000001250,0,0,0,0,0,0,0,''),
(8447,57,0,0,0,17949,20,7,2000001251,0,0,0,0,0,0,0,''),
(8447,61,1,0,0,17949,20,7,0,0,0,0,0,0,0,0,''),
(8447,62,0,0,0,0,0,0,2000001252,0,0,0,0,0,0,0,''),
(8447,70,0,0,0,17949,20,7,2000001253,0,0,0,0,0,0,0,''),
(8447,80,1,0,0,17949,20,7,0,0,0,0,0,0,0,0,''),
(8447,81,0,0,0,0,0,0,2000001254,0,0,0,0,0,0,0,''),
(8447,84,0,0,0,17949,20,7,2000001255,0,0,0,0,0,0,0,''),
(8447,89,0,0,0,0,0,0,2000001256,0,0,0,0,0,0,0,''),
(8447,99,0,0,0,17949,20,7,2000001257,0,0,0,0,0,0,0,''),
(8447,116,1,0,0,17949,20,7,0,0,0,0,0,0,0,0,''),
(8447,117,0,0,0,17949,20,7,2000001258,0,0,0,0,0,0,0,''),
(8447,121,1,0,0,17949,20,7,0,0,0,0,0,0,0,0,''),
(8447,122,0,0,0,0,0,0,2000001259,0,0,0,0,0,0,0,''),
(8447,125,18,0,0,17949,20,7,0,0,0,0,0,0,0,0,'malfurion desp'),
(8447,125,7,8447,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8447,126,0,0,0,0,0,0,2000001260,0,0,0,0,0,0,0,''),
(8447,128,3,0,0,0,0,0,0,0,0,0,7848.3,-2216.35,470.888,0.572632,''),
(8447,148,3,0,0,0,0,0,0,0,0,0,0,0,0,3.90954,''),
(8447,149,29,3,0x01,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added'),
(8447,149,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Remulos unactive');
UPDATE quest_template SET StartScript = 8447 WHERE entry = 8447;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001248 AND 2000001260;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001248,'Come, $N. The lake is around the bend.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001249,'Stand near me, $N. I will protect you should anything go wrong.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001250,'Malfurion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001251,'Remulos, old friend. It is good to see you once more. I knew the message would find its way to you - one way or another.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,378,NULL),
(2000001252,'It was shrouded in nightmares, Malfurion. What is happening in the Dream? What could cause such atrocities?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001253,'I fear for the worst, old friend. Within the Dream we fight a new foe, born of an ancient evil. Ysera\'s noble brood has fallen victim to the old whisperings. It seems as if the Nightmare has broken through the realm to find a new host on Azeroth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,378,NULL),
(2000001254,'I sensed as much, Malfurion. Dark days loom ahead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001255,'Aye Remulos, prepare the mortal races.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001256,'You have been gone too long, Malfurion. Peace between the Children of Azeroth has become tenuous at best. What of my father? Of your brother? Have you any news?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001257,'Cenarius fights at my side. Illidan sits atop his throne in Outland - brooding. I\'m afraid that the loss to Arthas proved to be his breaking point. Madness has embraced him, Remulos. He replays the events in his mind a thousand times per day, but in his mind, he is the victor and Arthas is utterly defeated. He is too far gone, old friend. I fear that the time may soon come that our bond is tested and it will not be as it was at the Well in Zin-Azshari. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,378,NULL),
(2000001258,'Remulos, I am being drawn back... Tyrande... send her my love... Tell her I am safe... Tell her... Tell her I will return... Farewell...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,378,NULL),
(2000001259,'Farewell, old friend... Farewell...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001260,'Let us return to the grove, mortal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM spell_target_position WHERE id = 25004;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z,  target_orientation) VALUES
(25004,1,7738.52,-2314.8,452.679,0);
UPDATE creature_template SET FactionAlliance = 994, FactionHorde = 994,  InhabitType = 4 WHERE entry = 17949;
DELETE FROM creature_template_addon WHERE entry = 17949;
INSERT INTO creature_template_addon VALUES (17949,0,0,1,0,0,0,24999);
Delete from creature_ai_scripts where id=1794901;
Insert into creature_ai_scripts values 
('1794901','17949','11','0','100','0','0','0','0','0','11','17321','0','1','0','0','0','0','0','0','0','0','Malfurion Stormrage - spawn effect');
UPDATE creature_template SET AIName='EventAI' WHERE entry = '17949';
DELETE FROM dbscripts_on_quest_end WHERE id = 4974;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4974,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall active'),
(4974,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(4974,2,13,0,0,175787,20,1,0,0,0,0,0,0,0,0,'use gobject'),
(4974,3,0,0,0,0,0,0,2000000670,0,0,0,0,0,0,0,''),
(4974,8,15,16609,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4974,11,0,0,0,0,0,0,2000000671,0,0,0,0,0,0,0,''),
(4974,15,28,5,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(4974,16,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall unactive');
UPDATE db_script_string SET emote = 5 WHERE entry = 2000000670;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000671;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40123, 4949, 1, 1, 1, 0, 0, 1920.01, -4123.95, 43.63, 4.79965, 7200, 0, 0, 5578000, 127740, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(9991, 175787, 1, 1, 1, 1917.5, -4125.08, 42.9511, -1.20428, 0, 0, -0.566406, 0.824126, 600, 100, 1);
UPDATE `creature_template_addon` SET `bytes1` = 5, `emote` = 0 WHERE `entry` =4949;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40143, 3144, 1, 1, 1, 0, 0, 1905.75, -4161.37, 41.0035, 0.488692, 300, 0, 0, 484, 0, 0, 0);
DELETE FROM dbscripts_on_quest_end WHERE id = 9438;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9438,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall active'),
(9438,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'4949 - NpcFlag removed'),
(9438,2,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9438,6,0,0,0,0,0,0,2000001261,0,0,0,0,0,0,0,''),
(9438,10,3,0,0,0,0,0,0,0,0,0,1923.52,-4136.32,40.574,4.80241,''),
(9438,18,0,0,0,0,0,0,2000001262,0,0,0,0,0,0,0,''),
(9438,22,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(9438,23,25,1,0,3144,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(9438,25,0,0,0,0,0,0,2000001263,0,0,0,0,0,0,0,''),
(9438,26,3,0,0,3144,50,7,0,0,0,0,1923.41,-4138.83,40.608,0.540048,''),
(9438,31,3,0,0,3144,50,7,0,0,0,0,0,0,0,1.61604,''),
(9438,33,0,0,0,3144,20,7,2000001264,0,0,0,0,0,0,0,'force buddy to: say text'),
(9438,38,0,0,0,0,0,0,2000001265,0,0,0,0,0,0,0,''),
(9438,43,28,8,0,3144,20,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(9438,45,0,0,0,3144,20,7,2000001266,0,0,0,0,0,0,0,'force buddy to: say text'),
(9438,48,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9438,49,3,0,0,0,0,0,0,0,0,0,1920.33,-4126.62,43.1443,1.62468,''),
(9438,54,3,0,0,0,0,0,0,0,0,0,0,0,0,4.86366,''),
(9438,57,0,0,0,0,0,0,2000001267,0,0,0,0,0,0,0,''),
(9438,60,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9438,61,25,0,0,3144,50,7,0,0,0,0,0,0,0,0,'RUN OFF'),
(9438,62,28,0,0,3144,50,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9438,63,3,0,0,3144,50,7,0,0,0,0,1925.12,-4137.15,40.6369,2.32692,''),
(9438,64,3,0,0,3144,50,7,0,0,0,0,1923.25,-4136.01,40.5651,2.4243,''),
(9438,67,0,0,0,3144,50,7,2000001268,0,0,0,0,0,0,0,'force buddy to: say text'),
(9438,69,0,0,0,0,0,0,2000001269,0,0,0,0,0,0,0,''),
(9438,69,3,0,0,3144,50,7,0,0,0,0,1905.75,-4161.37,41.0035,0.488692,''),
(9438,70,3,0,0,0,0,0,0,0,0,0,1920.01,-4124.28,43.6129,1.62468,''),
(9438,72,3,0,0,0,0,0,0,0,0,0,0,0,0,4.79965,''),
(9438,73,28,5,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(9438,73,3,0,0,0,0,0x08,0,0,0,0,1920.01,-4123.75,43.6129,4.79965,''),
(9438,74,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'4949 - NpcFlag added'),
(9438,82,3,0,0,3144,50,7,0,0,0,0,0,0,0,0.488692,''),
(9438,83,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall unactive');
UPDATE quest_template SET CompleteScript = 9438 WHERE entry = 9438;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001261 AND 2000001269;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001261,'My people have survived in Outland...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001262,'Unnoticed for years...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001263,'...uncorrupted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001264,'Thrall! My lord... are you all right?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001265,'I\'ll be fine, Eitrigg.  We must begin preparations... I need to go to Outland at once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001266,'With all due respect, Warchief.  Our enemies would take advantage of your sudden absence if we don\'t prepare properly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001267,'You are right, Eitrigg.  The timing is unfavorable.  Make sure our best ambassadors are sent as envoys to Hellscream.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001268,'At once, sir! For the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,66,NULL),
(2000001269,'If he\'s anything like his father, allying with the Mag\'har will mark the dawn of a new age for the Horde.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000001270 AND 2000001274;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001270,'You heard the fleshling! MOVE OUT!',0,0,0,1,'Captain Saeed - say quest start'),
(2000001271,'Tell me when you are ready, $N. We will attack on your command.',0,0,0,0,'Captain Saeed - say attack prepare'),
(2000001272,'It\'s now or never, soldiers! Let\'s do this! For K\'aresh! For the Protectorate!',0,0,0,0,'Captain Saeed - say attack start'),
(2000001273,'The time for your destruction has finally come, Dimensius!',0,0,0,0,'Captain Saeed - say taunt dimensius'),
(2000001274,'We won. Dimensius no more. Report this proffesor Dabiri.',0,0,0,0,'Captain Saeed - say quest complete');
DELETE FROM conditions WHERE condition_entry BETWEEN 2193 AND 2196;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUES
(2193,9,10439,0),
(2194,-1,2084,2193),
(2195,33,36,0),
(2196,-1,2193,2195);
DELETE FROM gossip_menu WHERE entry=8228;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(8228,10229,0,0),
(8228,10232,0,2196);
DELETE FROM gossip_menu_option WHERE menu_id=8228;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8228,0,0,'I am that fleshling, Saeed. Let\'s go!',1,1,-1,0,8228,0,0,'',2194),
(8228,1,0,'I am ready! Let\'s finish Dimensius!',1,1,-1,0,126,0,0,'',2196);
DELETE FROM dbscripts_on_gossip WHERE id=8228;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,dataint,comments) VALUES 
(8228,0,0,0,0,2000001270,'Captain Saeed - say quest start'),
(8228,0,8,0,0,0,'Captain Saeed - kill credit'),
(8228,0,22,495,1,0,'Captain Saeed - set temp faction'),
(8228,3,1,15,0,0,'Captain Saeed - handle emote'),
(8228,3,35,5,25,0,'Captain Saeed - send event custom A'),
(8228,0,29,1,2,0,'Captain Saeed - remove Gossip Flag'),
(8228,9,25,1,0,0,'Captain Saeed - set Run = true'),
(8228,10,32,0,0,0,'Captain Saeed - resume WP movement');
DELETE FROM dbscripts_on_gossip WHERE id=126;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,dataint,comments) VALUES 
(126,0,0,1,0,2000001272,'Captain Saeed - say attack start'),
(126,0,29,1,2,0,'Captain Saeed - remove Gossip Flag'),
(126,3,32,0,0,0,'Captain Saeed - resume WP movement');
DELETE FROM creature_linking_template WHERE entry IN (20984,21783,21805,21780);
INSERT INTO creature_linking_template (entry,map,master_entry,flag,search_range) VALUES
(20984,530,20985,8705,60),
(21783,530,20985,8705,60),
(21805,530,20985,8705,60),
(21780,530,19554,4112,60);
DELETE FROM creature_movement_template WHERE entry=20985;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(20985, 1, 4264.29, 2102.70, 140.839, 1000, 2098501, 6.108), 
(20985, 2, 4257.76, 2099.95, 143.481, 0, 0, 0),
(20985, 3, 4249.97, 2105.68, 144.083, 0, 0, 0),
(20985, 4, 4246.45, 2111.34, 144.552, 0, 0, 0),
(20985, 5, 4244.12, 2117.80, 145.031, 0, 0, 0),
(20985, 6, 4233.49, 2118.49, 149.540, 0, 0, 0),
(20985, 7, 4221.95, 2117.72, 153.124, 0, 0, 0),
(20985, 8, 4209.70, 2114.40, 155.606, 0, 0, 0),
(20985, 9, 4204.60, 2110.80, 160.063, 0, 0, 0),
(20985, 10, 4180.80, 2081.76, 161.666, 0, 0, 0),
(20985, 11, 4174.75, 2070.90, 164.385, 0, 0, 0),
(20985, 12, 4174.37, 2058.48, 169.121, 0, 0, 0),
(20985, 13, 4178.27, 2051.20, 172.750, 0, 0, 0),
(20985, 14, 4182.15, 2044.52, 176.056, 0, 0, 0),
(20985, 15, 4185.74, 2035.18, 179.999, 0, 0, 0),
(20985, 16, 4186.65, 2023.36, 184.971, 0, 0, 0),
(20985, 17, 4185.54, 2014.54, 189.862, 0, 0, 0),
(20985, 18, 4182.17, 2006.35, 195.371, 0, 0, 0),
(20985, 19, 4177.94, 1999.77, 200.164, 0, 0, 0),
(20985, 20, 4173.38, 1994.37, 203.833, 0, 0, 0),
(20985, 21, 4168.69, 1989.66, 206.921, 0, 0, 0),
(20985, 22, 4162.75, 1984.90, 209.942, 0, 0, 0),
(20985, 23, 4157.40, 1981.32, 212.398, 0, 0, 0),
(20985, 24, 4150.51, 1977.62, 215.067, 0, 0, 0),
(20985, 25, 4144.56, 1974.64, 217.155, 0, 0, 0),
(20985, 26, 4134.58, 1969.06, 220.354, 0, 0, 0),
(20985, 27, 4117.35, 1985.00, 223.929, 0, 0, 0),
(20985, 28, 4110.04, 1994.40, 226.897, 0, 0, 0),
(20985, 29, 4104.33, 2005.52, 229.987, 0, 0, 0),
(20985, 30, 4097.22, 2020.26, 234.464, 0, 0, 0),
(20985, 31, 4083.09, 2037.36, 240.329, 0, 0, 0),
(20985, 32, 4070.09, 2051.12, 246.065, 0, 0, 0),
(20985, 33, 4057.96, 2062.31, 250.666, 0, 0, 0),
(20985, 34, 4034.90, 2077.34, 254.478, 0, 0, 0),
(20985, 35, 4002.98, 2097.80, 254.212, 0, 0, 0),
(20985, 36, 3992.89, 2088.86, 254.330, 1000, 2098536, 4.073),
(20985, 37, 3989.38, 2083.54, 256.337, 0, 0, 0),
(20985, 38, 3984.63, 2077.76, 256.405, 0, 0, 0),
(20985, 39, 3978.75, 2066.79, 256.405, 0, 0, 0),
(20985, 40, 3959.94, 2039.18, 257.630, 0, 0, 0),
(20985, 41, 3955.86, 2030.96, 257.812, 1000, 2098541, 4.133);
UPDATE creature SET MovementType=2 WHERE guid=57509;
DELETE FROM dbscripts_on_creature_movement WHERE id=2098501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2098501,0,32,1,0,0,'Captain Saeed - pause WP Movement');
DELETE FROM dbscripts_on_creature_movement WHERE id=2098536;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2098536,0,32,1,0,0,'Captain Saeed - pause WP Movement'),
(2098536,0,29,1,1,0,'Captain Saeed - add Gossip Flag'),
(2098536,0,0,0,0,2000001271,'Captain Saeed - say attack prepare');
DELETE FROM dbscripts_on_creature_movement WHERE id=2098541;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2098541,0,0,0,0,0,0,0,2000001273,'Captain Saeed - say taunt dimensius'),
(2098541,0,32,1,0,0,0,0,0,'Captain Saeed - pause WP Movement'),
(2098541,3,23,0,0,19554,40,0,0,'Dimensius the All-Devouring - demorph to original form'),
(2098541,6,35,6,40,0,0,0,0,'Captain Saeed - send event custom B'),
(2098541,7,26,0,0,19554,40,1,0,'Captain Saeed - attack Dimensius the All-Devouring');
DELETE FROM dbscripts_on_creature_death WHERE id=19554;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(19554,0,0,0,0,20985,50,0,2000001274,'Captain Saeed - say quest complete'),
(19554,10,18,0,0,20985,50,7,0,'Captain Saeed - despawn self');
UPDATE creature_template SET MovementType = 2 WHERE entry = 5669;
DELETE FROM creature_movement_template WHERE entry = 5669;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(5669,1,1717.102,290.1813,-62.10684,7000,361,0,0,0,0,0,0,0,0,5.026548,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 361; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(361,1,15,9008,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE gameobject SET position_x = -722.991, position_y = 4168.96, position_z = 50.4291 WHERE guid = 49515;
DELETE FROM dbscripts_on_quest_end WHERE id = 9483;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9483,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(9483,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Viera Sunwhisper - active'),
(9483,3,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9483,6,0,0,0,0,0,0,2000001275,0,0,0,0,0,0,0,''),
(9483,6,32,1,0,17230,59652,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(9483,7,25,1,0,17230,59652,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(9483,8,3,0,0,0,0,0,0,0,0,0,-656.13,4146.6,64.128,2.16845,''),
(9483,8,3,0,0,17230,59652,7 | 0x10,0,0,0,0,-656.13,4146.6,64.128,2.16845,''),
(9483,11,3,0,0,0,0,0,0,0,0,0,-682.265,4148.52,63.9026,1.87414,''),
(9483,18,3,0,0,17230,59652,7 | 0x10,0,0,0,0,-682.265,4148.52,63.9026,1.87414,''),
(9483,19,3,0,0,0,0,0,0,0,0,0,-699.983,4184.54,57.9007,2.85353,''),
(9483,20,25,0,0,17230,59652,7 | 0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(9483,21,3,0,0,17230,59652,7 | 0x10,0,0,0,0,-699.983,4184.54,57.9007,2.85353,''),
(9483,30,3,0,0,0,0,0,0,0,0,0,-718.249,4174.95,51.9827,4.24132,''),
(9483,31,3,0,0,17230,59652,7 | 0x10,0,0,0,0,-718.249,4174.95,51.9827,4.24132,''),
(9483,37,3,0,0,0,0,0,0,0,0,0,-719.781,4168.6,51.2242,4.51228,''),
(9483,38,3,0,0,17230,59652,7 | 0x10,0,0,0,0,-718.649,4170.65,51.8661,4.50951,''),
(9483,36,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(9483,93,31,17230,220,0,0,0,0,0,0,0,0,0,0,0,''),
(9483,94,18,0,0,17230,59652,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9483,94,18,0,0,17226,59664,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9483 WHERE entry = 9483;
UPDATE creature SET spawntimesecs = 60 WHERE guid = 59652;
UPDATE creature SET spawntimesecs = 60 WHERE guid = 59664;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17226;
DELETE FROM creature_movement_template WHERE entry = 17226;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(17226,1,-719.781,4168.6,51.2242,7000,1722601,0,0,0,0,0,0,0,0,4.51228,0,0),
(17226,2,-723.602,4123.29,49.3491,1000,1722602,0,0,0,0,0,0,0,0,4.60652,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1722601,1722602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1722601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1722601,1,25,1,0,17230,59652,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1722601,1,0,0,0,0,0,0,2000001276,0,0,0,0,0,0,0,''),
(1722601,5,0,0,0,0,0,0,2000001277,0,0,0,0,0,0,0,''),
(1722601,7,0,0,0,0,0,0,2000001278,0,0,0,0,0,0,0,''),
(1722601,11,3,0,0,17230,59652,7 | 0x10,0,0,0,0,-723.602,4123.29,49.3491,4.60652,''),
(1722601,9,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Viera Sunwhisper - unactive'),
(1722601,17,18,0,0,17230,59652,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1722602,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001275 AND 2000001278;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001275,'Ok, let\'s go.  I know just the perfect spot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001276,'What... is happening... to me?  Get this cat away from me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001277,'Twinkle looks at Viera Sunwhisper with very hungry eyes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001278,'%s scurries away, attempting to flee from Twinkle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
DELETE FROM creature_linking_template WHERE entry IN (25598,25603);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25598, 580, 25588, 4096, 0),
(25603, 580, 25588, 4112, 0);
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, MinLevel=72, MaxLevel=72, Expansion=0, UnitFlags=UnitFlags|33555200, MinLevelHealth=52, MaxLevelHealth=52 WHERE entry=25603;
REPLACE INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`) VALUES
(6066, 8377, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` in (26499,26533);
#
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2881701, 28817, 11, 0, 100, 0, 0, 0, 0, 0, 11, 52464, 0, 0, 3, 0, 25703, 0, 0, 0, 0, 0, 'Mine Car - cast Summon Scarlet Miner on spawn'),
(2886401, 28864, 11, 0, 100, 0, 0, 0, 0, 0, 11, 43775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourge Gryphon - cast Flight on spawn');
#
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1794901','17949','11','0','100','0','0','0','0','0','11','17321','0','1','0','0','0','0','0','0','0','0','Malfurion Stormrage - Cast Spirit Spawn-in on Spawned'),
('1684701','16847','8','0','100','0','29314','-1','0','0','48','1','2','0','1','-742','-743','-744','0','0','0','0','Debilitated Mag\'har Grunt - Set random movement and Yell random text on Spell hit'),
('1722601','17226','8','0','100','0','30077','-1','0','0','33','17226','6','0','48','2','0','0','0','0','0','0','Viera Sunwhisper - Kill Credit and WP movement on Spell Hit'),
('1930507','19305','11','0','100','0','0','0','0','0','11','7741','0','1','0','0?','0','0','0','0','0','0','Goliathon - Cast Summoned Demon on Spawned'),
('1942001','19420','11','0','100','0','0','0','0','0','11','24240','0','1','0','?0','0','0','0','0','0','0','Goliathon Shardling - Cast Spawn - Red Lightning on Spawned'),
('2213801','22138','1','0','75','1','1000','1000','48000','55000','11','38469','0','0','0','0','0','0','0','0','0','0','Dark Conclave Ritualist - Dark Conclave Ritualist Channel while OOC'),
('2653301','26533','11','0','100','6','0','0','0','0','11','51908','0','0','0','0','0','0','0','0','0','0','Mal\'Ganis - Cast Cosmetic - Shadowstep on Spawned'),
('2653302','26533','4','0','100','6','0','0','0','0','1','-871','0','0','42','1','1','0','0','0','0','0','Mal\'Ganis - Yell and Set Invinceability at 1% on Aggro'),
('2653303','26533','0','0','100','3','7000','12000','18000','24000','11','58849','5','1','1','-872','-873','0','0','0','0','0','Mal\'Ganis (Normal) - Cast Sleep and Yell'),
('2653304','26533','0','0','100','5','7000','12000','18000','24000','11','52721','5','1','1','-872','-873','0','0','0','0','0','Mal\'Ganis (Heroic) - Cast Sleep and Yell'),
('2653305','26533','0','0','100','3','4000','8000','21000','26000','11','52720','1','0','0','0','0','0','0','0','0','0','Mal\'Ganis (Normal) - Cast Carrion Swarm'),
('2653306','26533','0','0','100','5','4000','8000','21000','26000','11','58852','1','0','0','0','0','0','0','0','0','0','Mal\'Ganis (Heroic) - Cast Carrion Swarm'),
('2653307','26533','0','0','100','3','9000','17000','13000','17000','11','52722','4','0','0','0','0','0','0','0','0','0','Mal\'Ganis (Normal) - Cast Mind Blast'),
('2653308','26533','0','0','100','5','9000','17000','13000','17000','11','58850','4','0','0','0','0','0','0','0','0','0','Mal\'Ganis (Heroic) - Cast Mind Blast'),
('2653309','26533','0','0','100','7','14000','25000','30000','45000','11','52723','0','1','0','0','0','0','0','0','0','0','Mal\'Ganis - Cast Vampiric Touch'),
('2653310','26533','5','0','100','7','5000','5000','0','0','1','-874','-875','-876','0','0','0','0','0','0','0','0','Mal\'Ganis - Yell on Player Kill'),
('2653311','26533','2','0','100','6','1','0','0','0','18','33554434','0','0','24','0','0','0','23','1','0','0','Mal\'Ganis - Set Unattackable and UnSelectable and Evade and Set Phase 1 at 1% HP'),
('2653312','26533','21','1','100','6','0','0','0','0','1','-870','0','0','41','8000','0','0','34','6','3','0','Mal\'Ganis - Outro Yell and Delayed Despawn and Set Instance Data on Reached Home'),
('2774503','27745','30','0','100','6','5','26499','0','0','5','66','0','0','0','0','0','0','0','0','0','0','Lordaeron Footman - Emote on AI Event Received'),
('2774601','27746','30','0','100','6','5','26499','0','0','5','66','0','0','0','0','0','0','0','0','0','0','Lordaeron Knight - Emote on AI Event Received'),
('2774713','27747','30','0','100','6','5','26499','0','0','5','66','0','0','0','0','0','0','0','0','0','0','High Elf Mage-Pries - Emote on AI Event received'),
('2775201','27752','30','0','100','6','5','26499','0','0','5','66','0','0','0','0','0','0','0','0','0','0','High Elf Sorceress - Emote on AI Event Received'),
('2816701','28167','30','0','100','6','5','26533','0','0','36','27737','0','0','11','52225','0','2','0','0','0','0','Stratholme Citizen - Update Entry and Cast Cosmetic - Infected Wounds on AI Event received'),
('2816901','28169','30','0','100','6','5','26533','0','0','36','27737','0','0','11','52225','0','2','0','0','0','0','Stratholme Resident - Update Entry and Cast Cosmetic - Infected Wounds on AI Event received'),
('2861201','28612','30','0','100','6','5','26528','0','0','48','0','0','0','0','0','0','0','0','0','0','0','Knight of the Silver Hand - Set Movement Idle on AI event received'),
('2861202','28612','30','0','100','6','6','26528','0','0','24','0','0','0','41','30000','0','0','0','0','0','0','Knight of the Silver Hand - Evade and Despawn on AI event received'),
('852609','8526','0','0','100','1','11000','14000','22000','25000','11','11639','4','32','0','0','0','0','0','0','0','0','Dark Caster - Cast Shadow Word: Pain'),
('115702','1157','0','0','100','1','7900','21900','41500','61200','11','10651','1','32','11','3360','1','32','0','0','0','0','Cursed Sailor - Cast Curse of the Eye'),
('2559801','25598','11','2','100','2','0','0','0','0','11','45769','0','0','38','0','0','0','0','0','0','0','Volatile Felfire Fiend - Cast Sunwell Randience and Set in combat with zone on Spawn'),
('2559802','25598','9','2','100','2','0','5','0','0','11','45779','0','2','23','1','0','0','0','0','0','0','Volatile Felfire Fiend - Cast Felfire Fission and Increase Phase (Phase 1)'),
('2559803','25598','0','1','100','2','1000','1000','0','0','37','0','0','0','0','0','0','0','0','0','0','0','Volatile Felfire Fiend - Die (Phase 2)');
REPLACE INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-742','My strength.... is... returning!','0','0','0','16847','0'),
('-743','You\'ve restored my health! I\'m in your debt, $N.','0','0','0','16847','0'),
('-744','You\'e found a cure! We will crush our enemies!','0','0','0','16847','0');
DELETE FROM `creature_ai_texts` WHERE `entry` in (-868, -869);
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry in (28817,28864,17949,16847,17226,19420,22138,27746,27752,28167,28169,28612);
UPDATE creature_template SET AIName = '' WHERE Entry = 26499;
UPDATE creature_template SET NpcFlags = NpcFlags|1 WHERE Entry = 6669;
REPLACE INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-745','How dare you interfere with our work!','0','1','0','32273','0'),
('-746','My time... has run out...','0','1','0','32273','0');
UPDATE `creature_ai_texts` SET `type` = 6 WHERE `entry` in (-847, -841);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3227303','32273','6','0','100','4','0','0','0','0','34','8','3','0','1','-746','0','0','0','0','0','0','Infinite Corruptor Set Instance Data and Yell on Death'),
('3227304','32273','4','0','100','4','0','0','0','0','1','-745','0','0','0','0','0','0','0','0','0','0','Infinite Corruptor (Heroic) - Yell on Aggro'),
('3228101','32281','11','0','100','4','0','0','0','0','11','60451','0','0','0','0','0','0','0','0','0','0','Guardian of Time - Cast Corruption of Time on Spawned');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry = 32281;
DELETE FROM creature_linking_template WHERE entry IN (32281,28409);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(32281, 595, 32273, 8192, 50),
(28409, 595, 32273, 8208, 50);
DELETE FROM db_script_string WHERE entry=2000001279;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001279,'You have my thanks for saving my existence in this timeline. Now I must report back to my superiors. They must know immediately of what I just experienced.',0,0,0,0,'guardian of life - say thank you');
DELETE FROM dbscripts_on_creature_death WHERE id=32273;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(32273,0,14,60451,0,32281,50,0,0,'Guardian of Life - remove aura Corruption of Time'),
(32273,2,0,0,0,32281,50,0,2000001279,'Guardian of Life - say thank you'),
(32273,2,18,10000,0,32281,50,2,0,'Guardian of Life - Despawn');
DELETE FROM game_tele WHERE id=1440;
INSERT INTO game_tele VALUES
(1440, -8755.839, -4454.571, -200.169, 4.37, 1, 'CullingOfStratholme');
DELETE FROM `creature` WHERE `id` = 13136;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(52825, 12178, 1, 1, 1, 0, 0, -7314.79, 414.781, 21.7374, 2.82996, 300, 25, 0, 2823, 2117, 0, 1),
(52826, 12178, 1, 1, 1, 0, 0, -7315.56, 309.598, 10.909, 4.39989, 300, 10, 0, 2823, 2117, 0, 1),
(52827, 12178, 1, 1, 1, 0, 0, -7314.18, 352.466, 17.3954, 4.65095, 300, 25, 0, 2823, 2117, 0, 1),
(52828, 12178, 1, 1, 1, 0, 0, -7215.96, 455.471, 13.5363, 0.822411, 300, 3, 0, 2823, 2117, 0, 1),
(52829, 12178, 1, 1, 1, 0, 0, -7139.55, 354.197, 26.2948, 3.39261, 300, 3, 0, 2823, 2117, 0, 1),
(52830, 12178, 1, 1, 1, 0, 0, -7141.85, 350.847, 26.3781, 0.05236, 300, 0, 0, 2823, 2117, 0, 0),
(52831, 12178, 1, 1, 1, 0, 0, -7126.64, 355.606, 17.8847, 6.19366, 300, 10, 0, 2823, 2117, 0, 1),
(52832, 12178, 1, 1, 1, 0, 0, -7122.28, 343.788, 18.0097, 5.38601, 300, 3, 0, 2823, 2117, 0, 1),
(52833, 12178, 1, 1, 1, 0, 0, -7054.74, 276.017, 5.81007, 5.43045, 300, 10, 0, 2823, 2117, 0, 1),
(52834, 12178, 1, 1, 1, 0, 0, -7080.26, 313.053, 12.383, 5.90547, 300, 3, 0, 2823, 2117, 0, 1),
(52835, 12178, 1, 1, 1, 0, 0, -7224.28, 325.111, 46.3382, 3.7008, 300, 0, 0, 2823, 2117, 0, 0),
(52836, 12178, 1, 1, 1, 0, 0, -7274.24, 451.922, 16.2011, 5.58417, 300, 25, 0, 2823, 2117, 0, 1),
(52837, 12178, 1, 1, 1, 0, 0, -7185.79, 355.09, 28.9946, 1.46359, 300, 25, 0, 2823, 2117, 0, 1),
(52838, 12178, 1, 1, 1, 0, 0, -7055.2, 319.806, 7.36219, 4.32144, 300, 10, 0, 2823, 2117, 0, 1),
(22900, 12178, 1, 1, 1, 0, 0, -7217.3, 387.71, 24.4976, 0.887024, 300, 3, 0, 2823, 2117, 0, 1),
(22982, 12178, 1, 1, 1, 0, 0, -7219.9, 418.333, 24.2214, 4.62244, 300, 25, 0, 2823, 2117, 0, 1),
(23051, 12178, 1, 1, 1, 0, 0, -7115.5, 417.452, 13.0916, 4.18369, 300, 25, 0, 2823, 2117, 0, 1),
(23153, 12178, 1, 1, 1, 0, 0, -7122.72, 435.069, 18.5984, 6.09145, 300, 25, 0, 2823, 2117, 0, 1),
(23226, 12178, 1, 1, 1, 0, 0, -7183.99, 488.21, 13.89, 2.24676, 300, 25, 0, 2823, 2117, 0, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(22827, 12179, 1, 1, 1, 0, 0, -7217.56, 288.306, 47.0961, 1.09121, 300, 3, 0, 3644, 0, 0, 1),
(23026, 12179, 1, 1, 1, 0, 0, -7138.59, 347.584, 26.2948, 3.83456, 300, 3, 0, 3644, 0, 0, 1),
(23040, 12179, 1, 1, 1, 0, 0, -7258.11, 328.817, 47.925, 6.21337, 300, 0, 0, 3644, 0, 0, 0),
(23115, 12179, 1, 1, 1, 0, 0, -7116.58, 351.869, 17.8847, 3.4514, 300, 0, 0, 3644, 0, 0, 0),
(23160, 12179, 1, 1, 1, 0, 0, -7316.36, 386.531, 15.6469, 3.28662, 300, 10, 0, 3644, 0, 0, 1),
(23161, 12179, 1, 1, 1, 0, 0, -7309.82, 284.823, 12.2226, 2.48483, 300, 3, 0, 3644, 0, 0, 1),
(23261, 12179, 1, 1, 1, 0, 0, -7255.54, 354.491, 40.6493, 4.11533, 300, 25, 0, 3644, 0, 0, 1),
(23275, 12179, 1, 1, 1, 0, 0, -7084.7, 241.667, 3.8624, 3.14159, 300, 10, 0, 3644, 0, 0, 1),
(23359, 12179, 1, 1, 1, 0, 0, -7117.15, 241.947, 3.21372, 3.38719, 300, 25, 0, 3644, 0, 0, 1),
(52839, 12179, 1, 1, 1, 0, 0, -7139.58, 352.873, 17.4297, 2.86257, 300, 10, 0, 3644, 0, 0, 1),
(52840, 12179, 1, 1, 1, 0, 0, -7210.44, 327.538, 45.0917, 4.03972, 300, 0, 0, 3644, 0, 0, 2),
(52841, 12179, 1, 1, 1, 0, 0, -7236.05, 330.175, 46.3383, 2.97714, 300, 0, 0, 3644, 0, 0, 0),
(52842, 12179, 1, 1, 1, 0, 0, -7177.7, 290.212, 41.0724, 4.66713, 300, 3, 0, 3644, 0, 0, 1),
(52843, 12179, 1, 1, 1, 0, 0, -7153.93, 317.038, 19.6269, 5.21139, 300, 3, 0, 3644, 0, 0, 1),
(52844, 12179, 1, 1, 1, 0, 0, -7117.12, 317.668, 19.476, 1.92644, 300, 0, 0, 3644, 0, 0, 0),
(52845, 12179, 1, 1, 1, 0, 0, -7247.92, 377.084, 20.5388, 4.94912, 300, 25, 0, 3644, 0, 0, 1),
(52846, 12179, 1, 1, 1, 0, 0, -7260.42, 410.416, 21.343, 3.72975, 300, 25, 0, 3644, 0, 0, 1),
(52847, 12179, 1, 1, 1, 0, 0, -7249.29, 489.919, 11.6138, 6.04376, 300, 25, 0, 3644, 0, 0, 1),
(52848, 12179, 1, 1, 1, 0, 0, -7216.28, 352.578, 37.979, 0.05474, 300, 3, 0, 3644, 0, 0, 1),
(52849, 12179, 1, 1, 1, 0, 0, -7078.71, 351.318, 6.11982, 4.96101, 300, 25, 0, 3644, 0, 0, 1),
(52850, 12179, 1, 1, 1, 0, 0, -7184.61, 322.523, 35.118, 6.24024, 300, 0, 0, 3644, 0, 0, 0),
(52851, 12179, 1, 1, 1, 0, 0, -7252.93, 444.01, 20.2468, 0.545791, 300, 25, 0, 3644, 0, 0, 1),
(52852, 12179, 1, 1, 1, 0, 0, -7187.38, 384.263, 22.5013, 3.9187, 300, 3, 0, 3644, 0, 0, 1),
(52853, 12179, 1, 1, 1, 0, 0, -7085.28, 390.384, 5.01803, 2.23099, 300, 25, 0, 3644, 0, 0, 1),
(52854, 12179, 1, 1, 1, 0, 0, -7184.3, 440.051, 26.7382, 4.11203, 300, 0, 0, 3644, 0, 0, 0),
(52855, 12179, 1, 1, 1, 0, 0, -7178.48, 441.191, 26.6737, 2.345, 300, 0, 0, 3644, 0, 0, 0);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1217801','12178','6','0','75','0','0','0','0','0','11','21327','0','7','0','0','0','0','0','0','0','0','YTDB-Tortured Druid - Cast Summon Hive\'Ashi Drones on Death'),
('1217901','12179','6','0','75','0','0','0','0','0','11','21327','0','7','0','0','0','0','0','0','0','0','YTDB-Tortured Sentinel - Cast Summon Hive\'Ashi Drones on Death');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry in (12178,12179);
DELETE FROM dbscripts_on_quest_end WHERE id = 5541;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5541,0,20,0,0,10610,7875,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(5541,1,20,2,0,10610,7875,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
UPDATE quest_template SET CompleteScript = 5541 WHERE entry = 5541;
UPDATE creature_template SET MovementType = 2 WHERE entry = 10610;
DELETE FROM creature_movement_template WHERE entry = 10610;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(10610,1,-6009.25,-202.649994,406.982605,45000,0,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,2,-6009.25,-202.649994,406.982605,1000,1061001,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,3,-6009.25,-202.649994,406.982605,2000,1061002,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,4,-6031.16,-230.264,414.361,250000,1061003,0,0,0,0,0,0,0,0,2.18492,0,0),
(10610,5,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,6,-6009.25,-202.649994,406.982605,5000,1061004,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,7,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,0,1.58825,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1061001 AND 1061004;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,21,1,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active'),
(1061002,0,25,1,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061002,1,16,6598,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061002,2,3,0,0,10611,7876,0x10,0,0,0,0,-6031.589,-228.182,414.4035,2,'Shorty'),
(1061002,2,3,0,0,10804,7874,0x10,0,0,0,0,-6034.14,-223.333,413.4,1,'Middlecamp'),
(1061002,2,3,0,0,10805,7877,0x10,0,0,0,0,-6011.17,-197.021,406.765,1.97737,'Klemmy'),
(1061002,2,3,0,0,10803,7879,0x10,0,0,0,0,-6011.87,-199.241,406.834,4.31443,'Wheeler'),
(1061002,3,3,0,0,10805,7877,0x10,0,0,0,0,-6015.51,-184.362,407.712,2.49704,'Klemmy'),
(1061002,5,3,0,0,10805,7877,0x10,0,0,0,0,-6065.18,-201.938,424.419,5,'Klemmy'),
(1061002,4,3,0,0,10803,7879,0x10,0,0,0,0,-6031.929,-221.0882,413.1531,2.443461,'Wheeler'),
(1061002,15,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061002,17,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.18492,'Shorty'),
(1061002,18,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061002,18,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061002,22,3,0,0,1243,7870,0x10,0,0,0,0,0,0,0,3.68522,'Hegnar'),
(1061003,5,0,0,0,10804,7874,7 | 0x10,2000001280,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,8,15,16768,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'), 
(1061003,10,0,0,0,10804,7874,7 | 0x10,2000001281,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,14,0,0,0,10804,7874,7 | 0x10,2000001282,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,16,15,16772,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,18,0,0,0,10804,7874,7 | 0x10,2000001283,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,20,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,21,1,5,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,21,1,11,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,22,1,274,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,22,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,23,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,24,0,0,0,10803,7879,7 | 0x10,2000001284,0,0,0,0,0,0,0,'Wheeler'),
(1061003,28,15,16767,0,10803,7879,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,30,0,0,0,10803,7879,7 | 0x10,2000001285,0,0,0,0,0,0,0,'Wheeler'),
(1061003,32,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,33,1,25,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,33,16,6249,2,10803,7879,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,35,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,36,1,21,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,36,1,23,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,38,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,41,0,0,0,10804,7874,7 | 0x10,2000001286,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,43,15,16777,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,45,0,0,0,10804,7874,7 | 0x10,2000001287,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,1,20,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,48,1,6,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,48,16,6248,2,10803,7879,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,51,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,51,0,0,0,10804,7874,7 | 0x10,2000001288,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,53,15,16780,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,55,0,0,0,10804,7874,7 | 0x10,2000001289,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,57,0,0,0,10803,7879,7 | 0x10,2000001290,0,0,0,0,0,0,0,'Wheeler'),
(1061003,57,15,16775,0,10803,7879,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,59,0,0,0,10803,7879,7 | 0x10,2000001291,0,0,0,0,0,0,0,'Wheeler'),
(1061003,61,15,16778,0,10803,7879,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,63,0,0,0,10803,7879,7 | 0x10,2000001292,0,0,0,0,0,0,0,'Wheeler'),
(1061003,64,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,65,1,5,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,65,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,67,1,25,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,69,1,11,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,72,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,72,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,74,0,0,0,10804,7874,7 | 0x10,2000001293,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,74,16,6250,2,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,74,15,16572,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,0,0,0,10804,7874,7 | 0x10,2000001294,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,16,6250,2,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,77,15,16776,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,0,0,0,10804,7874,7 | 0x10,2000001295,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,16,6250,2,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,80,15,16779,0,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,1,71,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,16,6246,2,10804,7874,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,87,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,88,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,89,1,2,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,89,1,21,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,89,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,89,1,21,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,93,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,93,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,93,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,93,3,0,0,0,8,8,0,0,0,0,0,0,0,2.844887,''),
(1061003,94,25,0,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,95,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,1,4,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,95,16,6256,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,3,0,0,10805,7877,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,105,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 1st Mortar Team Target Dummy'),
(1061003,106,25,1,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,108,3,0,0,10805,7877,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,111,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061003,113,1,3,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,115,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,116,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,116,1,16,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,117,1,69,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,122,1,0,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,124,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,125,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,125,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,125,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,126,15,18655,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,128,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,130,15,16786,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,130,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,133,1,17,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,134,25,0,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,136,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,136,3,0,0,10805,7877,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,137,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,137,16,6252,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,138,1,4,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,141,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,146,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 2nd Mortar Team Target Dummy'),
(1061003,148,3,0,0,10805,7877,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,150,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,151,25,1,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,152,1,66,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,152,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,154,3,0,0,10805,7877,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,154,28,8,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1061003,156,16,6254,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,157,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,161,28,0,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1061003,162,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,163,1,25,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,163,16,6255,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,164,15,18655,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,165,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,166,15,16786,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,166,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,167,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,167,25,0,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,168,1,25,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,168,16,6251,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,169,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,169,3,0,0,10805,7877,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,170,1,21,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,170,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,171,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,171,1,4,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,178,10,12385,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon Mortar Team Advanced Target Dummy'),
(1061003,180,3,0,0,10805,7877,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,182,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,182,15,18655,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,182,1,25,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,11,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,15,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,183,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,184,16,6258,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,184,25,1,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,185,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,185,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,185,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,185,3,0,0,10805,7877,0x10,0,0,0,0,-6064.07,-209.851,421.98,6.10275,'Klemmy'),
(1061003,186,15,16786,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,186,15,5,0,12385,100,7,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,187,3,0,0,10805,7877,0x10,0,0,0,0,-6061.97,-218.956,421.085,5.92054,'Klemmy'),
(1061003,190,3,0,0,10805,7877,0x10,0,0,0,0,-6040.96,-221.929,414.921,5.92054,'Klemmy'),
(1061003,196,1,14,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,196,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,196,1,0,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,198,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,198,1,11,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,199,1,11,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,199,1,11,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,199,1,14,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,200,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,200,1,11,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,201,1,11,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,201,1,11,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,202,3,0,0,10805,7877,0x10,0,0,0,0,-6007.301758,-200.348206,406.777496,3.282219,'Klemmy'),
(1061003,202,3,0,0,10611,7876,0x10,0,0,0,0,-6007.458984,-202.157593,407.447937,2,'Shorty'),
(1061003,203,3,0,0,0,0,0,0,0,0,0,-6009.25,-202.649994,406.982605,2,'angus'),
(1061003,203,3,0,0,10804,7874,0x10,0,0,0,0,-6010.668151495,-199.434006,406.792480,5.532694,'Middlecamp'),
(1061003,203,3,0,0,10803,7879,0x10,0,0,0,0,-6008.527832,-199.145203,406.687225,4.372177,'Wheeler'),
(1061003,212,3,0,0,10805,7877,0x10,0,0,0,0,0,0,0,3.282219,'Klemmy'),
(1061003,216,3,0,0,10803,7879,0x10,0,0,0,0,0,0,0,4.372177,'Wheeler'),
(1061003,228,3,0,0,0,0,0,0,0,0,0,0,0,0,1.58825,'angus'),
(1061003,219,3,0,0,10804,7874,0x10,0,0,0,0,0,0,0,5.532694,'Middlecamp'),
(1061003,220,3,0,0,1243,7870,0x10,0,0,0,0,0,0,0,0.03490658,'Hegnar'),
(1061003,220,3,0,0,10611,7876,0x10,0,0,0,0,0,0,0,2.478368,'Shorty'),
(1061004,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - unactive'),
(1061004,0,21,0,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy - unactive'),
(1061004,0,21,0,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty - unactive'),
(1061004,1,21,0,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler - unactive'),
(1061004,1,21,0,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001280 AND 2000001295;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001280,'%s picks the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000001281,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,6,NULL),
(2000001282,'%s takes a more careful aim...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6247,2,0,0,NULL),
(2000001283,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001284,'%s casually points at the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000001285,'%s hits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001286,'%s takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001287,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,15,NULL),
(2000001288,'%s takes aim at the bottles again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001289,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,18,NULL),
(2000001290,'%s quickly shoots the middle target dead center...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001291,'%s then takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001292,'%s only hits the side of the box!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001293,'%s quickly shoots the orc dummy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001294,'%s turns to the paper target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001295,'%s shoots from the hip at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE creature_movement_template SET waittime = 1000 WHERE entry = 10610 AND point = 1;
UPDATE creature_movement_template SET waittime = 420000 WHERE entry = 10610 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1061001 AND delay IN (0,1); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,7877,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,7876,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,29,3,2,1243,7870,7 | 0x10,0,0,0,0,0,0,0,0,'1243 - NPCFlags removed'),
(1061001,1,21,1,0,10803,7879,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,7874,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1061003 AND delay = 229; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1061003,229,29,3,1,1243,7870,7 | 0x10,0,0,0,0,0,0,0,0,'1243 - NPCFlags added');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(7875, 10610, 0, 1, 1, 0, 0, -6009.25, -202.65, 406.983, 1.58825, 180, 0, 0, 222, 0, 0, 2),
(7876, 10611, 0, 1, 1, 0, 0, -6007.46, -202.158, 407.448, 2.47837, 900, 0, 0, 198, 0, 0, 0),
(7879, 10803, 0, 1, 1, 0, 0, -6008.53, -199.145, 406.687, 4.37218, 180, 0, 0, 156, 0, 0, 0),
(7874, 10804, 0, 1, 1, 0, 0, -6010.67, -199.434, 406.792, 5.53269, 180, 0, 0, 156, 0, 0, 0),
(7877, 10805, 0, 1, 1, 0, 0, -6007.3, -200.348, 406.777, 3.28222, 180, 0, 0, 120, 0, 0, 0),
(7870, 1243, 0, 1, 1, 0, 0, -6015.51, -201.511, 407.437, 0.0349066, 180, 0, 0, 156, 0, 0, 0);
UPDATE dbscripts_on_gossip SET datalong2 = 1 WHERE id = 8851 AND delay = 120;
DELETE FROM dbscripts_on_quest_end WHERE id = 10961;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10961,0,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag removed'),
(10961,1,0,0,0,0,0,0,2000001296,0,0,0,0,0,0,0,''),
(10961,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10961,7,0,0,0,0,0,0,2000001297,0,0,0,0,0,0,0,''),
(10961,10,0,0,0,0,0,0,2000001298,0,0,0,0,0,0,0,''),
(10961,14,0,0,0,0,0,0,2000001299,0,0,0,0,0,0,0,''),
(10961,15,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001296 AND 2000001299;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001296,'There are few left in the world who can prepare the Ward of Waking, $N. We are fortunate that I am among them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001297,'%s kneels, filling the vial with water from the moonwell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001298,'%s combines the herbs with the moonwell water to create the Ward of Waking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001299,'The potion is finished. I can only hope Clintar forgives us for interrupting his sojourn in the Emerald Dream.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE dbscripts_on_quest_end SET datalong2 = 2 WHERE id = 10961 AND delay = 0;
UPDATE dbscripts_on_quest_end SET datalong2 = 1 WHERE id = 10961 AND delay = 15;
UPDATE quest_template SET CompleteScript = 10961 WHERE entry = 10961;
DELETE FROM dbscripts_on_quest_end WHERE id = 10987;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10987,2,10,23036,17000,0,0,0,0,0,0,0,-1272.48,9164.06,217.776,4.20625,'summon'),
(10987,4,0,0,0,0,0,0,2000001300,0,0,0,0,0,0,0,''),
(10987,6,3,0,0,23036,50,7,0,0,0,0,-1273.05,9161.96,217.298,4.34369,'force buddy to move'),
(10987,6,0,0,0,0,0,0,2000001301,0,0,0,0,0,0,0,''),
(10987,10,0,0,0,0,0,0,2000001302,0,0,0,0,0,0,0,''),
(10987,14,0,0,0,0,0,0,2000001303,0,0,0,0,0,0,0,''),
(10987,15,25,1,0,23036,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(10987,16,3,0,700,23036,50,7,0,0,0,0,-1335.43,9128.58,251.388,3.6604,'force buddy to move');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001300 AND 2000001303;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001300,'Come closer, young one. There\'s nothing to fear from me or $n.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001301,'%s cautiously approaches Wather Elaira.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001302,'I\'m going to train you to help $N with very important task. After that, I promose you\'ll be free to return home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001303,'You will hear the call when you are needed. Fly east, to Skettis, and wait there for $N\'s signal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE quest_template SET CompleteScript = 10987 WHERE entry = 10987;
DELETE FROM dbscripts_on_quest_end WHERE id = 10436;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10436,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'20913 - npc_flag removed'),
(10436,1,0,0,0,0,0,0,2000001304,0,0,0,0,0,0,0,''),
(10436,3,3,0,0,0,0,0,0,0,0,0,4922.18,2991.38,93.9847,5.88582,''),
(10436,8,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,12,15,28730,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,14,9,9343,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#1'),
(10436,14,9,9344,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#2'),
(10436,14,9,9347,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#3'),
(10436,14,9,9349,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#4'),
(10436,16,0,0,0,0,0,0,2000001305,0,0,0,0,0,0,0,''),
(10436,20,3,0,0,0,0,0,0,0,0,0,4914.74,2991.92,94.1138,0,''),
(10436,23,3,0,0,0,0,0,0,0,0,0,0,0,0,0.15708,''),
(10436,23,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'20913 - npc_flag added');
DELETE FROM db_script_string WHERE entry = 2000001304;
DELETE FROM db_script_string WHERE entry = 2000001305;
INSERT INTO db_script_string (entry,content_default) VALUES
('2000001304','Now to begin the repairs.'),
('2000001305','It\'s working! Ghabar will be pleased to hear the news.');
UPDATE quest_template SET CompleteScript =10436 WHERE entry =10436;
UPDATE dbscripts_on_quest_end SET datalong2 = 1 WHERE id = 10436 AND delay = 23;
DELETE FROM dbscripts_on_quest_end WHERE id = 865;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(865,0,0,0,0,0,0,0,2000001306,0,0,0,0,0,0,0,''),
(865,2,15,17550,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,6,1,34,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,10,0,0,0,0,0,0,2000001307,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 865 WHERE entry = 865;
DELETE FROM db_script_string WHERE entry IN (2000001306,2000001307);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001306,'Now let\'s try it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001307,'Ugh! That\'s terrible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM dbscripts_on_quest_end WHERE id = 790;
DELETE FROM dbscripts_on_quest_start WHERE id = 790;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(790,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(790,5,0,0,0,0,0,0,2000000672,0,0,0,0,0,0,0,''),
(790,7,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_DEATH');
UPDATE quest_template SET StartScript = 0 WHERE entry = 790;
UPDATE quest_template SET CompleteScript = 790 WHERE entry = 790;
DELETE FROM dbscripts_on_quest_end WHERE id = 808;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(808,2,10,3289,15000,0,0,0,0,0,0,0,-822.285,-4921.8,19.4009,2.6098,'summon'),
(808,5,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
(808,7,0,0,0,0,0,0,2000000886,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000886;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000886,'I thank you, $N. And my brother thanks you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL);
UPDATE quest_template SET CompleteScript = 808 WHERE entry = 808;
UPDATE creature_template SET movementType = 0 WHERE entry = 3289;
DELETE FROM dbscripts_on_quest_end WHERE id = 823;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(823,1,0,0,0,0,0,0,2000001055,0,0,0,0,0,0,0,''),
(823,4,0,0,0,0,0,0,2000001056,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000001055, 2000001056);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001055,'%s listens to Sigilbringer\'s report...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001056,'What?? The Burning Blade is spreading! We must investigate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
UPDATE quest_template SET CompleteScript = 823 WHERE entry = 823;
DELETE FROM dbscripts_on_quest_end WHERE id = 806;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(806,1,0,0,0,0,0,0,2000000090,0,0,0,0,0,0,0,''),
(806,4,0,0,0,0,0,0,2000000999,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000999;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000999,'%s smashes the dead, twisted claw. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 806 WHERE entry = 806;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2163301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2163301,0,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,'visual - summon');
DELETE FROM dbscripts_on_quest_start WHERE id = 7029;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7029,2,0,0,0,0,0,0,2000001238,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7029;
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7041;
UPDATE `db_script_string` SET `content_default` = '$N, please take a look at the sample of the Vylestem vine that I took from the caverns, so thet you know what to look for...' WHERE `entry` =2000001238;
DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10528,0,15,5,0,21292,20,7,0,0,0,0,0,0,0,0,''),
(10528,4,0,0,0,21318,25,0,2000001308,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 10528 WHERE entry = 10528;
DELETE FROM db_script_string WHERE entry = 2000001308;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001308,'I... I have died... I was in so much pain... engulfed in darkness... Can you see me, $r?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM dbscripts_on_quest_end WHERE id = 857;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(857,1,0,0,0,0,0,0,2000001309,0,0,0,0,0,0,0,''),
(857,3,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,6,3,0,0,0,0,0,0,0,0,0,0,0,0,5.13708,''),
(857,7,0,0,0,0,0,0,2000001310,0,0,0,0,0,0,0,''),
(857,10,0,0,0,0,0,0,2000001311,0,0,0,0,0,0,0,''),
(857,13,0,0,0,0,0,0,2000001312,0,0,0,0,0,0,0,''),
(857,15,23,724,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,16,3,0,0,0,0,0,0,0,0,0,-4217.93,-2343.5,91.6918,4.6415,''),
(857,18,15,5,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001309 AND 2000001312;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001309,'The power of the Tear of the Moons is mine! Mine I say!',0,0,0,5,NULL),
(2000001310,'%s begins to rub the Tear of the Moons.',0,2,0,0,NULL),
(2000001311,'Power! Glorious power!',0,0,0,15,NULL),
(2000001312,'%s begins to make strange grunting noises. The Tear of the Moons drops to the ground and shatters.',0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 857 WHERE entry = 857;
UPDATE creature SET position_x = -4218.656250, position_y = -2339.575684, position_z = 91.730965, orientation = 1.864294, spawntimesecs = 60 WHERE guid = 26818;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(15954, 4571, 0, 1, 1, 0, 0, 1690.33, 138.073, -55.2145, 0.773067, 300, 0, 0, 1003, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 15954;
UPDATE creature_template SET MovementType = 2 WHERE entry = 4571;
DELETE FROM creature_movement_template WHERE entry = 4571;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(4571,1,1692.201904,139.641846,-55.214390,0,0,0,0,0,0,0,0,0,0,6.123605,0,0),
(4571,2,1694.764893,138.542770,-55.022465,0,0,0,0,0,0,0,0,0,0,5.588755,0,0),
(4571,3,1698.867065,134.570557,-52.505413,0,0,0,0,0,0,0,0,0,0,5.520430,0,0),
(4571,4,1702.585693,131.029968,-49.612007,0,0,0,0,0,0,0,0,0,0,5.485089,0,0),
(4571,5,1705.978516,127.957245,-48.915165,0,0,0,0,0,0,0,0,0,0,5.418329,0,0),
(4571,6,1709.306274,124.367935,-49.698490,0,0,0,0,0,0,0,0,0,0,5.434034,0,0),
(4571,7,1712.874023,120.622345,-52.617626,0,0,0,0,0,0,0,0,0,0,5.390840,0,0),
(4571,8,1717.208252,116.369743,-55.215046,0,0,0,0,0,0,0,0,0,0,5.020132,0,0),
(4571,9,1715.927490,112.043648,-55.215046,0,0,0,0,0,0,0,0,0,0,3.865062,0,0),
(4571,10,1710.193848,105.648643,-60.226227,0,0,0,0,0,0,0,0,0,0,3.989156,0,0),
(4571,11,1704.670166,98.548027,-60.156685,0,0,0,0,0,0,0,0,0,0,3.708768,0,0),
(4571,12,1702.469849,96.913681,-62.183727,0,0,0,0,0,0,0,0,0,0,3.757463,0,0),
(4571,13,1696.200073,89.700615,-62.245487,0,0,0,0,0,0,0,0,0,0,4.154087,0,0),
(4571,14,1693.445557,80.922714,-62.289646,0,0,0,0,0,0,0,0,0,0,4.904924,0,0),
(4571,15,1694.970947,74.606171,-62.289646,0,0,0,0,0,0,0,0,0,0,5.439004,0,0),
(4571,16,1703.908081,68.916229,-62.289646,0,0,0,0,0,0,0,0,0,0,6.058682,0,0),
(4571,17,1716.820801,67.587296,-62.281952,0,0,0,0,0,0,0,0,0,0,0.244379,0,0),
(4571,18,1726.935669,73.529434,-62.280739,0,0,0,0,0,0,0,0,0,0,0.759600,0,0),
(4571,19,1746.531616,97.615318,-62.277756,0,0,0,0,0,0,0,0,0,0,0.680274,0,0),
(4571,20,1761.977051,112.225182,-62.282078,0,0,0,0,0,0,0,0,0,0,1.051768,0,0),
(4571,21,1764.695068,122.498894,-62.289280,0,0,0,0,0,0,0,0,0,0,1.664379,0,0),
(4571,22,1762.121338,130.429794,-62.293812,0,0,0,0,0,0,0,0,0,0,2.294268,0,0),
(4571,23,1756.816772,135.878189,-62.296608,0,0,0,0,0,0,0,0,0,0,2.690109,0,0),
(4571,24,1748.166870,137.670273,-62.280506,0,0,0,0,0,0,0,0,0,0,3.475508,0,0),
(4571,25,1742.719971,136.389114,-62.215290,0,0,0,0,0,0,0,0,0,0,3.800663,0,0),
(4571,26,1737.080444,131.298904,-62.116192,0,0,0,0,0,0,0,0,0,0,3.754325,0,0),
(4571,27,1735.050415,129.373520,-60.103340,0,0,0,0,0,0,0,0,0,0,3.699347,0,0),
(4571,28,1727.588257,123.737144,-60.372936,0,0,0,0,0,0,0,0,0,0,3.788882,0,0),
(4571,29,1721.737671,118.051208,-55.215641,0,0,0,0,0,0,0,0,0,0,3.820298,0,0),
(4571,30,1717.091797,117.097122,-55.031643,0,0,0,0,0,0,0,0,0,0,2.419933,0,0),
(4571,31,1713.285400,120.886414,-52.663830,0,0,0,0,0,0,0,0,0,0,2.383019,0,0),
(4571,32,1709.635254,123.817406,-50.022968,0,0,0,0,0,0,0,0,0,0,2.390873,0,0),
(4571,33,1705.950806,127.811539,-48.913475,0,0,0,0,0,0,0,0,0,0,2.379092,0,0),
(4571,34,1702.807983,131.052505,-49.581020,0,0,0,0,0,0,0,0,0,0,2.288771,0,0),
(4571,35,1699.202026,134.708969,-52.444389,0,0,0,0,0,0,0,0,0,0,2.363384,0,0),
(4571,36,1695.124146,138.728653,-54.968365,0,0,0,0,0,0,0,0,0,0,2.152897,0,0),
(4571,37,1694.589111,141.696426,-55.214432,0,0,0,0,0,0,0,0,0,0,1.100463,0,0),
(4571,38,1695.868896,143.529465,-55.214268,0,0,0,0,0,0,0,0,0,0,0.698551,0,0),
(4571,39,1701.858887,150.072723,-60.469513,0,0,0,0,0,0,0,0,0,0,1.418761,0,0),
(4571,40,1701.063477,158.274918,-60.438343,0,0,0,0,0,0,0,0,0,0,1.211416,0,0),
(4571,41,1704.810181,171.620438,-60.737682,0,0,0,0,0,0,0,0,0,0,1.962257,0,0),
(4571,42,1700.957275,175.207169,-62.000648,0,0,0,0,0,0,0,0,0,0,2.709171,0,0),
(4571,43,1694.132935,176.281799,-62.171570,0,0,0,0,0,0,0,0,0,0,3.569968,0,0),
(4571,44,1678.931519,164.417252,-62.156734,0,0,0,0,0,0,0,0,0,0,3.902192,0,0),
(4571,45,1661.356812,147.728577,-62.165779,0,0,0,0,0,0,0,0,0,0,4.109537,0,0),
(4571,46,1656.410156,141.673599,-62.155628,0,0,0,0,0,0,0,0,0,0,4.415842,0,0),
(4571,47,1658.164429,130.089584,-62.195759,0,0,0,0,0,0,0,0,0,0,5.289191,0,0),
(4571,48,1660.051758,128.194778,-61.495415,0,0,0,0,0,0,0,0,0,0,5.849962,0,0),
(4571,49,1670.617188,126.868576,-61.480343,0,0,0,0,0,0,0,0,0,0,0.112627,0,0),
(4571,50,1672.972656,126.964844,-60.389759,0,0,0,0,0,0,0,0,0,0,0.327826,0,0),
(4571,51,1683.947754,131.563538,-60.465267,0,0,0,0,0,0,0,0,0,0,0.822258,0,0),
(4571,52,1690.073608,137.640442,-55.214428,0,0,0,0,0,0,0,0,0,0,0.721727,0,0);
UPDATE creature_template SET GossipMenuId = 8287 WHERE entry = 21318;
DELETE FROM gossip_menu WHERE entry = 8287; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES (8287, 10327, 0, 0);
DELETE FROM creature_movement WHERE id = 39799;
UPDATE creature_template SET MovementType = 2 WHERE entry = 8404; 
DELETE FROM creature_movement_template WHERE entry = 8404;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(8404,1,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,2,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,3,1548.66,-4170.54,39.878,0,0,0,0,0,0,0,0,0,0,4.91597,0,0),
(8404,4,1549.69,-4182.55,40.6116,0,0,0,0,0,0,0,0,0,0,4.66386,0,0),
(8404,5,1544.56,-4204.67,42.5118,0,0,0,0,0,0,0,0,0,0,4.00727,0,0),
(8404,6,1541.77,-4209.83,42.6101,0,0,0,0,0,0,0,0,0,0,3.79758,0,0),
(8404,7,1535.78,-4211.44,42.2174,0,0,0,0,0,0,0,0,0,0,3.2745,0,0),
(8404,8,1526.93,-4211.96,41.3994,0,0,0,0,0,0,0,0,0,0,3.37893,0,0),
(8404,9,1518.28,-4215.47,40.5925,0,0,0,0,0,0,0,0,0,0,4.0206,0,0),
(8404,10,1531.65,-4212.06,41.8567,0,0,0,0,0,0,0,0,0,0,0.069258,0,0),
(8404,11,1545.37,-4209.67,42.9739,0,0,0,0,0,0,0,0,0,0,0.108934,0,0),
(8404,12,1575.68,-4208.31,43.6414,0,0,0,0,0,0,0,0,0,0,0.418381,0,0),
(8404,13,1581.05,-4205.01,42.1625,0,0,0,0,0,0,0,0,0,0,1.02235,0,0),
(8404,14,1582.41,-4200.09,41.6332,0,0,0,0,0,0,0,0,0,0,1.50145,0,0),
(8404,15,1577.94,-4182.56,39.0467,0,0,0,0,0,0,0,0,0,0,1.43312,0,0),
(8404,16,1577.95,-4166.1,36.4201,0,0,0,0,0,0,0,0,0,0,1.54979,0,0),
(8404,17,1581.97,-4153.16,34.3183,0,0,0,0,0,0,0,0,0,0,1.25527,0,0),
(8404,18,1585.48,-4145.38,33.4993,0,0,0,0,0,0,0,0,0,0,1.12567,0,0),
(8404,19,1604.63,-4121.54,29.6292,0,0,0,0,0,0,0,0,0,0,0.600243,0,0),
(8404,20,1629.61,-4107.81,29.851,0,0,0,0,0,0,0,0,0,0,0.388186,0,0),
(8404,21,1664.44,-4095.19,34.6566,0,0,0,0,0,0,0,0,0,0,0.333208,0,0),
(8404,22,1699.89,-4087.74,38.7137,0,0,0,0,0,0,0,0,0,0,0.187909,0,0),
(8404,23,1709.97,-4084.71,40.3433,0,0,0,0,0,0,0,0,0,0,0.466726,0,0),
(8404,24,1732.35,-4069.04,44.7046,0,0,0,0,0,0,0,0,0,0,0.729834,0,0),
(8404,25,1737.52,-4062.58,44.6143,0,0,0,0,0,0,0,0,0,0,1.11075,0,0),
(8404,26,1744.09,-4042.98,44.2706,0,0,0,0,0,0,0,0,0,0,1.21678,0,0),
(8404,27,1745.69,-4021.55,45.8444,0,0,0,0,0,0,0,0,0,0,1.62519,0,0),
(8404,28,1741.55,-3993.82,46.9013,0,0,0,0,0,0,0,0,0,0,1.73514,0,0),
(8404,29,1738.06,-3982.79,47.6495,0,0,0,0,0,0,0,0,0,0,2.00611,0,0),
(8404,30,1727.15,-3960.55,48.8178,0,0,0,0,0,0,0,0,0,0,2.05323,0,0),
(8404,31,1716.72,-3941.62,49.6707,0,0,0,0,0,0,0,0,0,0,2.22995,0,0),
(8404,32,1712.4,-3937.89,49.7629,0,0,0,0,0,0,0,0,0,0,2.72082,0,0),
(8404,33,1708.1,-3938.4,50.5155,0,0,0,0,0,0,0,0,0,0,4.8359,0,0),
(8404,34,1710.22,-3944.82,50.3793,0,0,0,0,0,0,0,0,0,0,5.29143,0,0),
(8404,35,1728.4,-3966.85,48.3152,0,0,0,0,0,0,0,0,0,0,5.31499,0,0),
(8404,36,1742.65,-3994.21,47.0203,0,0,0,0,0,0,0,0,0,0,4.766,0,0),
(8404,37,1745.13,-4021.8,45.8787,0,0,0,0,0,0,0,0,0,0,4.70709,0,0),
(8404,38,1743.39,-4040.77,44.4939,0,0,0,0,0,0,0,0,0,0,4.61677,0,0),
(8404,39,1738.21,-4058.59,44.3596,0,0,0,0,0,0,0,0,0,0,4.36545,0,0),
(8404,40,1733.13,-4070.14,44.4479,0,0,0,0,0,0,0,0,0,0,3.8895,0,0),
(8404,41,1711.87,-4085.21,40.1182,0,0,0,0,0,0,0,0,0,0,3.63026,0,0),
(8404,42,1691.56,-4091.83,37.8552,0,0,0,0,0,0,0,0,0,0,3.42998,0,0),
(8404,43,1655.99,-4099.88,33.3077,0,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(8404,44,1629.32,-4109.29,29.6458,0,0,0,0,0,0,0,0,0,0,3.5635,0,0),
(8404,45,1608.56,-4119.25,29.608,0,0,0,0,0,0,0,0,0,0,3.78734,0,0),
(8404,46,1598.77,-4127.94,30.6464,0,0,0,0,0,0,0,0,0,0,3.97262,0,0),
(8404,47,1586.65,-4144.41,33.1692,0,0,0,0,0,0,0,0,0,0,4.09828,0,0),
(8404,48,1579.47,-4159.36,35.4998,0,0,0,0,0,0,0,0,0,0,4.37709,0,0),
(8404,49,1576.2,-4176.22,38.1288,0,0,0,0,0,0,0,0,0,0,4.6402,0,0),
(8404,50,1577.91,-4192.41,40.5278,0,0,0,0,0,0,0,0,0,0,4.84047,0,0),
(8404,51,1578.51,-4205.14,42.5391,0,0,0,0,0,0,0,0,0,0,4.34568,0,0),
(8404,52,1575.8,-4208.68,43.6726,0,0,0,0,0,0,0,0,0,0,3.43462,0,0),
(8404,53,1563.73,-4208.41,43.619,0,0,0,0,0,0,0,0,0,0,2.9948,0,0),
(8404,54,1547.49,-4208.4,43.0629,0,0,0,0,0,0,0,0,0,0,3.24612,0,0),
(8404,55,1527.74,-4212.69,41.5202,0,0,0,0,0,0,0,0,0,0,3.3443,0,0),
(8404,56,1516.82,-4216.26,40.4675,0,0,0,0,0,0,0,0,0,0,3.5917,0,0),
(8404,57,1539.83,-4210.73,42.5457,0,0,0,0,0,0,0,0,0,0,0.257683,0,0),
(8404,58,1543,-4207.62,42.651,0,0,0,0,0,0,0,0,0,0,1.09413,0,0),
(8404,59,1549.16,-4188.49,41.2349,0,0,0,0,0,0,0,0,0,0,1.36117,0,0),
(8404,60,1550.57,-4176.65,40.3661,0,0,0,0,0,0,0,0,0,0,1.58501,0,0),
(8404,61,1547.16,-4166.1,39.8663,0,0,0,0,0,0,0,0,0,0,2.02483,0,0),
(8404,62,1540.48,-4157.99,40.4082,0,0,0,0,0,0,0,0,0,0,2.63351,0,0),
(8404,63,1534.96,-4155.77,40.5611,0,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,64,1526.11,-4155.11,40.6068,0,0,0,0,0,0,0,0,0,0,3.23042,0,0),
(8404,65,1499.67,-4154.97,41.0505,0,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,66,1485.95,-4150.33,40.6375,0,0,0,0,0,0,0,0,0,0,2.8063,0,0),
(8404,67,1501.73,-4155.09,40.9359,0,0,0,0,0,0,0,0,0,0,6.13404,0,0),
(8404,68,1526.68,-4154.89,40.6253,0,0,0,0,0,0,0,0,0,0,0.0471973,0,0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(3476, 8404, 1, 1, 1, 0, 0, 1527.01, -4154.91, 40.3947, 0.069843, 300, 0, 0, 1003, 0, 0, 2),
(126913, 7565, 1, 1, 1, 0, 0, 1524.75, -4156.22, 40.5173, 0.019262, 120, 0, 0, 42, 0, 0, 0),
(126912, 7562, 1, 1, 1, 0, 0, 1524.51, -4153.32, 40.7925, 0.023189, 120, 0, 0, 42, 0, 0, 0),
(126914, 7567, 1, 1, 1, 0, 0, 1524.16, -4155.14, 40.618, 0.07424, 120, 0, 0, 42, 0, 0, 0);
DELETE FROM creature_linking WHERE guid IN (126914, 126912, 126913);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126914, 39799, 656),
(126912, 39799, 656),
(126913, 39799, 656);
UPDATE creature_template SET MinLevel = 56, MaxLevel = 56, FactionAlliance = 35, FactionHorde = 35, UnitFlags = 520 WHERE entry = 28817;
UPDATE creature_template SET MovementType = 2 WHERE entry = 28841;
DELETE FROM creature_movement_template WHERE entry = 28841;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(28841,1,2386.89,-5901.15,108.503,6000,2884101,0,0,0,0,0,0,0,0,0.0305656,0,0),
(28841,2,2366.93,-5906.73,106.928,0,0,0,0,0,0,0,0,0,0,3.1584,0,0),
(28841,3,2332.73,-5902.29,100.307,0,0,0,0,0,0,0,0,0,0,3.08379,0,0),
(28841,4,2317.88,-5902.86,94.9301,0,0,0,0,0,0,0,0,0,0,3.29977,0,0),
(28841,5,2301.5,-5908.89,87.569,0,0,0,0,0,0,0,0,0,0,3.78279,0,0),
(28841,6,2295.23,-5916.3,83.1045,0,0,0,0,0,0,0,0,0,0,4.46216,0,0),
(28841,7,2290.66,-5928.75,74.3088,0,0,0,0,0,0,0,0,0,0,4.65739,0,0),
(28841,8,2283.12,-5959.27,55.8999,0,0,0,0,0,0,0,0,0,0,4.06161,0,0),
(28841,9,2271.77,-5970.92,48.815,0,0,0,0,0,0,0,0,0,0,3.61394,0,0),
(28841,10,2250.55,-5980.45,36.277,0,0,0,0,0,0,0,0,0,0,3.67677,0,0),
(28841,11,2241.79,-5987.29,31.6077,0,0,0,0,0,0,0,0,0,0,3.9438,0,0),
(28841,12,2233.43,-5998.21,24.4464,0,0,0,0,0,0,0,0,0,0,4.18335,0,0),
(28841,13,2222.22,-6016.38,10.5408,0,0,0,0,0,0,0,0,0,0,4.15979,0,0),
(28841,14,2206.35,-6051.64,6.24328,0,0,0,0,0,0,0,0,0,0,4.28152,0,0),
(28841,15,2189.89,-6078.5,3.60618,0,0,0,0,0,0,0,0,0,0,4.45195,0,0),
(28841,16,2183.44,-6099.19,0.853,0,0,0,0,0,0,0,0,0,0,4.44252,0,0),
(28841,17,2176.59,-6128.98,1.09618,0,0,0,0,0,0,0,0,0,0,4.45822,0,0),
(28841,18,2168.7,-6155.02,1.37583,0,0,0,0,0,0,0,0,0,0,3.69246,0,0),
(28841,19,2134.1,-6167.12,0.389482,0,0,0,0,0,0,0,0,0,0,4.2934,0,0),
(28841,20,2122.55,-6185.47,14.1255,0,0,0,0,0,0,0,0,0,0,4.2398,0,0),
(28841,21,2115.67,-6196.45,13.3122,0,0,0,0,0,0,0,0,0,0,1.28671,0,0),
(28841,22,2118.73,-6192.05,13.2693,10000,2884102,0,0,0,0,0,0,0,0,1.86369,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2884101,2884102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2884101,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Miner active'),
(2884101,2,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2884101,2,0,0,0,0,0,0,2000001313,0,0,0,0,0,0,0,''),
(2884101,5,15,52595,0,28817,15,1,0,0,0,0,0,0,0,0,'cast 52595 on buddy'),
(2884102,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.20496,''),
(2884102,3,0,0,0,0,0,0,2000001314,0,0,0,0,0,0,0,''),
(2884102,5,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Miner unactive'),
(2884102,6,14,46598,0,0,0,2,0,0,0,0,0,0,0,0,'Ride Vehicle Hardcoded - removed'),
(2884102,7,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001313 AND 2000001314;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001313,'Where\'d this come from? I better get this down to the ships before the foreman sees it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001314,'I\'ll just leave it here and nobody will be the wiser!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM creature_linking_template WHERE entry = 28817;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(28817,609,28841,512+8192,15);
DELETE FROM spell_target_position WHERE id = 52464;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(52464,609,2390.14,-5903.44,109.249,0);
UPDATE creature_template SET MovementType = 2, InhabitType = 5 WHERE entry = 28864;
DELETE FROM creature_movement_template WHERE entry = 28864;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(28864,6,2360.925,-5710.754,155.4011,5000,2886401,0,0,0,0,0,0,0,0,0,0,0),
(28864,5,2347.977,-5736.882,167.929,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,4,2306.983,-5872.798,177.6512,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,3,2281.503,-5955.75,131.79,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,2,2220.663,-6030.991,70.01215,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,1,2191.454,-6131.876,48.42883,0,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2886401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2886401,3,14,46598,0,0,0,2,0,0,0,0,0,0,0,0,'Ride Vehicle Hardcoded - removed'),
(2886401,4,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(13850, 175679, 0, 1, 1, -4714.71, -1325.93, 504.599, 1.5708, 0.147016, -0.691655, 0.147016, 0.691655, 900, 100, 1),
(3341, 175680, 0, 1, 1, -4698.27, -1312.97, 503.944, 2.21004, 0.607692, -0.361538, 0.607693, 0.361539, 900, 100, 1),
(634, 175681, 0, 1, 1, -4695.44, -1318.03, 504.075, 2.21004, 0.607692, -0.361538, 0.607693, 0.361539, 900, 100, 1),
(8403, 175683, 0, 1, 1, -4680.76, -1301, 504.092, 4.71239, 0.61994, -0.340111, 0.619939, 0.34011, 900, 100, 1),
(7144, 175688, 0, 1, 1, -4602.46, -1234.72, 504.472, -0.521631, 0.309975, -0.635543, 0.309974, 0.635543, 900, 100, 1),
(14635, 175689, 0, 1, 1, -4585.96, -1223.39, 504.293, 2.30151, 0.681389, -0.188966, 0.68139, 0.188967, 900, 100, 1);
UPDATE creature_template_addon SET b2_0_sheath = 0 WHERE entry in (36224,36226);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(137954, 36224, 0, 1, 1, 0, 0, 1609.25, 223.458, -61.9034, 0, 180, 0, 0, 50400, 0, 0, 2),
(137955, 36225, 0, 1, 1, 0, 0, 1404.94, 119.901, -62.2941, 2.20079, 180, 0, 0, 50400, 0, 0, 2),
(137956, 36226, 0, 1, 1, 0, 0, 1617.09, 218.687, -59.2467, 0, 180, 0, 0, 50400, 0, 0, 2);
DELETE FROM creature_movement WHERE id in (137954,137955,137956);
DELETE FROM creature_movement_template WHERE entry in (36224,36225,36226);
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(36224, 1, 1609.25, 223.458, -61.9034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 2, 1625.3, 210.093, -60.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 3, 1639.94, 197.828, -60.7662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 4, 1647.45, 200.848, -62.1817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 5, 1667.02, 234.69, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 6, 1675.6, 239, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 7, 1723.02, 239.116, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 8, 1727.49, 241.209, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 9, 1729.36, 267.54, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 10, 1723.58, 290.441, -62.1844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 11, 1720.12, 305.296, -61.4777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 12, 1718.49, 309.041, -61.4776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 13, 1706.62, 324.028, -55.3924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 14, 1707.66, 325.929, -55.3924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 15, 1720.19, 335.44, -49.1403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 16, 1734.86, 346.229, -55.3935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 17, 1737.21, 345.446, -55.3939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 18, 1744.15, 336.707, -60.4845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 19, 1745.91, 336.582, -60.4845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 20, 1773.95, 346.565, -62.2919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 21, 1786.24, 357.143, -61.9606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 22, 1792.52, 369.883, -60.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 23, 1792.49, 374.119, -60.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 24, 1787.54, 394.849, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 25, 1789.02, 398.807, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 26, 1788.91, 404.603, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 27, 1783.72, 410.248, -57.1944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 28, 1776.08, 418.387, -58.031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 29, 1761.86, 432.215, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 30, 1758.75, 431.906, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 31, 1754.99, 427.797, -57.208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 32, 1752.37, 415.723, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 33, 1755.39, 404.236, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 34, 1761.86, 397.933, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 35, 1775.76, 395.263, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 36, 1783.61, 394.952, -57.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 37, 1785.32, 393.828, -57.2137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 38, 1794.38, 372.68, -60.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 39, 1779.7, 349.051, -62.3233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 40, 1757.67, 332.684, -62.2457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 41, 1755.16, 332.687, -62.3082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 42, 1744.68, 335.301, -60.4844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 43, 1736.58, 344.367, -55.3936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 44, 1734.49, 344.861, -55.3932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 45, 1720.66, 334.889, -49.1375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 46, 1708.5, 323.994, -55.3924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 47, 1714.45, 313.474, -60.4849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 48, 1714.44, 311.784, -60.4847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 49, 1704.68, 296.586, -62.1763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 50, 1703.6, 293.716, -62.1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 51, 1703.47, 283.342, -62.1567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 52, 1702.13, 279.941, -62.1551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 53, 1698.64, 280.802, -62.1489, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 54, 1697.22, 284.909, -62.1473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 55, 1701.11, 293.63, -62.1622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 56, 1700.36, 296.727, -62.1666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 57, 1690.12, 309.386, -62.1682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 58, 1668.72, 328.757, -62.164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 59, 1640.5, 340.779, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 60, 1636.33, 344.566, -62.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 61, 1637.51, 347.035, -62.1783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 62, 1642.68, 346.874, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 63, 1649.72, 344.399, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 64, 1653.71, 346.036, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 65, 1658.57, 355.837, -60.7433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 66, 1656.86, 359.73, -60.7457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 67, 1638.04, 370.099, -62.1692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 68, 1611.81, 375.152, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 69, 1572.17, 374.006, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 70, 1551.99, 369.247, -62.1816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 71, 1544.06, 358.657, -62.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 72, 1538.39, 348.907, -62.1768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 73, 1539.91, 346.422, -62.1725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 74, 1552.08, 348.612, -62.1591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 75, 1557.47, 348.297, -62.1556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 76, 1557.97, 345.033, -62.1489, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 77, 1551.41, 341.444, -62.1405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 78, 1533.87, 335.02, -62.167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 79, 1510.63, 312.581, -62.1477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 80, 1498.7, 297.357, -62.1757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 81, 1493.62, 284.433, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 82, 1490.81, 281.06, -62.1727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 83, 1488.55, 281.725, -62.1636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 84, 1490.05, 297.732, -62.1824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 85, 1486.55, 310.192, -61.4948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 86, 1488.01, 319.712, -60.7861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 87, 1500.95, 335.121, -60.0923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 88, 1513.51, 345.537, -60.0912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 89, 1534.2, 356.902, -61.4984, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 90, 1554.56, 368.312, -62.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 91, 1571.42, 375.187, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 92, 1585.84, 377.765, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 93, 1592.03, 370.874, -62.1947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 94, 1597.09, 347.085, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 95, 1596.72, 319.143, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 96, 1599.78, 311.695, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 97, 1630.8, 295.77, -62.1767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 98, 1636.08, 284.011, -60.7685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 99, 1633.37, 278.824, -60.7766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 100, 1611.44, 256.594, -61.9106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 101, 1608.65, 256.319, -62.096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 102, 1598.78, 259.965, -57.1617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 103, 1596.85, 259.143, -57.1617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 104, 1595.79, 257.024, -56.9791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 105, 1595.79, 257.024, -56.9791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 106, 1595.77, 249.513, -52.1528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 107, 1597.26, 248.567, -52.1501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 108, 1603.44, 249.175, -52.1474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 109, 1605.08, 247.345, -52.1539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 110, 1606.02, 242.434, -52.1542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 111, 1607.03, 240.719, -52.157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 112, 1630.53, 240.444, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 113, 1632.89, 243.005, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 114, 1632.59, 249.767, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 115, 1631.35, 254.087, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 116, 1612.68, 274.291, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 117, 1606.97, 276.323, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 118, 1586.31, 276.41, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 119, 1580.77, 274.948, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 120, 1563.42, 257.585, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 121, 1560.01, 251.964, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 122, 1558.89, 241.319, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 123, 1559.38, 231.329, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 124, 1561.18, 225.609, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 125, 1578.66, 206.978, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 126, 1585.73, 204.561, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 127, 1605.47, 204.048, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 128, 1611.46, 206.035, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 129, 1629.38, 223.781, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 130, 1633.15, 233.434, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 131, 1630.57, 236.934, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 132, 1607.13, 238.872, -52.1573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 133, 1605.7, 237.491, -52.1456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 134, 1603.53, 232.569, -52.1455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 135, 1596.86, 231.52, -52.1519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 136, 1596.12, 220.683, -57.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 137, 1598.21, 220.211, -57.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36224, 138, 1606.56, 223.616, -62.1116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 1, 1403.92, 122.002, -62.296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 2, 1403.86, 125.242, -62.2733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 3, 1405.32, 127.165, -62.2687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 4, 1426.19, 154.123, -62.2847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 5, 1427.12, 155.643, -62.284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 6, 1431.45, 165.786, -62.2749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 7, 1434.48, 167.211, -62.2662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 8, 1442.11, 155.511, -57.1532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 9, 1443.47, 154.746, -57.153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 10, 1458.04, 161.847, -50.9415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 11, 1473.62, 171.051, -57.152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 12, 1473.79, 174.277, -57.152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 13, 1469.01, 183.076, -62.1835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 14, 1469.26, 185.451, -62.1841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 15, 1472.28, 187.645, -62.1867, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 16, 1477.59, 188.139, -62.1953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 17, 1480.28, 187.11, -62.1985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 18, 1481.36, 185.917, -62.1984, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 19, 1486.36, 184.441, -62.1841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 20, 1489.26, 187.598, -62.176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 21, 1490.05, 195.677, -62.1655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 22, 1490.64, 198.223, -62.1623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 23, 1491.72, 199.428, -62.1536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 24, 1506.33, 175.36, -62.1588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 25, 1518.16, 159.023, -62.1665, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 26, 1541.18, 141.863, -62.168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 27, 1542.29, 139.746, -62.1685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 28, 1541.04, 137.083, -62.1696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 29, 1535.09, 126.998, -61.522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 30, 1536.23, 123.462, -61.5084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 31, 1544.68, 113.248, -62.1455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 32, 1547.05, 111.818, -62.1444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 33, 1581.21, 104.586, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 34, 1583.09, 105.606, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 35, 1593.63, 126.214, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 36, 1594.31, 130.581, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 37, 1594.49, 165.476, -62.1778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 38, 1591.85, 169.058, -62.1778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 39, 1559.9, 187.383, -62.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 40, 1557.06, 191.528, -62.1829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 41, 1555.87, 199.809, -60.7761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 42, 1556.87, 201.813, -60.777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 43, 1565.77, 211.023, -60.6969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 44, 1579.98, 224.143, -61.91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 45, 1582.29, 224.246, -61.9136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 46, 1584.61, 223.555, -62.0901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 47, 1592.9, 220.518, -57.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 48, 1594.66, 221.128, -57.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 49, 1595.53, 230.76, -52.1538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 50, 1593.39, 232.036, -52.1504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 51, 1588.19, 232.273, -52.1452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 52, 1586.66, 233.891, -52.146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 53, 1586.2, 245.907, -52.1547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 54, 1589.37, 248.588, -52.1539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 55, 1601.85, 248.907, -52.1472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 56, 1604.07, 246.483, -52.1531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 57, 1606.34, 242.329, -52.1551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 58, 1607.96, 240.838, -52.1596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 59, 1629.97, 239.215, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 60, 1632.03, 236.427, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 61, 1629.1, 223.951, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 62, 1612.13, 206.931, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 63, 1609.54, 205.586, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 64, 1597.74, 203.628, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 65, 1594.19, 203.81, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 66, 1582.79, 205.546, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 67, 1578.92, 207.34, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 68, 1562.38, 223.928, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 69, 1560.67, 227.695, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 70, 1559.22, 236.039, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 71, 1561.99, 239.835, -43.1798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 72, 1567.9, 240.194, -44.1656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 73, 1583.31, 240.695, -52.1524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 74, 1584.64, 242.737, -52.1516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 75, 1585.51, 247.529, -52.151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 76, 1587.02, 248.871, -52.1498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 77, 1594.05, 249.378, -52.151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 78, 1595.59, 250.3, -52.1576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 79, 1596.24, 258.4, -57.1617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 80, 1595.33, 259.7, -57.1617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 81, 1583.51, 256.231, -62.1131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 82, 1581.18, 256.734, -61.9061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 83, 1565.84, 270.059, -60.6988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 84, 1554.07, 279.533, -60.774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 85, 1550.04, 280.655, -60.7944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 86, 1545.8, 278.782, -62.1808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 87, 1521.74, 246.218, -62.1779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 88, 1463.97, 233.833, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 89, 1462.32, 230.594, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 90, 1461.74, 216.182, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 91, 1464.13, 199.771, -62.1771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 92, 1467.82, 183.434, -62.1825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 93, 1472.8, 173.582, -57.152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 94, 1472.38, 170.36, -57.0159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 95, 1460.74, 164.095, -51.0549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 96, 1445.55, 153.787, -57.1526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 97, 1444.82, 150.552, -57.1532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 98, 1449.09, 141.992, -62.2779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 99, 1447.06, 138.738, -62.3016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 100, 1425.41, 134.622, -62.2926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 101, 1423.45, 133.419, -62.2923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 102, 1422.17, 131.249, -62.2917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 103, 1412.97, 94.4873, -62.2859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 104, 1412.18, 68.9665, -62.2788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 105, 1410.14, 66.9705, -62.2788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 106, 1405.9, 66.3028, -62.2788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 107, 1391.26, 67.5182, -62.2789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 108, 1387.45, 65.166, -62.2783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 109, 1379.32, 50.8737, -62.2767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 110, 1379.43, 48.5477, -62.2767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 111, 1408.11, 26.9022, -62.2771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 112, 1409.99, 26.58, -62.2771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 113, 1412.16, 26.6933, -62.2771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 114, 1434.35, 33.6435, -62.2764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 115, 1438.17, 36.5337, -62.2772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 116, 1439.62, 38.7145, -62.2778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 117, 1446.23, 64.7357, -62.2823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 118, 1445.82, 67.9256, -62.2815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 119, 1444.84, 70.1582, -62.2807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 120, 1418.58, 101.199, -62.2878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36225, 121, 1404.94, 119.901, -62.2953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 1, 1617.09, 218.687, -59.2467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 2, 1631.55, 204.236, -60.7761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 3, 1640.15, 200.02, -60.7678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 4, 1655.09, 207.06, -62.1803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 5, 1668.47, 234.78, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 6, 1680.32, 239.207, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 7, 1723.51, 240.413, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 8, 1730.39, 230.812, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 9, 1728.82, 211.138, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 10, 1724.62, 196.027, -62.1626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 11, 1718.69, 184.905, -60.7586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 12, 1709.36, 179.081, -60.7305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 13, 1701.33, 182.732, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 14, 1702.61, 194.201, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 15, 1698.51, 195.957, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 16, 1692.65, 187.999, -62.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 17, 1679, 162.393, -62.1604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 18, 1649.45, 142.482, -62.1477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 19, 1637.99, 136.562, -62.1488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 20, 1639.09, 132.697, -62.1597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 21, 1650.7, 134.778, -62.1682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 22, 1667.65, 127.941, -61.4869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 23, 1682.42, 130.873, -60.4286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 24, 1690.93, 138.499, -55.2145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 25, 1693.52, 138.657, -55.2145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 26, 1704.9, 128.41, -49.009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 27, 1716.95, 114.974, -55.2154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 28, 1717.12, 112.667, -55.2158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 29, 1709.33, 104.537, -60.1854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 30, 1696.45, 91.297, -62.2527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 31, 1695.93, 86.824, -62.2604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 32, 1702.34, 70.9391, -62.2922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 33, 1709.62, 68.1468, -62.2882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 34, 1738.57, 59.2006, -59.5723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 35, 1749.86, 49.0943, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 36, 1753.91, 47.7115, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 37, 1766.79, 58.5176, -46.321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 38, 1778.53, 70.2465, -46.317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 39, 1786.4, 78.9438, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 40, 1786.2, 83.474, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 41, 1772.83, 97.0845, -60.6015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 42, 1770.96, 104.361, -62.2738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 43, 1756.44, 136.994, -62.2401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 44, 1750.69, 140.286, -62.1918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 45, 1742.04, 136.301, -62.1524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 46, 1729.46, 125.036, -60.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 47, 1720.63, 116.774, -55.2157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 48, 1718.35, 117.292, -55.2152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 49, 1705.41, 129.555, -49.0482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 50, 1694.9, 140.426, -55.2145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 51, 1695.19, 142.793, -55.2145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 52, 1702.09, 150.261, -60.4686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 53, 1702.37, 152.251, -60.4589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 54, 1700.79, 156.051, -60.448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 55, 1712.58, 176.174, -60.7519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 56, 1724.33, 198.704, -62.1648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 57, 1730.76, 214.786, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 58, 1732.08, 228.061, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 59, 1720.84, 236.727, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 60, 1675.71, 241.504, -62.1777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 61, 1666.81, 247.804, -62.178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 62, 1665.4, 249.851, -62.1778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 63, 1658.12, 270.697, -62.1794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 64, 1655.74, 273.132, -62.1799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 65, 1640.92, 281.127, -60.7668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 66, 1637.55, 279.363, -60.7701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 67, 1620.19, 263.86, -58.9402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 68, 1610.99, 255.713, -61.9098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 69, 1607.46, 253.633, -62.0916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 70, 1596.37, 252.838, -62.0975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 71, 1584.99, 252.553, -62.1102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 72, 1583.53, 251.004, -62.1036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 73, 1584.34, 225.876, -62.0858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 74, 1585.53, 222.97, -62.1403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 75, 1593.44, 221.058, -57.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 76, 1594.7, 230.496, -52.1552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 77, 1589.6, 231.807, -52.1454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 78, 1586.99, 233.745, -52.1458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 79, 1586.88, 246.49, -52.1549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 80, 1587.66, 247.933, -52.1531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 81, 1590.81, 248.534, -52.1547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 82, 1602.72, 248.408, -52.1477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 83, 1605.24, 245.458, -52.1536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 84, 1606.5, 241.89, -52.1555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 85, 1607.7, 240.195, -52.1589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 86, 1630.69, 241.34, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 87, 1632.83, 242.523, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 88, 1632.96, 245.954, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 89, 1631.51, 254.891, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 90, 1613.1, 273.434, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 91, 1605.62, 276.518, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 92, 1586.84, 276.654, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 93, 1578.67, 274.247, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 94, 1562.31, 257.007, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 95, 1558.67, 246.731, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 96, 1559.34, 229.621, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 97, 1562.74, 222.946, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 98, 1578.15, 207.449, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 99, 1586.2, 204.75, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 100, 1604.9, 204.706, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 101, 1611.63, 206.971, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 102, 1628.34, 223.248, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 103, 1631.79, 229.782, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 104, 1632.78, 236.384, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 105, 1630.62, 237.216, -43.1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 106, 1607.8, 239.176, -52.1592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 107, 1606.17, 237.944, -52.1547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 108, 1604.56, 233.824, -52.1459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 109, 1602.06, 231.893, -52.1512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 110, 1596.99, 231.884, -52.1509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 111, 1596.21, 221.58, -57.1618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 112, 1606.62, 223.471, -62.1119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36226, 113, 1609.26, 223.324, -61.9032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(115338, 28169, 595, 3, 1, 0, 0, 2132.45, 1369.3, 132.653, 5.13127, 60, 0, 0, 609, 0, 0, 0),
(115339, 28169, 595, 3, 1, 0, 0, 2269.06, 1183.91, 138.753, 3.28122, 60, 0, 0, 609, 0, 0, 0),
(115340, 28169, 595, 3, 1, 0, 0, 2340.44, 1190.88, 130.828, 4.11898, 60, 0, 0, 609, 0, 0, 0),
(115341, 28169, 595, 3, 1, 0, 0, 2123.62, 1274.19, 137.396, 5.48033, 60, 0, 0, 609, 0, 0, 0),
(115342, 28169, 595, 3, 1, 0, 0, 2115.72, 1281.11, 136.886, 3.08923, 60, 0, 0, 609, 0, 0, 0),
(115343, 28169, 595, 3, 1, 0, 0, 2124.39, 1296.53, 136.744, 4.81711, 60, 0, 0, 609, 0, 0, 0),
(115344, 28169, 595, 3, 1, 0, 0, 2266.58, 1185.48, 138.755, 5.13127, 60, 0, 0, 609, 0, 0, 0),
(115345, 28169, 595, 3, 1, 0, 0, 2166.87, 1239.08, 137.41, 2.18166, 60, 0, 0, 609, 0, 0, 0),
(115347, 28169, 595, 3, 1, 0, 0, 2307.87, 1159.79, 137.185, 1.20428, 60, 0, 0, 609, 0, 0, 0),
(115348, 28169, 595, 3, 1, 0, 0, 2093.52, 1275.96, 140.474, 4.18879, 60, 0, 0, 609, 0, 0, 0),
(115349, 28169, 595, 3, 1, 0, 0, 2165.94, 1366.51, 132.282, 3.89208, 60, 0, 0, 609, 0, 0, 0),
(115350, 28169, 595, 3, 1, 0, 0, 2176.69, 1354.11, 131.165, 5.48033, 60, 0, 0, 609, 0, 0, 0),
(115351, 28169, 595, 3, 1, 0, 0, 2120.65, 1339.69, 131.447, 4.15388, 60, 0, 0, 609, 0, 0, 0),
(115352, 28169, 595, 3, 1, 0, 0, 2104.39, 1366.97, 133.072, 5.44543, 60, 0, 0, 609, 0, 0, 0),
(115353, 28169, 595, 3, 1, 0, 0, 2224.06, 1202.44, 136.394, 3.47321, 60, 0, 0, 609, 0, 0, 0),
(115355, 28169, 595, 3, 1, 0, 0, 2152.13, 1290.85, 134.651, 4.38078, 60, 0, 0, 609, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(115311, 28167, 595, 3, 1, 0, 0, 2252.07, 1150.73, 138.474, 0.523599, 60, 0, 0, 609, 0, 0, 0),
(115312, 28167, 595, 3, 1, 0, 0, 2142.62, 1338.52, 132.653, 1.79769, 60, 0, 0, 609, 0, 0, 0),
(115313, 28167, 595, 3, 1, 0, 0, 2207.32, 1343.56, 130.534, 3.59538, 60, 0, 0, 609, 0, 0, 0),
(115314, 28167, 595, 3, 1, 0, 0, 2359.66, 1204.97, 131.111, 4.04916, 60, 0, 0, 609, 0, 0, 0),
(115315, 28167, 595, 3, 1, 0, 0, 2211.96, 1316.7, 130.425, 1.8326, 60, 0, 0, 609, 0, 0, 0),
(115316, 28167, 595, 3, 1, 0, 0, 2164.54, 1240.92, 137.371, 0.017453, 60, 0, 0, 609, 0, 0, 0),
(115318, 28167, 595, 3, 1, 0, 0, 2120.56, 1336.55, 131.716, 2.58309, 60, 0, 0, 609, 0, 0, 0),
(115319, 28167, 595, 3, 1, 0, 0, 2109.35, 1293.89, 136.883, 0.610865, 60, 0, 0, 609, 0, 0, 0),
(115320, 28167, 595, 3, 1, 0, 0, 2092.02, 1275.04, 140.833, 0.680678, 60, 0, 0, 609, 0, 0, 0),
(115321, 28167, 595, 3, 1, 0, 0, 2105.57, 1270.86, 139.95, 1.309, 60, 0, 0, 609, 0, 0, 0),
(115322, 28167, 595, 3, 1, 0, 0, 2111.6, 1281.83, 137.161, 6.03884, 60, 0, 0, 609, 0, 0, 0),
(115323, 28167, 595, 3, 1, 0, 0, 2111.51, 1296.09, 136.645, 4.11898, 60, 0, 0, 609, 0, 0, 0),
(115324, 28167, 595, 3, 1, 0, 0, 2107.38, 1274.3, 138.896, 4.01426, 60, 0, 0, 609, 0, 0, 0),
(115325, 28167, 595, 3, 1, 0, 0, 2125.75, 1294.59, 136.733, 2.49582, 60, 0, 0, 609, 0, 0, 0),
(115327, 28167, 595, 3, 1, 0, 0, 2338.48, 1187.61, 130.779, 0.506145, 60, 0, 0, 609, 0, 0, 0),
(115328, 28167, 595, 3, 1, 0, 0, 2287.59, 1156.98, 137.549, 1.97222, 60, 0, 0, 609, 0, 0, 0),
(115329, 28167, 595, 3, 1, 0, 0, 2231.61, 1161.02, 138.444, 1.79769, 60, 0, 0, 609, 0, 0, 0),
(115330, 28167, 595, 3, 1, 0, 0, 2164.57, 1339.05, 130.814, 2.58309, 60, 0, 0, 609, 0, 0, 0),
(115331, 28167, 595, 3, 1, 0, 0, 2228.91, 1163.93, 138.184, 6.12611, 60, 0, 0, 609, 0, 0, 0),
(115332, 28167, 595, 3, 1, 0, 0, 2289.27, 1160.08, 137.477, 3.47321, 60, 0, 0, 609, 0, 0, 0),
(115333, 28167, 595, 3, 1, 0, 0, 2264.96, 1143.23, 138.474, 1.74533, 60, 0, 0, 609, 0, 0, 0),
(115334, 28167, 595, 3, 1, 0, 0, 2119.7, 1273.87, 138.237, 3.80482, 60, 0, 0, 609, 0, 0, 0),
(115335, 28167, 595, 3, 1, 0, 0, 2157.32, 1260.45, 134.838, 0.610865, 60, 0, 0, 609, 0, 0, 0),
(115336, 28167, 595, 3, 1, 0, 0, 2179.53, 1354.3, 131.133, 3.66519, 60, 0, 0, 609, 0, 0, 0),
(115356, 28167, 595, 3, 1, 0, 0, 2191.38, 1306.04, 133.107, 4.2586, 60, 0, 0, 609, 0, 0, 0),
(115357, 28167, 595, 3, 1, 0, 0, 2117.78, 1338.3, 131.803, 6.03884, 60, 0, 0, 609, 0, 0, 0),
(115358, 28167, 595, 3, 1, 0, 0, 2136.5, 1368.51, 132.843, 2.41998, 60, 0, 0, 609, 0, 0, 0),
(115359, 28167, 595, 3, 1, 0, 0, 2178.09, 1278.78, 133.669, 2.77507, 60, 0, 0, 609, 0, 0, 0),
(115360, 28167, 595, 3, 1, 0, 0, 2366.37, 1184.53, 132.12, 2.9147, 60, 0, 0, 609, 0, 0, 0),
(60278, 28167, 595, 3, 1, 0, 0, 2310.54, 1160.29, 136.752, 3.00197, 60, 0, 0, 609, 0, 0, 0),
(60290, 28167, 595, 3, 1, 0, 0, 2190.07, 1308.66, 132.3, 5.32325, 60, 0, 0, 609, 0, 0, 0);
SET @DB_STRING_ENTRY:=2000001315;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+35;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(@DB_STRING_ENTRY+0,'The Lightbringer...',0,0,0,396,'Soldier - salute 1'),
(@DB_STRING_ENTRY+1,'Lord Uther...',0,0,0,396,'Soldier - salute 2'),
(@DB_STRING_ENTRY+2,'Glad you could make it, Uther.',12828,0,0,396,'Arthas - intro 1'), -- music 14947
(@DB_STRING_ENTRY+3,'Watch your tone with me, boy. You may be the prince, but I\'m still your superior as a paladin!',12839,0,0,397,'Uther - intro 2'),
(@DB_STRING_ENTRY+4,'As if I could forget. Listen, Uther, there\'s something about the plague you should know...',12829,0,0,0,'Arthas - intro 3'),
(@DB_STRING_ENTRY+5,'Oh, no. We\'re too late. These people have all been infected! They may look fine now, but it\'s just a matter of time before they turn into the undead!',12830,0,0,5,'Arthas - intro 4'),
(@DB_STRING_ENTRY+6,'What?',12840,0,0,5,'Uther - intro 5'),
(@DB_STRING_ENTRY+7,'This entire city must be purged.',12831,0,0,396,'Arthas - intro 6'),
(@DB_STRING_ENTRY+8,'How can you even consider that? There\'s got to be some other way.',12841,0,0,6,'Uther - intro 7'),
(@DB_STRING_ENTRY+9,'Damn it, Uther! As your future king, I order you to purge this city!',12832,0,0,5,'Arthas - intro 8'),
(@DB_STRING_ENTRY+10,'You are not my king yet, boy! Nor would I obey that command even if you were!',12842,0,0,396,'Uther - intro 9'),
(@DB_STRING_ENTRY+11,'Then I must consider this an act of treason.',12833,0,0,396,'Arthas - intro 10'),
(@DB_STRING_ENTRY+12,'Treason? Have you lost your mind, Arthas?',12843,0,0,5,'Arthas - intro 11'), -- music 14948
(@DB_STRING_ENTRY+13,'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service.',12834,0,0,378,'Arthas - intro 12'),
(@DB_STRING_ENTRY+14,'Arthas! You can\'t just--',12837,0,0,396,'Jaina - intro 13'),
(@DB_STRING_ENTRY+15,'It\'s done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!',12835,0,0,1,'Arthas - intro 14'),
(@DB_STRING_ENTRY+16,'You\'ve just crossed a terrible threshold, Arthas.',12844,0,0,397,'Uther - intro 15'),
(@DB_STRING_ENTRY+17,'Jaina?',12836,0,0,0,'Arthas - intro 16'),
(@DB_STRING_ENTRY+18,'I\'m sorry, Arthas. I can\'t watch you do this.',12838,0,0,396,'Jaina - intro 17'), -- music 14949
(@DB_STRING_ENTRY+19,'Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all of Lordaeron!',14327,1,0,0,'Arthas - intro 18'),
(@DB_STRING_ENTRY+20,'All officers should check in with me when their squads are ready. We\'ll enter Stratholme on my order.',0,0,0,0,'Arthas - city entrance'),
(@DB_STRING_ENTRY+21,'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let\'s go.',14293,0,0,396,'Arthas - city 1'),
(@DB_STRING_ENTRY+22,'Everyone I know seems to be coming down with something really bad.',0,0,0,1,'Citizen - gossip 1'),
(@DB_STRING_ENTRY+23,'Have you talked to anyone who hasn\'t started getting sick?',0,0,0,1,'Citizen - gossip 2'),
(@DB_STRING_ENTRY+24,'It must be something in the water, I tell you.',0,0,0,1,'Citizen - gossip 3'),
(@DB_STRING_ENTRY+25,'My bed is looking pretty good right now.',0,0,0,1,'Citizen - gossip 4'),
(@DB_STRING_ENTRY+26,'Prince Arthas, may the light be praised! Many people in the town have begun to fall seriously ill, can you help us?',0,0,0,1,'Citizen - query'),
(@DB_STRING_ENTRY+27,'I can only help you with a clean death.',14294,0,0,0,'Arthas - city 2'),
(@DB_STRING_ENTRY+28,'What? This can\'t be!',0,0,0,274,'Citizen - attack'),
(@DB_STRING_ENTRY+29,'Oh, no...',0,0,0,431,'Citizen - attack 2'),
(@DB_STRING_ENTRY+30,'Did you see that?',0,0,0,5,'Citizen - attack 3'),
(@DB_STRING_ENTRY+31,'That was just the beginning.',14295,0,0,1,'Arthas - city 3'),
(@DB_STRING_ENTRY+32,'Yes, this is the beginning. I\'ve been waiting for you, young prince. I am Mal\'Ganis.',14410,1,0,0,'Malganis - city 4'),
(@DB_STRING_ENTRY+33,'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.',14411,1,0,378,'Malganis - city 5'),
(@DB_STRING_ENTRY+34,'I won\'t allow it, Mal\'Ganis! Better that these people die by my hand than serve as your slaves in death!',14296,1,0,397,'Arthas - city 6'),
(@DB_STRING_ENTRY+35,'Mal\'Ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected.',14885,1,0,1,'Arthas - city 7');
DELETE FROM `creature` WHERE `guid` = 138007;
DELETE FROM creature_movement_template WHERE entry=26499;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(26499, 1, 1939.171, 1288.315, 145.4922, 0, 0, 0),
(26499, 2, 1924.883, 1289.172, 143.8736, 0, 0, 0),
(26499, 3, 1912.860, 1290.030, 142.2913, 0, 0, 0),
(26499, 4, 1903.254, 1291.568, 143.3867, 1000, 2649904, 3.80),
(26499, 5, 1903.257, 1298.676, 143.5107, 0, 0, 0),
(26499, 6, 1907.603, 1311.531, 149.7067, 1000, 2649906, 0.20),
(26499, 7, 1907.603, 1311.531, 149.7067, 1000, 2649907, 4.40),
(26499, 8, 1903.257, 1298.676, 143.5107, 0, 0, 0),
(26499, 9, 1903.254, 1291.568, 143.3867, 0, 0, 0),
(26499, 10, 1908.119, 1287.726, 142.679, 0, 0, 0),
(26499, 11, 1916.920, 1287.297, 142.008, 12000, 2649911, 3.04),
(26499, 12, 1924.738, 1287.323, 143.839, 0, 0, 0),
(26499, 13, 1940.938, 1287.586, 145.672, 0, 0, 0),
(26499, 14, 1987.673, 1287.515, 145.474, 0, 0, 0),
(26499, 15, 1993.607, 1293.707, 145.457, 0, 0, 0),
(26499, 16, 1996.356, 1301.102, 145.371, 0, 0, 0),
(26499, 17, 1996.892, 1314.195, 143.166, 0, 0, 0),
(26499, 18, 2004.018, 1323.278, 142.977, 0, 0, 0),
(26499, 19, 2013.225, 1324.761, 142.971, 0, 0, 0),
(26499, 20, 2020.775, 1317.646, 142.936, 0, 0, 0),
(26499, 21, 2023.479, 1307.916, 143.463, 0, 0, 0),
(26499, 22, 2029.591, 1289.071, 143.576, 0, 0, 0),
(26499, 23, 2047.948, 1287.598, 142.865, 1000, 2649923, 3.22),
(26499, 24, 2047.948, 1287.598, 142.865, 12000, 2649924, 3.22),
(26499, 25, 2072.355, 1287.635, 141.675, 0, 0, 0),
(26499, 26, 2083.011, 1287.590, 141.237, 10000, 2649926, 5.36),
(26499, 27, 2087.105, 1281.529, 140.683, 3000, 2649927, 5.32),
(26499, 28, 2091.994, 1277.257, 140.470, 3000, 2649928, 5.58),
(26499, 29, 2091.994, 1277.257, 140.470, 3000, 2649929, 2.47),
(26499, 30, 2091.994, 1277.257, 140.470, 57000, 2649930, 0.43),
(26499, 31, 2091.994, 1277.257, 140.470, 1000, 2649931, 0.43);
DELETE FROM dbscripts_on_creature_movement WHERE id=2649904;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649904,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649904,0,35,5,70,0,0,0,0,'Arthas - Send AI event'),
(2649904,8,0,0,0,0,0,0,@DB_STRING_ENTRY+2,'Arthas - say intro 1'),
(2649904,8,16,14947,0,0,0,8,0,'Arthas - change music'),
(2649904,13,0,0,0,26528,30,0,@DB_STRING_ENTRY+3,'Uther - say intro 2'),
(2649904,19,25,0,0,26528,30,0,0,'Uther - set run off'),
(2649904,19,25,0,0,26497,30,0,0,'Jaina - set run off'),
(2649904,19,25,0,0,0,0,0,0,'Arthas - set run off'),
(2649904,20,0,0,0,0,0,0,@DB_STRING_ENTRY+4,'Arthas - say intro 3'),
(2649904,20,32,0,0,26528,30,0,0,'Uther - unpause WP movement'),
(2649904,20,32,0,0,26497,30,0,0,'Jaina - unpause WP movement'),
(2649904,20,32,0,0,0,0,0,0,'Arthas - unpause WP movement');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649906;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649906,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649906,0,0,0,0,0,0,0,@DB_STRING_ENTRY+5,'Arthas - say intro 4'),
(2649906,10,0,0,0,26528,30,0,@DB_STRING_ENTRY+6,'Uther - say intro 5'),
(2649906,13,32,0,0,0,0,0,0,'Arthas - unpause WP movement');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649907;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649907,0, 32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649907,0, 0,0,0,0,0,0,@DB_STRING_ENTRY+7,'Arthas - say intro 6'),
(2649907,4, 0,0,0,26528,30,0,@DB_STRING_ENTRY+8,'Uther - say intro 7'),
(2649907,10,0,0,0,0,0,0,@DB_STRING_ENTRY+9,'Arthas - say intro 8'),
(2649907,15,0,0,0,26528,30,0,@DB_STRING_ENTRY+10,'Uther - say intro 9'),
(2649907,22,0,0,0,0,0,0,@DB_STRING_ENTRY+11,'Arthas - say intro 10'),
(2649907,25,0,0,0,26528,30,0,@DB_STRING_ENTRY+12,'Uther - say intro 11'),
(2649907,25,16,14948,0,0,0,8,0,'Arthas - change music'),
(2649907,30,0,0,0,0,0,0,@DB_STRING_ENTRY+13,'Arthas - say intro 12'),
(2649907,42,0,0,0,26497,30,0,@DB_STRING_ENTRY+14,'Jaina - say intro 13'),
(2649907,42,1,0,0,0,0,0,0,'Arthas - cancel emote state'),
(2649907,44,0,0,0,0,0,0,@DB_STRING_ENTRY+15,'Arthas - say intro 14'),
(2649907,50,1,5,0,0,0,0,0,'Arthas - handle emote'),
(2649907,57,0,0,0,26528,30,0,@DB_STRING_ENTRY+16,'Uther - say intro 15'),
(2649907,59,32,0,0,26528,30,0,0,'Uther - unpause WP movement'),
(2649907,59,32,0,0,26497,30,0,0,'Jaina - unpause WP movement'),
(2649907,61,0,0,0,0,0,0,@DB_STRING_ENTRY+17,'Arthas - say intro 16');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649911;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649911,0,0,0,0,0,0,0,@DB_STRING_ENTRY+19,'Arthas - say intro 18'),
(2649911,0,25,1,0,0,0,0,0,'Arthas - set run on');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649923;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649923,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649923,1,0,0,0,0,0,0,@DB_STRING_ENTRY+20,'Arthas - say city entrance'),
(2649923,1,29,1,1,0,0,0,0,'Arthas - add gossip flag'),
(2649923,1,25,0,0,0,0,0,0,'Arthas - set run off'),
(2649923,0,35,5,30,0,0,0,0,'Arthas - Send AI event');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649924;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649924,3,0,0,0,0,0,0,@DB_STRING_ENTRY+21,'Arthas - say city 1'),
(2649924,12,0,0,0,28167,115322,16,@DB_STRING_ENTRY+22,'Stratholme Citizen - say gossip 1'),
(2649924,12,32,0,0,27747,115424,16,0,'High Elf Mage-Priest - start WP movement'),
(2649924,12,32,0,0,27747,115423,16,0,'High Elf Mage-Priest - start WP movement'),
(2649924,12,32,0,0,27745,115405,16,0,'Lordaeron Footman - start WP movement'),
(2649924,12,32,0,0,27745,115407,16,0,'Lordaeron Footman - start WP movement'),
(2649924,12,32,0,0,27745,115408,16,0,'Lordaeron Footman - start WP movement'),
(2649924,12,32,0,0,27745,115406,16,0,'Lordaeron Footman - start WP movement'),
(2649924,24,0,0,0,28167,115324,16,@DB_STRING_ENTRY+23,'Stratholme Citizen - say gossip 2');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649926;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649926,1,0,0,0,28167,115320,16,@DB_STRING_ENTRY+26,'Stratholme Citizen - say city query prince'),
(2649926,1,20,2,0,28167,115320,16,0,'Stratholme Citizen - start WP movement'),
(2649926,4,0,0,0,28167,115321,16,@DB_STRING_ENTRY+24,'Stratholme Resident - say gossip 3'),
(2649926,8,0,0,0,0,0,0,@DB_STRING_ENTRY+27,'Arthas - say city 2'),
(2649926,8,0,0,0,28167,115322,16,@DB_STRING_ENTRY+25,'Stratholme Resident - say gossip 4'),
(2649926,12,0,0,0,28167,115320,16,@DB_STRING_ENTRY+28,'Stratholme Citizen - say city attack');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649927;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649927,0,15,50773,0,28167,115320,18,0,'Arthas - cast Crusader Strike on Stratholme Citizen'),
(2649927,2,0,0,0,28169,115348,16,@DB_STRING_ENTRY+29,'Stratholme Resident - say city attack 2'),
(2649927,3,0,0,0,28167,115321,16,@DB_STRING_ENTRY+30,'Stratholme Resident - say city attack 3');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649928;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649928,0,15,50773,0,28169,115348,18,0,'Arthas - cast Crusader Strike on Stratholme Resident');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649929;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(2649929,0,0,0,0,0,0,0,@DB_STRING_ENTRY+31,0,0,0,0,'Arthas - say city 2'),
(2649929,2,10,26533,30000,0,0,0,0,2113.454,1287.986,136.3829,3.07,'Spawn Malganis'),
(2649929,3,0,0,0,26533,30,0,@DB_STRING_ENTRY+32,0,0,0,0,'Malganis - say city 4');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649930;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649930,10,35,5,100,26533,30,0,0,'Malganis - Send AI event'),
(2649930,12,0,0,0,26533,30,0,@DB_STRING_ENTRY+33,'Malganis - say city 5'),
(2649930,27,15,51908,0,26533,30,0,0,'Malganis - Cast Cosmetic - Shadowstep'),
(2649930,27,18,1000,0,26533,30,2,0,'Malganis - Despawn'),
(2649930,27,0,0,0,0,0,0,@DB_STRING_ENTRY+34,'Arthas - say city 6'),
(2649930,37,0,0,0,0,0,0,@DB_STRING_ENTRY+35,'Arthas - say city 7');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649931;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649931,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649931,0,32,0,0,27747,115424,16,0,'High Elf Mage-Priest - resume WP movement'),
(2649931,0,32,0,0,27747,115423,16,0,'High Elf Mage-Priest - resume WP movement'),
(2649931,0,32,0,0,27745,115405,16,0,'Lordaeron Footman - resume WP movement'),
(2649931,0,32,0,0,27745,115407,16,0,'Lordaeron Footman - resume WP movement'),
(2649931,0,32,0,0,27745,115408,16,0,'Lordaeron Footman - resume WP movement'),
(2649931,0,32,0,0,27745,115406,16,0,'Lordaeron Footman - resume WP movement');
DELETE FROM creature_movement_template WHERE entry=26497;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(26497, 1, 1885.484, 1297.844, 145.2992, 0, 0, 0), 
(26497, 2, 1891.239, 1294.988, 144.1697, 0, 0, 0), 
(26497, 3, 1896.754, 1292.831, 143.7381, 1000, 2649703, 5.76),
(26497, 4, 1898.829, 1299.562, 144.0106, 1000, 2649703, 1.24),
(26497, 5, 1895.119, 1293.928, 143.7991, 4000, 2649705, 3.46),
(26497, 6, 1868.875, 1283.657, 144.1956, 0, 0, 0),
(26497, 7, 1836.849, 1280.569, 143.7523, 0, 0, 0),
(26497, 8, 1785.225, 1267.401, 139.7626, 0, 2649708, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2649703,2649705,2649708);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649703,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(2649705,0,0,0,0,0,0,0,@DB_STRING_ENTRY+18,'Jaina - say intro 17'),
(2649705,0,16,14949,0,0,0,8,0,'Jaina - change music'),
(2649705,10,32,0,0,26499,50,0,0,'Arthas - unpause WP movement'),
(2649708,0,18,0,0,0,0,0,0,'Jaina - despawn');
DELETE FROM creature_movement_template WHERE entry=26528;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(26528, 1, 1807.619, 1276.471, 141.7253, 0, 0, 0),
(26528, 2, 1862.016, 1282.776, 144.1979, 0, 2652802, 0), 
(26528, 3, 1879.415, 1283.921, 143.8993, 0, 2652803, 0),
(26528, 4, 1889.687, 1285.941, 143.7088, 0, 2652804, 0), 
(26528, 5, 1899.588, 1288.324, 143.3571, 1000, 2652805, 0.76),
(26528, 6, 1903.257, 1298.676, 143.5107, 1000, 2652805, 1.37),
(26528, 7, 1896.119, 1294.928, 143.7991, 0, 0, 0),
(26528, 8, 1868.875, 1283.657, 144.1956, 0, 2652808, 0),
(26528, 9, 1836.849, 1280.569, 143.7523, 0, 0, 0),
(26528, 10, 1785.225, 1267.401, 139.7626, 0, 2652810, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2652802,2652803);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2652802,0,0,0,0,27745,30,0,@DB_STRING_ENTRY+0,'Soldier - say salute 1'),
(2652803,0,0,0,0,27745,30,0,@DB_STRING_ENTRY+1,'Soldier - say salute 2');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2652804,2652805,2652808,2652810);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2652804,0,35,5,30,0,'Uther - Send AI event'),
(2652805,0,32,1,0,0,'Uther - pause WP Movement'),
(2652808,0,35,6,30,0,'Uther - Send AI event'),
(2652810,0,18,0,0,0,'Uther - despawn');
UPDATE creature SET MovementType=2 WHERE guid IN (115424,115423,115405,115407,115408,115406);
DELETE FROM creature_movement WHERE id=115424;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115424, 1, 2037.91, 1293.03, 143.399, 1000, 2774701, 4.729),
(115424, 2, 2064.724, 1292.197, 141.9911, 0, 0, 0), 
(115424, 3, 2074.805, 1292.172, 141.6728, 1000, 2774701, 6.27),
(115424, 4, 2091.476, 1294.284, 139.8228, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=115423;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115423, 1, 2037.59, 1281.81, 143.566, 1000, 2774701, 1.483),
(115423, 2, 2060.791, 1282.987, 142.1430, 0, 0, 0), 
(115423, 3, 2074.624, 1282.958, 141.6344, 1000, 2774701, 6.27),
(115423, 4, 2091.26, 1281.715, 139.9222, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=115405;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115405, 1,2042.13, 1293.14, 143.236, 1000, 2774701, 4.642),
(115405, 2, 2064.724, 1292.197, 141.9911, 0, 0, 0), 
(115405, 3, 2077.737, 1290.441, 141.5698, 1000, 2774701, 6.27),
(115405, 4, 2096.125, 1290.533, 138.8193, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=115407;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115407, 1,2041.97, 1281.66, 143.454, 1000, 2774701, 1.623),
(115407, 2, 2060.791, 1282.987, 142.1430, 0, 0, 0), 
(115407, 3, 2077.590, 1284.609, 141.5710, 1000, 2774701, 6.27),
(115407, 4, 2096.411, 1284.227, 138.799, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=115408;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115408, 1, 2046.86, 1293.33, 143.032, 1000, 2774701, 4.782),
(115408, 2, 2064.724, 1292.197, 141.9911, 0, 0, 0), 
(115408, 3, 2078.055, 1293.624, 141.5544, 1000, 2774701, 6.27),
(115408, 4, 2096.939, 1297.57, 138.9689, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=115406;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115406, 1, 2046.71, 1281.91, 143.221, 1000, 2774701, 1.518),
(115406, 2, 2060.791, 1282.987, 142.1430, 0, 0, 0), 
(115406, 3, 2078.365, 1281.254, 141.5182, 1000, 2774701, 6.27),
(115406, 4, 2096.328, 1278.988, 139.4345, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=115320;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(115320, 1, 2088.094, 1279.229, 140.827, 1000, 2774701, 2.19);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2774701);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2774701,0,32,1,0,0,'Soldier - pause WP Movement'); 
DELETE FROM dbscripts_on_spell WHERE id=53435;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,datalong2,data_flags,comments) VALUES
(53435,0,15,53436,0,6,'Cast Teleport to CoT Stratholme Phase 4');
DELETE FROM dbscripts_on_creature_movement WHERE id =369402; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(369402,3,0,0,0,0,0,0,2000001247,0,0,0,0,0,0,0,''),
(369402,7,31,3693,30,0,0,0,0,0,0,0,0,0,0,0,''),
(369402,8,0,0,0,3693,30,7,2000001351,0,0,0,0,0,0,0,''),
(369402,13,0,0,0,0,0,0,2000001352,0,0,0,0,0,0,0,''),
(369402,18,0,0,0,0,0,0,2000001353,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry in (2000001351,2000001352,2000001353);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001351,'Hello, Selarin. I\'m afraid I cannot help you at the moment, but perhaps some of the adventurers here in Auberdine can...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001352,'Thank you, Terenthis. I shall remain here for as long as I can.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001353,'Hopefully I can send a worthy few to help Ashenvale and the Sentinels.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(78400, 18475, 530, 1, 1, 0, 0, -3516.72, 5804.83, -8.98603, 4.15958, 300, 0, 0, 5715, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 78400;
DELETE FROM creature_movement_template WHERE entry = 18475;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(18475, 1, -3536.68, 5787.4, -6.59531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33926, 0, 0),
(18475, 2, -3562.41, 5785.56, -2.00246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.9819, 0, 0),
(18475, 3, -3580.61, 5788.38, -3.69901, 13000, 1847501, 0, 0, 0, 0, 0, 0, 0, 0, 2.98583, 0, 0),
(18475, 4, -3589.24, 5790.31, -4.90877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62454, 0, 0),
(18475, 5, -3609.38, 5803.49, -4.02221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.05906, 0, 0),
(18475, 6, -3615.74, 5820.5, -4.67745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00801, 0, 0),
(18475, 7, -3622.37, 5834.25, 0.294291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.16116, 0, 0),
(18475, 8, -3637.95, 5850.92, -0.542909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.03157, 0, 0),
(18475, 9, -3646.58, 5872.23, -6.128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.32864, 0, 0),
(18475, 10, -3636.95, 5912.25, -23.4443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.70563, 0, 0),
(18475, 11, -3640.31, 5927.94, -30.2711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.70563, 0, 0),
(18475, 12, -3640.04, 5947.71, -31.4042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.45666, 0, 0),
(18475, 13, -3638.97, 5958.55, -27.3119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.577796, 0, 0),
(18475, 14, -3627.43, 5980.86, -20.8827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.994843, 0, 0),
(18475, 15, -3622.81, 5987.12, -20.286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.27665, 0, 0),
(18475, 16, -3611.57, 5987.58, -25.0752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.66011, 0, 0),
(18475, 17, -3604.92, 5981.8, -29.6902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.040585, 0, 0),
(18475, 18, -3599.89, 5982.2, -30.8126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.040585, 0, 0),
(18475, 19, -3556.21, 5996.2, -34.9259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.727808, 0, 0),
(18475, 20, -3546.77, 6008.55, -32.8145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.727808, 0, 0),
(18475, 21, -3526.8, 6046.15, -21.48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.771006, 0, 0),
(18475, 22, -3507.05, 6060.53, -15.6156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0178065, 0, 0),
(18475, 23, -3501.47, 6061.66, -15.4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.08108, 0, 0),
(18475, 24, -3485.31, 6060.18, -18.0959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19244, 0, 0),
(18475, 25, -3455.85, 6050.59, -12.3859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.95545, 0, 0),
(18475, 26, -3452.47, 6033.86, -14.0961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.76774, 0, 0),
(18475, 27, -3449.56, 6010.21, -18.4125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0709, 0, 0),
(18475, 28, -3440.77, 5986.13, -24.7572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.05363, 0, 0),
(18475, 29, -3434.65, 5972.64, -24.643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61302, 0, 0),
(18475, 30, -3435.52, 5950.69, -25.7819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09466, 0, 0),
(18475, 31, -3448.67, 5923.3, -33.8689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.30043, 0, 0),
(18475, 32, -3454.38, 5908.85, -32.9945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.00119, 0, 0),
(18475, 33, -3467.35, 5894.72, -29.4213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.13935, 0, 0),
(18475, 34, -3486.01, 5866.78, -23.0018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.19698, 0, 0),
(18475, 35, -3496.11, 5848.12, -15.6849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.25986, 0, 0),
(18475, 36, -3503.11, 5830.48, -14.2908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.30306, 0, 0),
(18475, 37, -3508.39, 5818.03, -12.4956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.01325, 0, 0),
(18475, 38, -3516.37, 5805.25, -9.1044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15854, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1847501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1847501,3,0,0,0,0,0,0,2000001354,0,0,0,0,0,0,0,''),
(1847501,7,0,0,0,0,0,0,2000001355,0,0,0,0,0,0,0,''),
(1847501,11,0,0,0,0,0,0,2000001356,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001354 AND 2000001356;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000001354,'Come out, little birdies! Mug\'gok want to play!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,15,NULL),
(2000001355,'No hurt Mug\'gok\'s feelings, bird-men!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,11,NULL),
(2000001356,'Fine! Birdies be dat way! Mug\'gok find new friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,14,NULL);
REPLACE INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-747','The %s flies up through the trees, free of Terokk\'s corruption.','0','2','0','22339','0');
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2233901','22339','11','0','100','0','0','0','0','0','1','-747','0','0','0','0','0','0','0','0','0','0','Redeemet Hatchling - Yell on Spawned'),
('1167304','11673','0','0','100','3','8000','12000','9000','14000','11','19272','0','1','0','0','0','0','0','0','0','0','Ancient Core Hound - Lava Breath');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry = 22339;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` in (26532,28340,38341);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2652909','26529','6','0','100','6','0','0','0','0','1','-846','0','0','0','0','0','0','0','0','0','0','Meathook - Yell on Death'),
('2653011','26530','6','0','100','6','0','0','0','0','1','-859','0','0','0','0','0','0','0','0','0','0','Salramm the Fleshcrafter - Yell on Death'),
('2653201','26532','4','0','100','6','0','0','0','0','1','-861','0','0','0','0','0','0','0','0','0','0','Chrono-Lord Epoch - Yell on Aggro'),
('2653202','26532','0','0','100','7','12000','18000','21000','30000','1','-862','-863','-864','11','52766','0','1','0','0','0','0','Chrono-Lord Epoch - Yell and Cast Time Warp'),
('2653203','26532','9','0','100','3','0','5','13000','17000','11','52771','1','0','0','0','0','0','0','0','0','0','Chrono-Lord Epoch (Normal) - Cast Wounding Strike'),
('2653204','26532','9','0','100','5','0','5','13000','17000','11','58830','1','0','0','0','0','0','0','0','0','0','Chrono-Lord Epoch (Heroic) - Cast Wounding Strike'),
('2653205','26532','0','0','100','7','6000','11000','16000','21000','11','52772','4','0','0','0','0','0','0','0','0','0','Chrono-Lord Epoch - Cast Curse of Exertion'),
('2653206','26532','0','0','100','5','9000','12000','12000','15000','11','58848','0','1','0','0','0','0','0','0','0','0','Chrono-Lord Epoch (Heroic) - Cast Time Stop'),
('2653207','26532','5','0','100','7','5000','5000','0','0','1','-865','-866','-867','0','0','0','0','0','0','0','0','Chrono-Lord Epoch - Yell on Player Kill'),
('2653208','26532','6','0','100','6','0','0','0','0','4','13416','0','0','0','0','0','0','0','0','0','0','Chrono-Lord Epoch - Yell on Death'),
('2653311','26533','2','0','100','6','1','0','0','0','18','768','0','0','24','0','0','0','23','1','0','0','Mal\'Ganis - Set Passive and OOC Not Attackable and Evade and Set Phase 1 at 1% HP'),
('2653312','26533','21','1','100','6','0','0','0','0','45','6','100','0','0','0','0','0','0','0','0','0','Mal\'Ganis - Send Custom AI Event on Reached Home'),
('2774302','27743','8','0','100','3','0','127','1000','4000','11','52635','0','1','0','0','0','0','0','0','0','0','Infinite Hunter (Normal) - Cast Accelerate on Spellhit'),
('2774303','27743','8','0','100','5','0','127','1000','4000','11','58820','0','1','0','0','0','0','0','0','0','0','Infinite Hunter (Heroic) - Cast Accelerate on Spellhit');
DELETE FROM `creature_ai_texts` WHERE `entry` in (-860, -870);
UPDATE creature_template SET AIName = '' WHERE Entry in (28340,28341);
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 185211 AND `dataint` = 2000000796;
DELETE FROM `db_script_string` WHERE `entry` = 2000000796;
DELETE FROM creature_linking_template WHERE entry IN (27729,27731,27732,27734,27736,28199,28200,28201,28249,27737);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(27729, 595, 26499, 8208, 0),
(27731, 595, 26499, 8208, 0),
(27732, 595, 26499, 8208, 0),
(27734, 595, 26499, 8208, 0),
(27736, 595, 26499, 8208, 0),
(28199, 595, 26499, 8208, 0),
(28200, 595, 26499, 8208, 0),
(28201, 595, 26499, 8208, 0),
(28249, 595, 26499, 8208, 0),
(27737, 595, 26499, 8208, 0);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3227303','32273','6','0','100','4','0','0','0','0','0','0','0','0','1','-746','0','0','0','0','0','0','Infinite Corruptor - Yell on Death');
UPDATE `creature` SET `position_x`='-10657.14', `position_y`='1010.878', `position_z`='32.55214', `orientation`='0.3832296', `MovementType`='2' WHERE `id`=869;
DELETE FROM `creature_movement` WHERE `id`=2490;
DELETE FROM `creature_movement_template` WHERE `entry`=869;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(869, 1, '-10642.80', '1016.665', '31.565100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 2, '-10620.20', '1000.852', '32.994370', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 3, '-10593.99', '987.9368', '36.877070', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 4, '-10564.63', '975.7330', '40.634450', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 5, '-10532.88', '961.9837', '40.885220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 6, '-10500.21', '952.6395', '39.459800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 7, '-10466.91', '953.8127', '35.898200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 8, '-10433.16', '981.9645', '34.757520', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 9, '-10410.51', '994.7161', '32.164260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 10, '-10400.42', '992.5428', '31.579060', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 11, '-10386.81', '984.0738', '31.597850', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 12, '-10367.39', '980.6182', '31.472850', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 13, '-10333.47', '978.7831', '31.254930', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 14, '-10300.25', '965.6370', '31.253040', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 15, '-10285.64', '964.0901', '31.185620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 16, '-10273.86', '970.6926', '31.185620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 17, '-10267.59', '983.3521', '31.310620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 18, '-10260.89', '989.9033', '31.377510', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 19, '-10233.98', '996.2642', '31.491770', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 20, '-10215.86', '994.5016', '32.503140', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 21, '-10200.06', '989.3520', '32.933310', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 22, '-10190.04', '984.9003', '33.780400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 23, '-10166.77', '986.7172', '34.054080', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 24, '-10133.55', '990.6491', '36.048570', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 25, '-10116.65', '990.1268', '38.219650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 26, '-10100.18', '999.1907', '37.460870', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 27, '-10116.65', '990.1268', '38.219650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 28, '-10133.55', '990.6491', '36.048570', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 29, '-10166.77', '986.7172', '34.054080', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 30, '-10190.04', '984.9003', '33.780400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 31, '-10200.06', '989.3520', '32.933310', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 32, '-10215.86', '994.5016', '32.503140', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 33, '-10233.98', '996.2642', '31.491770', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 34, '-10260.89', '989.9033', '31.377510', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 35, '-10267.59', '983.3521', '31.310620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 36, '-10273.86', '970.6926', '31.185620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 37, '-10285.64', '964.0901', '31.185620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 38, '-10300.25', '965.6370', '31.253040', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 39, '-10333.47', '978.7831', '31.254930', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 40, '-10367.39', '980.6182', '31.472850', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 41, '-10386.81', '984.0738', '31.597850', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 42, '-10400.42', '992.5428', '31.579060', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 43, '-10410.51', '994.7161', '32.164260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 44, '-10433.16', '981.9645', '34.757520', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 45, '-10466.91', '953.8127', '35.898200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 46, '-10500.21', '952.6395', '39.459800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 47, '-10532.88', '961.9837', '40.885220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 48, '-10564.63', '975.7330', '40.634450', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 49, '-10593.99', '987.9368', '36.877070', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 50, '-10620.20', '1000.8520', '32.99437', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 51, '-10642.80', '1016.6650', '31.56510', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(869, 52, '-10647.46', '1012.3680', '31.77653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='-5633.440', `position_y`='-496.4770', `position_z`='396.8753', `orientation`='2.539195', `MovementType`='2' WHERE `id`=1692;
DELETE FROM `creature_movement` WHERE `id`=8352;
DELETE FROM `creature_movement_template` WHERE `entry`=1692;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(1692, 1, '-5636.061', '-495.8329', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(1692, 2, '-5641.399', '-498.8961', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(1692, 3, '-5640.832', '-501.3918', '396.7937', '20000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.936115', '0', '0'),
(1692, 4, '-5641.399', '-498.8961', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(1692, 5, '-5640.068', '-496.7379', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(1692, 6, '-5636.061', '-495.8329', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(1692, 7, '-5633.440', '-496.4770', '396.7780', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(1692, 8, '-5633.440', '-496.4770', '396.7780', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.199115', '0', '0');
UPDATE `creature` SET `position_x`='-4612.268', `position_y`='-909.0977', `position_z`='501.1455', `orientation`='4.328416', `MovementType`='2' WHERE `id`=11406;
DELETE FROM `creature_movement` WHERE `id`=9699;
DELETE FROM `creature_movement_template` WHERE `entry`=11406;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(11406, 1, '-4612.254', '-909.1521', '501.0622', '90000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.328416', '0', '0'),
(11406, 2, '-4603.221', '-905.3360', '502.7668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 3, '-4602.796', '-903.2332', '502.7668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 4, '-4607.162', '-897.2797', '502.7668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 5, '-4607.162', '-897.2797', '502.7668', '90000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.358161', '0', '0'),
(11406, 6, '-4601.626', '-904.6155', '502.7668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 7, '-4602.049', '-906.3550', '502.7668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 8, '-4608.619', '-913.5076', '501.0607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 9, '-4610.180', '-921.8517', '501.0684', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 10, '-4607.634', '-926.9007', '501.0711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11406, 11, '-4607.634', '-926.9007', '501.0711', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.338741', '0', '0'),
(11406, 12, '-4612.254', '-909.1521', '501.0622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `creature` SET `position_x`='-4681.394', `position_y`='-1266.606', `position_z`='503.4648', `orientation`='1.963985', `MovementType`='2' WHERE `id`=5637;
DELETE FROM `creature_movement` WHERE `id`=9665;
DELETE FROM `creature_movement_template` WHERE `entry`=5637;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(5637, 1, '-4686.149', '-1255.140', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 2, '-4675.921', '-1244.380', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 3, '-4667.503', '-1245.781', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 4, '-4661.595', '-1250.517', '503.3816', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 5, '-4661.595', '-1250.517', '503.3816', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.356194', '0', '0'),
(5637, 6, '-4670.109', '-1243.077', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 7, '-4681.147', '-1244.796', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 8, '-4686.531', '-1252.014', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 9, '-4685.416', '-1262.677', '501.9927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 10, '-4681.394', '-1266.606', '503.3816', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5637, 11, '-4681.394', '-1266.606', '503.3816', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.605703', '0', '0');
UPDATE `creature` SET `position_x`='-10632.98', `position_y`='1087.872', `position_z`='33.87227', `orientation`='4.635367', `MovementType`='2' WHERE `id`=874;
DELETE FROM `creature_movement` WHERE `id`=2172;
DELETE FROM `creature_movement_template` WHERE `entry`=874;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(874, 1, '-10634.18', '1072.219', '33.90115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 2, '-10640.83', '1056.614', '33.69242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 3, '-10655.06', '1038.739', '33.58622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 4, '-10663.54', '1029.080', '32.69010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 5, '-10699.92', '1033.696', '34.47182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 6, '-10719.79', '1032.385', '34.58892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 7, '-10732.51', '1027.076', '34.58892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 8, '-10746.82', '1018.542', '34.10905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 9, '-10768.83', '1017.259', '32.24479', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 10, '-10793.78', '1018.650', '32.28947', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 11, '-10833.29', '1009.724', '32.82467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 12, '-10864.48', '1006.455', '31.67381', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 13, '-10898.81', '999.4549', '35.70985', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 14, '-10919.73', '993.3299', '35.46926', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 15, '-10942.45', '967.6190', '32.45774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 16, '-10949.25', '940.7150', '31.55006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 17, '-10946.80', '934.3032', '31.55006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 18, '-10914.47', '901.5839', '32.28352', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 19, '-10916.35', '868.8564', '32.45573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 20, '-10926.30', '852.3051', '32.84294', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 21, '-10929.21', '832.7261', '32.29058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 22, '-10919.83', '800.1399', '30.84746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 23, '-10900.73', '777.5663', '30.75943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 24, '-10880.35', '749.3021', '31.09746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 25, '-10877.12', '732.9159', '31.10690', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 26, '-10871.73', '699.8195', '30.98836', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 27, '-10866.87', '665.3965', '31.03180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 28, '-10871.73', '699.8195', '30.98836', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 29, '-10877.12', '732.9159', '31.10690', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 30, '-10880.35', '749.3021', '31.09746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 31, '-10900.73', '777.5663', '30.75943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 32, '-10919.83', '800.1399', '30.84746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 33, '-10929.21', '832.7261', '32.29058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 34, '-10926.30', '852.3051', '32.84294', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 35, '-10916.35', '868.8564', '32.45573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 36, '-10914.47', '901.5839', '32.28352', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 37, '-10946.80', '934.3032', '31.55006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 38, '-10949.25', '940.7150', '31.55006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 39, '-10942.45', '967.6190', '32.45774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 40, '-10919.73', '993.3299', '35.46926', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 41, '-10898.81', '999.4549', '35.70985', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 42, '-10864.48', '1006.455', '31.67381', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 43, '-10833.29', '1009.724', '32.82467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 44, '-10794.01', '1018.667', '32.32072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 45, '-10768.83', '1017.259', '32.24479', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 46, '-10746.87', '1018.548', '34.16447', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 47, '-10732.51', '1027.076', '34.58892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 48, '-10719.79', '1032.385', '34.58892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 49, '-10699.92', '1033.696', '34.47182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 50, '-10663.54', '1029.080', '32.69010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 51, '-10655.06', '1038.739', '33.58622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 52, '-10640.83', '1056.614', '33.69242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 53, '-10634.18', '1072.219', '33.90115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(874, 54, '-10634.00', '1085.885', '33.74294', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE creature_template SET MovementType = 2 WHERE entry = 29602;
DELETE FROM creature_movement_template WHERE entry IN (29602);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime) VALUES
(29602,1, 7085.600, -1941.878, 773.144, 2960201, 1000),
(29602,2, 7073.979, -1964.498, 768.656, 0, 0),
(29602,3, 7082.235, -1993.693, 767.976, 0, 0),
(29602,4, 7089.624, -2024.012, 766.308, 0, 0),
(29602,5, 7102.195, -2072.441, 763.672, 0, 0),
(29602,6, 7116.834, -2127.098, 759.205, 0, 0),
(29602,7, 7140.550, -2161.849, 761.036, 0, 0),
(29602,8, 7170.924, -2192.156, 761.323, 0, 0),
(29602,9, 7219.515, -2226.946, 759.077, 0, 0),
(29602,10,7280.996, -2271.891, 756.243, 0, 0),
(29602,11,7335.085, -2294.143, 755.844, 0, 0),
(29602,12,7385.635, -2314.972, 757.249, 0, 0),
(29602,13,7401.934, -2346.189, 755.022, 0, 0),
(29602,14,7407.586, -2379.071, 753.156, 0, 0),
(29602,15,7385.282, -2407.132, 748.946, 0, 0),
(29602,16,7344.961, -2407.402, 750.123, 0, 0),
(29602,17,7317.786, -2377.497, 749.030, 0, 0),
(29602,18,7297.351, -2348.611, 749.586, 0, 0),
(29602,19,7271.876, -2316.258, 752.514, 0, 0),
(29602,20,7243.617, -2296.425, 753.760, 0, 0),
(29602,21,7202.361, -2270.390, 755.781, 0, 0),
(29602,22,7170.279, -2249.533, 758.963, 0, 0),
(29602,23,7136.257, -2227.768, 758.618, 0, 0),
(29602,24,7117.583, -2202.440, 758.786, 0, 0),
(29602,25,7096.870, -2167.813, 758.943, 0, 0),
(29602,26,7083.056, -2130.481, 758.719, 0, 0),
(29602,27,7078.193, -2078.994, 759.237, 0, 0),
(29602,28,7105.447, -2028.474, 768.562, 0, 0),
(29602,29,7105.573, -1999.694, 771.150, 2960228, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2960201, 2960228);
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, comments) VALUES
(2960201, 25, 1, 'set run on'),
(2960228, 14, 54908, 'remove aura Riding Icefang');
UPDATE quest_template SET StartScript = 3566 WHERE entry = 3566;
DELETE FROM dbscripts_on_quest_start WHERE id = 3566;
INSERT INTO dbscripts_on_quest_start (id,delay,command,datalong,datalong2,x,y,z,o,comments) VALUES 
(3566, 2, 10, 8421, 120000, -6462.33, -1240.68, 180.285, 3.40242, 'spawn Dorius');
UPDATE creature_template SET MovementType = 2 WHERE entry = 8421;
DELETE FROM creature_movement_template WHERE entry IN (8421);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(8421, 1, -6475.807, -1246.440, 180.248, 842101, 1000, 2.27);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (842101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(842101, 0, 32, 1, 0, 0, 'Dorius - pause waypoints');
DELETE FROM `creature` WHERE `guid` = 124631;
UPDATE creature_template_addon SET auras = NULL WHERE entry = 26867;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 21911);
DELETE FROM dbscripts_on_gossip WHERE id = 9512;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry,  search_radius, data_flags, dataint, dataint2, 
dataint3, dataint4, x, y, z, o, comments) VALUES 
(9512, 0, 15, 48595, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Summon Flamebringer'),
(9512, 1, 15, 48600, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ride Flamebringer'),
(9512, 1, 15, 48602, 0, 27292, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Flight');
UPDATE quest_template SET CompleteScript = 13631 WHERE entry = 13631;
UPDATE quest_template SET CompleteScript = 13631 WHERE entry = 13819;
UPDATE creature_template SET MovementType = 2 WHERE entry = 34044;
DELETE FROM dbscripts_on_quest_end WHERE id = 13631;
INSERT INTO dbscripts_on_quest_end (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(13631,0,29,3,2,0,0,0,0,0,0,0,0,'Rhonin - remove npc_flag questgiver'),
(13631,0,10,34044,0,0,0,0,0,5800.697, 820.809, 667.433, 4.51,'Summon Brann'),
(13631,0,0,0,0,0,0,0,2000000796,0,0,0,0,'Rhonin - say_event_start'),
(13631,6,1,397,0,0,0,0,0,0,0,0,0,'Rhonin - emote'),
(13631,8,20,2,0,0,0,0,0,0,0,0,0,'Rhonin - Start Waypoint Movement');
DELETE FROM db_script_string WHERE entry IN (2000000796,2000001357,2000001358,2000001359,2000001360,2000001361,2000001362,2000001363,2000001364);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment)  VALUES
(2000000796,'We received Brann\'s message, and we have begun preparations.',15649,0,0,0,'Rhonin - say_event_start'),
(2000001357,'Just in time. Let\'s see this thing off, then.',15826,0,0,0,'Brann - say_event_start'),
(2000001358,'Citizens of Dalaran! Raise your eyes to the skies and observe!',15650,1,0,0,'Rhonin - say_event_1'),
(2000001359,'Today our world\'s destruction has been averted in defiance of our very makers!',15651,1,0,0,'Rhonin - say_event_2'),
(2000001360,'Algalon the Observer, herald of the titans, has been defeated by our brave comrades in the depths of the titan city of Ulduar.',15652,1,0,0,'Rhonin - say_event_3'),
(2000001361,'Algalon was sent here to judge the fate of our world.',15653,1,0,0,'Rhonin - say_event_4'),
(2000001362,'He found a planet whose races had deviated from the titans\' blueprints. A planet where not everything had gone according to plan.',15654,1,0,0,'Rhonin - say_event_5'),
(2000001363,'Cold logic deemed our world not worth saving. Cold logic, however, does not account for the power of free will. It\'s up to each of us to prove this is a world worth saving.',15655,1,0,0,'Rhonin - say_event_6'),
(2000001364,'That our lives... our lives are worth living.',15656,1,0,0,'Rhonin - say_event_complete');
DELETE FROM creature_movement_template WHERE entry = 34044;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(34044,1,5799.828, 813.462, 662.002, 0, 0, 0),
(34044,2,5801.312, 802.384, 662.139, 3404402, 3000, 4.53),
(34044,3,5799.99,788.837,661.870,0,0,0),
(34044,4,5798.32,782.053,662.688,0,0,0),
(34044,5,5797.37,775.143,661.443,0,0,0),
(34044,6,5797.69,767.686,661.352,0,0,0),
(34044,7,5797.87,761.844,657.783,0,0,0),
(34044,8,5795.08,755.320,653.669,0,0,0),
(34044,9,5794.29,750.693,649.646,0,0,0),
(34044,10,5793.27,743.471,644.464,0,0,0),
(34044,11,5793.18,735.819,640.106,0,0,0),
(34044,12,5792.33,729.770,640.427,0,0,0),
(34044,13,5789.32,724.790,640.867,0,0,0),
(34044,14,5785.68,716.319,640.881,0,0,0),
(34044,15,5781.25,711.070,641.060,0,0,0),
(34044,16,5771.18,696.952,641.771,0,0,0),
(34044,17,5764.34,686.929,642.161,0,0,0),
(34044,18,5757.24,677.249,642.299,0,0,0),
(34044,19,5752.94,671.092,642.984,0,0,0),
(34044,20,5748.39,664.582,643.974,0,0,0),
(34044,21,5743.78,661.557,644.468,0,0,0),
(34044,22,5737.45,656.901,645.484,0,0,0),
(34044,23,5732.63,654.095,645.953,0,0,0),
(34044,24,5721.18,649.808,646.282,3404424,1000,3.51);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3404424,3404402);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,buddy_entry,search_radius,dataint,comments) VALUES 
(3404402,0,0,0,0,0,2000001357,'Brann - say_event_start'),
(3404424,0,32,1,0,0,0,'Brann - pause wp'),
(3404424,60,18,0,0,0,0,'Brann - despawn');
DELETE FROM creature_movement_template WHERE entry = 16128;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(16128,1,5796.99,788.837,661.870,0,0,0),
(16128,2,5796.32,783.053,662.688,0,0,0),
(16128,3,5795.43,775.837,661.810,0,0,0),
(16128,4,5795.37,775.143,661.443,0,0,0),
(16128,5,5794.69,767.686,661.352,0,0,0),
(16128,6,5793.87,761.844,657.783,0,0,0),
(16128,7,5793.08,756.320,653.669,0,0,0),
(16128,8,5792.29,750.693,649.646,0,0,0),
(16128,9,5791.27,743.471,644.464,0,0,0),
(16128,10,5790.18,735.819,640.106,0,0,0),
(16128,11,5789.33,729.770,640.427,0,0,0),
(16128,12,5787.32,724.790,640.867,0,0,0),
(16128,13,5783.68,718.319,640.881,0,0,0),
(16128,14,5779.25,713.070,641.060,0,0,0),
(16128,15,5768.18,699.952,641.771,0,0,0),
(16128,16,5761.34,689.929,642.161,0,0,0),
(16128,17,5755.24,680.249,642.299,0,0,0),
(16128,18,5750.94,674.092,642.984,0,0,0),
(16128,19,5746.39,667.582,643.974,0,0,0),
(16128,20,5741.78,663.557,644.468,0,0,0),
(16128,21,5736.45,658.901,645.484,0,0,0),
(16128,22,5731.63,657.095,645.953,0,0,0),
(16128,23,5720.18,652.808,646.282,1612823,1000,3.85976);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1612823;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES 
(1612823,0,32,1,0,0,0,0,0,'Rhonin - pause wp'),
(1612823,0,0,0,0,0,0,0,2000001358,'Rhonin - say_event_1'),
(1612823,6,0,0,0,0,0,0,2000001359,'Rhonin - say_event_2'),
(1612823,12,0,0,0,0,0,0,2000001360,'Rhonin - say_event_3'),
(1612823,21,0,0,0,0,0,0,2000001361,'Rhonin - say_event_4'),
(1612823,25,0,0,0,0,0,0,2000001362,'Rhonin - say_event_5'),
(1612823,34,0,0,0,0,0,0,2000001363,'Rhonin - say_event_6'),
(1612823,49,0,0,0,0,0,0,2000001364,'Rhonin - say_event_complete'),
(1612823,60,29,3,1,0,0,0,0,'Rhonin - add npc_flag questgiver'),
(1612823,60,18,0,0,0,0,0,0,'Rhonin - despawn');
UPDATE `quest_template` SET `StartScript` =2702 WHERE `entry` =2702;
DELETE FROM `creature` WHERE `guid` =52773;
UPDATE `quest_template` SET `StartScript` =2360 WHERE `entry` =2360;
UPDATE `quest_template` SET `NextQuestId` =0 WHERE `entry` in (2608,2607,2359,2360,394,395,2745,350,393,389,391,392,434,373,10586,10589,10766,10606,10612,9538,9539,9540,9541,9542);
UPDATE `quest_template` SET `RequiredRaces` =1101 WHERE `entry` in (9538,9539,9540,9541,9542);
UPDATE `quest_template` SET `StartScript` =10612 WHERE `entry` =10612;
UPDATE `db_script_string` SET `emote` =25 WHERE `entry` =2000001080;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` =10612 AND `delay` =3;
DELETE FROM `creature_template_spells` WHERE `entry` =17393;
UPDATE `quest_template` SET `StartScript` =9542 WHERE `entry` =9542;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1266;
UPDATE `quest_template` SET `CompleteScript` =10447 WHERE `entry` =10447;
UPDATE gameobject SET rotation0 = -0.1300697, rotation1 = 0.05677509, rotation2 = 0.9898081, rotation3 = 0.01176444 WHERE guid = 42492;
UPDATE creature_movement_template SET position_x = -2324.3, position_y = -357.078, position_z = -8.96122, orientation = 4.05182 WHERE entry = 23616 AND point = 11;
UPDATE creature_movement_template SET position_x = -2334.89, position_y = -373.074, position_z = -8.33575, orientation = 4.17356 WHERE entry = 23616 AND point = 12;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(71469, 22388, 530, 1, 1, 0, 0, -3691.5, 5783.13, 0.41298, 5.54544, 300, 5, 0, 5527, 0, 1),
(71473, 22388, 530, 1, 1, 0, 0, -3690.94, 5752.49, -4.6313, 1.20496, 300, 5, 0, 5527, 0, 1),
(71477, 22388, 530, 1, 1, 0, 0, -3720.46, 5752.23, 1.53084, 2.19457, 300, 5, 0, 5527, 0, 1),
(71479, 22388, 530, 1, 1, 0, 0, -3658.33, 5691.67, -1.60188, 2.32329, 300, 5, 0, 5527, 0, 1),
(71484, 22388, 530, 1, 1, 0, 0, -3584.51, 5714.7, -1.55171, 1.54008, 300, 5, 0, 5527, 0, 1),
(60245, 22388, 530, 1, 1, 0, 0, -3620.38, 5812.34, -3.03699, 4.92894, 300, 5, 0, 5527, 0, 1),
(60246, 22388, 530, 1, 1, 0, 0, -3557.05, 5781.99, -3.27889, 5.29065, 300, 5, 0, 5527, 0, 1),
(58954, 22388, 530, 1, 1, 0, 0, -3516.13, 5718.4, 1.29528, 0.418997, 300, 5, 0, 5527, 0, 1),
(57998, 22388, 530, 1, 1, 0, 0, -3516.97, 5745.77, 0.03913, 5.3658, 300, 5, 0, 5527, 0, 1),
(57948, 22388, 530, 1, 1, 0, 0, -3673.55, 5844.84, -0.737886, 4.87915, 300, 5, 0, 5527, 0, 1);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2285901','22859','1','0','100','0','0','0','0','0','21','0','0','0','22','0','0','0','0','0','0','0','Shadowhoof Summoner - Prevent Combat Movement and Set Phase to 0 on Spawn'),
('2285902','22859','4','0','100','0','0','0','0','0','11','9613','1','0','22','1','0','0','0','0','0','0','Shadowhoof Summoner - Cast Shadow Bolt and Set Phase 1 on Aggro'),
('2285903','22859','9','5','100','1','0','40','3400','4800','11','9613','1','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Cast Shadow Bolt (Phase 1)'),
('2285904','22859','9','5','100','1','0','40','26000','35000','11','13338','1','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Curse of Tongues (Phase 1)'),
('2285905','22859','3','5','100','0','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Shadowhoof Summoner - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)'),
('2285906','22859','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Start Combat Movement at 35 Yards (Phase 1)'),
('2285907','22859','9','5','100','0','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Prevent Combat Movement at 15 Yards (Phase 1)'),
('2285908','22859','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Start Combat Movement Below 5 Yards (Phase 1)'),
('2285909','22859','3','3','100','1','100','25','100','100','22','1','0','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Set Phase 1 when Mana is above 25% (Phase 2)'),
('2285910','22859','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Set Phase to 0 on Evade'),
('2285911','22859','1','0','100','1','1000','1000','0','0','11','39550','0','0','0','0','0','0','0','0','0','0','Shadowhoof Summoner - Cast Arcane Channeling while OOC');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry = 22859;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` in (28341);
UPDATE `gossip_menu` SET `script_id` = '6799' WHERE `entry` =6799 AND `text_id` =8121;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6799 AND `id` = 0;
UPDATE `gameobject` SET `spawntimesecs` = '-300' WHERE `guid` =26315;
DELETE FROM `dbscripts_on_creature_death` WHERE `id` = 10503;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10503', '1', '9', '0', '300', '180794', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Jandice Barov - Summon Journal of Jandice Barov on Death');
UPDATE `dbscripts_on_gossip` SET `data_flags` = 2 WHERE `id` =6799 AND `command` =15;
UPDATE creature SET position_x = -5002.887, position_y = -1160.7340, position_z = 501.7427, orientation = 3.433445 WHERE id = 5124;
DELETE FROM creature_movement WHERE id = 9310;
DELETE FROM creature_movement_template WHERE entry = 5124;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5124, 1, -5014.963, -1164.3620, 501.6634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 2, -5017.406, -1177.7400, 501.6543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 3, -5006.694, -1195.8610, 501.6673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 4, -4991.032, -1215.0220, 501.6773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 5, -4976.490, -1233.4380, 501.6785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 6, -4963.135, -1249.5380, 501.6708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 7, -4950.890, -1261.2130, 501.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 8, -4932.905, -1258.3310, 501.6477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 9, -4925.248, -1245.3570, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 10, -4926.883, -1234.4750, 501.6547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 11, -4941.878, -1220.3930, 501.6520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 12, -4947.642, -1205.3560, 501.6685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 13, -4957.721, -1193.1830, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 14, -4974.970, -1183.9740, 501.6564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 15, -4983.421, -1169.0440, 501.6555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5124, 16, -5002.725, -1160.7740, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE creature SET position_x = -4895.609, position_y = -898.0984, position_z = 501.7426, orientation = 2.286381 WHERE id = 6175;
DELETE FROM creature_movement WHERE id = 52195;
DELETE FROM creature_movement_template WHERE entry = 6175;
DELETE FROM dbscripts_on_creature_movement WHERE id = 617501;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001365 AND 2000001368;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(6175, 1, -4895.609, -898.0984, 501.6593, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.286381, 0, 0),
(6175, 2, -4859.858, -887.9218, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 3, -4842.476, -885.5647, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 4, -4842.476, -885.5647, 501.6594, 0000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 1.884956, 0, 0),
(6175, 5, -4875.518, -889.0638, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 6, -4895.693, -897.8222, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 7, -4895.693, -897.8222, 501.6593, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.251475, 0, 0),
(6175, 8, -4927.132, -915.4280, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 9, -4951.839, -934.9794, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 10, -4981.382, -966.5792, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 11, -4983.741, -969.7697, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 12, -4983.741, -969.7697, 501.6595, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.443461, 0, 0),
(6175, 13, -5002.574, -1008.675, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 14, -5007.885, -1022.321, 501.6549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 15, -5012.979, -1052.933, 501.7099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 16, -5012.979, -1052.933, 501.7099, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.967060, 0, 0),
(6175, 17, -5006.932, -1021.700, 501.6555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 18, -4992.735, -985.8944, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 19, -4981.066, -962.5291, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 20, -4944.819, -930.4164, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 21, -4906.594, -901.6618, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6175, 22, -4895.609, -898.0984, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(617501, 0, 0, 0, 0, 0, 0, 0, 2000001365, 2000001366, 2000001367, 2000001368, 0, 0, 0, 0, 'John Turner - Say 1, 2, 3 or 4');
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001365,'Give to the charities who seek to help the victims of these hard times! Please.', 0, 0, 0, 0, 'John Turner - Say 1'),
(2000001366,'Don\'t forget the orphans of Stormwind!', 0, 0, 0, 0, 'John Turner - Say 2'),
(2000001367,'Give of your hearts and your purses! Give to the children of Stormwind who have lost their parents.', 0, 0, 0, 0, 'John Turner - Say 3'),
(2000001368,'Help the children of Stormwind... victims of the war and plague!', 0, 0, 0, 0, 'John Turner - Say 4');
UPDATE creature SET position_x = -4715.607, position_y = -925.8232, position_z = 501.7426, orientation = 1.179421 WHERE id = 7978;
DELETE FROM creature_movement WHERE id = 9691;
DELETE FROM creature_movement_template WHERE entry = 7978;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(7978, 1, -4707.845, -907.0120, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 2, -4688.098, -902.9882, 501.6476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 3, -4671.588, -914.5618, 501.6541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 4, -4655.948, -931.1495, 501.6580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 5, -4636.642, -954.9941, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 6, -4621.530, -981.5043, 501.6564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 7, -4617.623, -1000.404, 501.6645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 8, -4626.838, -1012.120, 501.6519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 9, -4641.676, -1014.932, 501.6477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 10, -4657.655, -997.7007, 501.6358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 11, -4667.463, -983.3502, 501.6441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 12, -4681.746, -969.3637, 501.6945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 13, -4689.473, -949.4840, 501.6629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 14, -4699.370, -937.9786, 501.6703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7978, 15, -4711.072, -923.4749, 501.6572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE creature SET position_x = -4652.276, position_y = -1278.877, position_z = 503.4648, orientation = 0.7819276 WHERE id = 8256;
DELETE FROM creature_movement WHERE id = 9663;
DELETE FROM creature_movement_template WHERE entry = 8256;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 825601 AND 825603;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001369 AND 2000001371;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(8256, 1, -4646.738, -1273.377, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 2, -4643.056, -1269.847, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 3, -4638.852, -1265.486, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 4, -4633.741, -1261.104, 503.3824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 5, -4629.312, -1256.385, 503.3824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 6, -4623.375, -1256.475, 503.3830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 7, -4622.471, -1258.746, 503.3833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 8, -4622.471, -1258.746, 503.3833, 4500, 825601, 0, 0, 0, 0, 0, 0, 0, 0, 4.066617, 0, 0),
(8256, 9, -4615.686, -1255.442, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 10, -4608.177, -1249.271, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 11, -4603.862, -1251.563, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 12, -4603.862, -1251.563, 503.3816, 4500, 825602, 0, 0, 0, 0, 0, 0, 0, 0, 0.3316126, 0, 0),
(8256, 13, -4598.436, -1240.892, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 14, -4592.448, -1232.214, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 15, -4588.735, -1222.179, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 16, -4588.735, -1222.179, 503.3816, 4500, 825603, 0, 0, 0, 0, 0, 0, 0, 0, 5.742133, 0, 0),
(8256, 17, -4593.644, -1214.160, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 18, -4598.711, -1219.354, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 19, -4604.790, -1227.240, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 20, -4610.729, -1236.657, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 21, -4613.158, -1252.017, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 22, -4618.215, -1264.094, 503.3841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 23, -4633.393, -1276.797, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 24, -4652.419, -1285.877, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 25, -4667.360, -1293.999, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 26, -4678.205, -1296.404, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 27, -4689.225, -1301.691, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 28, -4699.487, -1307.610, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 29, -4709.615, -1317.365, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 30, -4711.283, -1322.386, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 31, -4711.283, -1322.386, 503.3816, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.577925, 0, 0),
(8256, 32, -4702.810, -1325.272, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 33, -4696.292, -1325.815, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 34, -4689.635, -1325.204, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 35, -4686.068, -1319.191, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 36, -4683.053, -1314.015, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 37, -4675.000, -1312.604, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 38, -4664.885, -1306.134, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 39, -4662.038, -1298.117, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 40, -4659.426, -1288.833, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8256, 41, -4654.313, -1281.536, 503.3816, 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.959392, 0, 0);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(825601, 2, 0, 0, 0, 0, 0, 0, 2000001369, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - Say 1'),
(825602, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - Emote 1'),
(825602, 2, 0, 0, 0, 0, 0, 0, 2000001370, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - Say 2'),
(825602, 4.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - Emote 1 (Stop)'),
(825603, 2, 0, 0, 0, 0, 0, 0, 2000001371, 0, 0, 0, 0, 0, 0, 0, 'Curator Thorius - Say 3');
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001369,'%s dusts the base of the artifact.', 0, 2, 0, 16, 'Curator Thorius - Say 1'),
(2000001370,'%s meticulously examines the large vase.', 0, 2, 0, 0, 'Curator Thorius - Say 2'),
(2000001371,'Poor Dorius. If I ever get my hands on those Dark Irons, so help me...', 2929, 0, 0, 36, 'Curator Thorius - Say 3');
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` in (147,148,149,150,151,152,153,155,156);
DELETE FROM `db_script_string` WHERE `entry` in (2000000141,2000000194,2000000222);
DELETE FROM `creature_template_spells` WHERE `entry` = 5435;
DELETE FROM `creature_addon` WHERE `guid` = 4811;
UPDATE `gameobject_questrelation` SET `id` = 176191 WHERE `quest` = 4732;
UPDATE `gameobject_questrelation` SET `id` = 176196 WHERE `quest` = 4727;
UPDATE `gameobject_questrelation` SET `id` = 176197 WHERE `quest` = 4725;
UPDATE `gameobject_questrelation` SET `id` = 176198 WHERE `quest` = 4731;
UPDATE `gameobject_questrelation` SET `id` = 175227 WHERE `quest` = 4730;
UPDATE `gameobject_questrelation` SET `id` = 175230 WHERE `quest` = 4733;
UPDATE `gameobject_questrelation` SET `id` = 175233 WHERE `quest` = 4723;
DELETE FROM `gameobject` WHERE `guid` = 15391;
DELETE FROM `gameobject` WHERE `guid` = 26357;
DELETE FROM `gameobject` WHERE `guid` = 26358;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(9097, 175226, 1, 1, 1, 5238.3, 583.046, 0.267388, -0.881391, 0, 0, -0.426569, 0.904455, 900, 100, 1),
(10303, 175207, 1, 1, 1, 6109.95, 559.668, 0.646731, 1.19555, 0, 0, 0.562805, 0.82659, 180, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(66335, 176191, 1, 1, 1, 4595.65, 896.41, 2.34531, -1.51844, 0, 0, -0.688356, 0.725373, 900, 100, 1),
(2667, 176190, 1, 1, 1, 5618.26, 512.222, 3.03785, -2.522, -0.0139608, -0.0136299, -0.952168, 0.304953, 900, 100, 1),
(66337, 176197, 1, 1, 1, 7433.73, 47.2668, 2.47926, 3.14159, 0, 0, 1, 0.00000126759, 900, 100, 1),
(66336, 176196, 1, 1, 1, 7543.85, -537.257, 0.616865, 1.89368, 0, 0, 0.811573, 0.584251, 900, 100, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(56828, 5435, 1, 0, 0, -1115.53, -4306.33, -7.68768, 3.67432, 300, 0, 0, 741, 0, 0, 2),
(56827, 5435, 1, 0, 0, -1753.7, -5591.55, -33.6493, 3.02857, 300, 0, 0, 741, 0, 0, 2),
(56826, 5435, 1, 0, 0, -1385.02, -5779.74, -18.0079, 3.34814, 300, 0, 0, 741, 0, 0, 2),
(56825, 5435, 1, 0, 0, -576.123, -5817.38, -32.5473, 3.15728, 300, 0, 0, 741, 0, 0, 2),
(56824, 5435, 1, 0, 0, -326.584, -5558.28, -32.5737, 3.88357, 300, 0, 0, 741, 0, 0, 2),
(56823, 5435, 1, 0, 0, 493.326, -5371.27, -49.8881, 0, 300, 0, 0, 741, 0, 0, 2),
(56822, 5435, 1, 0, 0, 912.371, -5415.92, -55.1195, 0, 300, 0, 0, 741, 0, 0, 2),
(56821, 5435, 1, 0, 0, 1284, -5408.57, -50.3039, 3.49243, 300, 0, 0, 741, 0, 0, 2),
(56820, 5435, 1, 0, 0, 1550.59, -5378.97, -32.535, 3.28073, 300, 0, 0, 741, 0, 0, 2),
(56819, 5435, 0, 0, 0, 3221.29, 530.995, -49.0322, 6.16568, 300, 0, 0, 741, 0, 0, 2),
(56818, 5435, 0, 0, 0, 3234.78, 1040.16, -49.0336, 2.08338, 300, 0, 0, 741, 0, 0, 2),
(33325, 5435, 0, 0, 0, 3221.9, 1710.47, -49.2366, 0.715585, 300, 0, 0, 741, 0, 0, 2);
DELETE FROM creature_movement WHERE id in (56828,56827,56826,56825,56824,56823,56822,56821,56820,56819,56818,33325);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(33325, 1, 3195.66, 1723.26, -48.0417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 2, 3172.18, 1728.67, -46.7351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 3, 3159.84, 1742.1, -47.1164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 4, 3150.54, 1759.82, -48.9894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 5, 3145.21, 1780, -48.5501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 6, 3150.68, 1795.5, -43.965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 7, 3159.02, 1808.92, -46.8611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 8, 3147.04, 1829.82, -48.9126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 9, 3124.38, 1836.32, -49.3035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 10, 3110.18, 1853.61, -49.3035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 11, 3098.96, 1879.04, -49.1987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 12, 3099.79, 1899.64, -45.145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 13, 3093.3, 1918.57, -48.7809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 14, 3074.24, 1939.81, -49.2098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 15, 3047.84, 1955.77, -49.3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 16, 3028.47, 1970.39, -49.2451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 17, 3019.16, 1982.83, -48.9951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 18, 2988.32, 1998.35, -49.1403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 19, 2980.85, 2004.86, -48.0391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 20, 2954.49, 2018.02, -47.8042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 21, 2925.33, 2045.1, -49.2827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 22, 2893.02, 2053.51, -49.1987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 23, 2865.85, 2054.29, -48.9753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 24, 2843.77, 2055.25, -49.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 25, 2822.48, 2054.12, -48.8547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 26, 2788.7, 2062.92, -48.8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 27, 2765.5, 2066.17, -48.0693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 28, 2788.7, 2062.92, -48.8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 29, 2822.48, 2054.12, -48.8547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 30, 2843.77, 2055.25, -49.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 31, 2865.85, 2054.29, -48.9753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 32, 2893.02, 2053.51, -49.1987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 33, 2925.33, 2045.1, -49.2827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 34, 2954.49, 2018.02, -47.8042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 35, 2980.85, 2004.86, -48.0391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 36, 2988.32, 1998.35, -49.1403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 37, 3019.16, 1982.83, -48.9951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 38, 3028.47, 1970.39, -49.2451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 39, 3047.84, 1955.77, -49.3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 40, 3074.24, 1939.81, -49.2098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 41, 3093.3, 1918.57, -48.7809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 42, 3099.79, 1899.64, -45.145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 43, 3098.96, 1879.04, -49.1987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 44, 3110.18, 1853.61, -49.3035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 45, 3124.38, 1836.32, -49.3035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 46, 3147.04, 1829.82, -48.9126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 47, 3159.02, 1808.92, -46.8611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 48, 3150.68, 1795.5, -43.965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 49, 3145.21, 1780, -48.5501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 50, 3150.5, 1759.88, -48.9967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 51, 3159.84, 1742.1, -47.1164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 52, 3172.18, 1728.67, -46.7351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 53, 3195.66, 1723.26, -48.0417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33325, 54, 3222.93, 1722.39, -49.2639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 1, 3219.86, 1066.66, -48.8948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 2, 3207.93, 1090.38, -47.2766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 3, 3194.55, 1111.68, -46.8454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 4, 3181.08, 1131.85, -44.6933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 5, 3178.32, 1156.42, -45.4785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 6, 3176.88, 1185.59, -45.4368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 7, 3180.24, 1206.31, -43.9424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 8, 3190.4, 1227.34, -48.0622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 9, 3193.39, 1253.55, -49.5105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 10, 3191.81, 1284.17, -48.9205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 11, 3213.59, 1302.7, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 12, 3226.42, 1327.89, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 13, 3227.66, 1352.52, -49.283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 14, 3220.75, 1378.08, -49.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 15, 3223.33, 1416.28, -49.1856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 16, 3237.03, 1444.51, -49.2355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 17, 3225.31, 1473.26, -49.2002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 18, 3215.7, 1516.21, -49.288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 19, 3199.54, 1542.93, -49.2687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 20, 3186.1, 1575.29, -49.2389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 21, 3189.74, 1608.76, -49.3011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 22, 3207.19, 1630.43, -49.3062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 23, 3223.05, 1654.72, -49.3094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 24, 3245.56, 1679.74, -49.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 25, 3242.98, 1723.86, -49.3418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 26, 3245.56, 1679.74, -49.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 27, 3223.05, 1654.72, -49.3094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 28, 3207.19, 1630.43, -49.3062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 29, 3189.74, 1608.76, -49.3011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 30, 3186.1, 1575.29, -49.2389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 31, 3199.54, 1542.93, -49.2687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 32, 3215.7, 1516.21, -49.288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 33, 3225.31, 1473.26, -49.2002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 34, 3237.03, 1444.51, -49.2355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 35, 3223.33, 1416.28, -49.1856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 36, 3220.75, 1378.08, -49.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 37, 3227.66, 1352.52, -49.283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 38, 3226.42, 1327.89, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 39, 3213.59, 1302.7, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 40, 3191.81, 1284.17, -48.9205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 41, 3193.39, 1253.55, -49.5105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 42, 3190.4, 1227.34, -48.0622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 43, 3180.24, 1206.31, -43.9424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 44, 3176.88, 1185.59, -45.4368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 45, 3178.32, 1156.42, -45.4785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 46, 3181.08, 1131.85, -44.6933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 47, 3194.55, 1111.68, -46.8454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 48, 3207.86, 1090.51, -47.1577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 49, 3219.86, 1066.66, -48.8948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56818, 50, 3229.62, 1042.29, -48.938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 1, 3237.64, 529.066, -49.161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 2, 3245.98, 509.615, -49.2072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 3, 3244.24, 480.189, -48.5247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 4, 3236.81, 451.482, -47.3299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 5, 3229.51, 421.778, -46.6712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 6, 3232.34, 398.549, -48.8765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 7, 3232.09, 378.384, -47.2272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 8, 3236.05, 354.162, -47.1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 9, 3225.4, 330.035, -46.4199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 10, 3209.58, 308.727, -45.1829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 11, 3194.01, 282.987, -44.1269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 12, 3184.9, 250.452, -42.8944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 13, 3180.68, 215.665, -43.4813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 14, 3190.05, 191.407, -47.2638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 15, 3202.46, 172.926, -49.1386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 16, 3198.71, 154.542, -47.6138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 17, 3191.65, 129.38, -46.3875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 18, 3199.24, 111.015, -47.9738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 19, 3215.44, 80.8268, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 20, 3225.97, 70.9052, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 21, 3215.46, 39.4659, -49.283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 22, 3218.06, 14.8127, -47.4764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 23, 3232.95, 2.20247, -47.6778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 24, 3241.45, -16.7218, -48.2038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 25, 3240.34, -45.9271, -45.0433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 26, 3236.31, -72.9149, -46.0238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 27, 3225.42, -94.1089, -46.0986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 28, 3215.18, -125.027, -47.4287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 29, 3198.15, -144.379, -48.9029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 30, 3195.2, -160.021, -48.6686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 31, 3190.23, -188.384, -46.621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 32, 3194.87, -215.717, -49.6974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 33, 3213.64, -245.577, -49.1524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 34, 3233.05, -275.715, -49.2094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 35, 3234.99, -304.343, -49.2168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 36, 3220.77, -329.858, -49.3934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 37, 3197.92, -345.281, -48.1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 38, 3181.14, -362.376, -44.0617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 39, 3170.62, -379.924, -32.2668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 40, 3167.32, -395.326, -21.2015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 41, 3162.11, -435.289, -17.73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 42, 3167.32, -395.326, -21.2015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 43, 3170.62, -379.924, -32.2668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 44, 3181.14, -362.376, -44.0617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 45, 3197.92, -345.281, -48.1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 46, 3220.77, -329.858, -49.3934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 47, 3234.99, -304.343, -49.2168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 48, 3233.05, -275.715, -49.2094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 49, 3213.64, -245.577, -49.1524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 50, 3194.87, -215.717, -49.6974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 51, 3190.23, -188.384, -46.621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 52, 3195.2, -160.021, -48.6686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 53, 3198.15, -144.379, -48.9029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 54, 3215.18, -125.027, -47.4287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 55, 3225.42, -94.1089, -46.0986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 56, 3236.31, -72.9149, -46.0238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 57, 3240.34, -45.9271, -45.0433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 58, 3241.45, -16.7218, -48.2038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 59, 3232.95, 2.20247, -47.6778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 60, 3218.06, 14.8127, -47.4764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 61, 3215.46, 39.4659, -49.283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 62, 3225.97, 70.9052, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 63, 3215.44, 80.8268, -49.3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 64, 3199.24, 111.015, -47.9738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 65, 3191.65, 129.38, -46.3875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 66, 3198.71, 154.542, -47.6138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 67, 3202.46, 172.926, -49.1386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 68, 3190.05, 191.407, -47.2638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 69, 3180.68, 215.665, -43.4813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 70, 3184.9, 250.452, -42.8944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 71, 3194.01, 282.987, -44.1269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 72, 3209.58, 308.727, -45.1829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 73, 3225.4, 330.035, -46.4199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 74, 3236.05, 354.162, -47.1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 75, 3232.09, 378.384, -47.2272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 76, 3232.34, 398.549, -48.8765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 77, 3229.51, 421.778, -46.6712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 78, 3236.81, 451.482, -47.3299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 79, 3244.24, 480.189, -48.5247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 80, 3245.98, 509.615, -49.2072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 81, 3237.64, 529.066, -49.161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56819, 82, 3222.14, 543.139, -49.3217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 1, 1516.82, -5383.69, -28.8906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 2, 1474.84, -5385.46, -29.2864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 3, 1447.96, -5383.48, -25.5438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 4, 1412.76, -5384.64, -29.4294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 5, 1382.15, -5391.2, -28.4388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 6, 1354.78, -5391.48, -28.6763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 7, 1334.22, -5378.4, -28.8418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 8, 1335.49, -5355.21, -28.7994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 9, 1344.53, -5325.68, -28.0713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 10, 1328.27, -5309.04, -31.7749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 11, 1304.01, -5312.75, -31.2355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 12, 1284.62, -5347.43, -37.3962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 13, 1286.44, -5381.06, -48.0423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 14, 1284.71, -5401.73, -48.8887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 15, 1287.05, -5438.85, -54.8639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 16, 1305.02, -5456.57, -56.5516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 17, 1317.34, -5496.39, -55.8837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 18, 1305.02, -5456.57, -56.5516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 19, 1287.05, -5438.85, -54.8639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 20, 1284.74, -5401.92, -48.8684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 21, 1286.44, -5381.06, -48.0423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 22, 1284.62, -5347.43, -37.3962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 23, 1304.01, -5312.75, -31.2355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 24, 1328.27, -5309.04, -31.7749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 25, 1344.53, -5325.68, -28.0713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 26, 1335.49, -5355.21, -28.7994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 27, 1334.22, -5378.4, -28.8418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 28, 1354.78, -5391.48, -28.6763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 29, 1382.15, -5391.2, -28.4388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 30, 1412.76, -5384.64, -29.4294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 31, 1447.96, -5383.48, -25.5438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 32, 1474.84, -5385.46, -29.2864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 33, 1516.82, -5383.69, -28.8906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56820, 34, 1546.04, -5379.32, -32.5986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 1, 1254.18, -5419.49, -52.4718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 2, 1229.28, -5435.86, -56.9902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 3, 1208.77, -5447.44, -59.6652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 4, 1187.96, -5453.08, -61.9978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 5, 1153.77, -5448.21, -64.5154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 6, 1124.3, -5439.63, -63.204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 7, 1100.61, -5425.71, -61.8492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 8, 1080.52, -5423.09, -60.7825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 9, 1055.61, -5418.48, -58.5112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 10, 1026.96, -5411.6, -55.9621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 11, 1002.2, -5421.31, -52.5091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 12, 978.418, -5425.1, -52.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 13, 959.892, -5425.46, -49.9403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 14, 939.542, -5439.23, -53.9722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 15, 924.992, -5446.01, -55.8501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 16, 902.285, -5443.91, -58.5748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 17, 880.687, -5439.05, -59.7106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 18, 850.202, -5453.35, -60.1957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 19, 880.687, -5439.05, -59.7106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 20, 902.285, -5443.91, -58.5748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 21, 924.992, -5446.01, -55.8501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 22, 939.542, -5439.23, -53.9722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 23, 959.892, -5425.46, -49.9403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 24, 978.418, -5425.1, -52.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 25, 1002.2, -5421.31, -52.5091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 26, 1026.96, -5411.6, -55.9621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 27, 1055.61, -5418.48, -58.5112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 28, 1080.52, -5423.09, -60.7825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 29, 1100.61, -5425.71, -61.8492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 30, 1124.3, -5439.63, -63.204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 31, 1153.77, -5448.21, -64.5154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 32, 1187.96, -5453.08, -61.9978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 33, 1208.77, -5447.44, -59.6652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 34, 1229.28, -5435.86, -56.9902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 35, 1254.18, -5419.49, -52.4718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56821, 36, 1284.58, -5416.16, -50.2873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 1, 884.764, -5424.27, -58.0952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 2, 860.038, -5429.36, -58.3245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 3, 840.054, -5447.57, -59.1454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 4, 808.626, -5450.2, -55.6828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 5, 785.226, -5449.35, -55.0896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 6, 752.365, -5448.88, -57.3383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 7, 710.335, -5452.75, -57.6953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 8, 683.327, -5449.81, -59.3469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 9, 655.47, -5444.36, -59.5234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 10, 651.573, -5424.52, -58.0701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 11, 618.405, -5414.9, -62.8057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 12, 588.85, -5403.26, -64.4017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 13, 542.927, -5406.28, -62.6428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 14, 511.854, -5405.75, -58.5615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 15, 482.236, -5413.69, -57.8578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 16, 445.743, -5419.08, -58.4638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 17, 482.236, -5413.69, -57.8578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 18, 511.854, -5405.75, -58.5615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 19, 542.927, -5406.28, -62.6428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 20, 588.85, -5403.26, -64.4017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 21, 618.405, -5414.9, -62.8057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 22, 651.573, -5424.52, -58.0701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 23, 655.47, -5444.36, -59.5234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 24, 683.327, -5449.81, -59.3469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 25, 710.335, -5452.75, -57.6953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 26, 752.365, -5448.88, -57.3383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 27, 785.226, -5449.35, -55.0896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 28, 808.626, -5450.2, -55.6828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 29, 840.054, -5447.57, -59.1454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 30, 860.038, -5429.36, -58.3245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 31, 884.764, -5424.27, -58.0952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56822, 32, 910.851, -5418.02, -54.3127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 1, 478.163, -5354.21, -43.7743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 2, 449.288, -5339.32, -39.4666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 3, 417.396, -5331.68, -27.1596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 4, 401.883, -5346.24, -24.6042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 5, 384.33, -5356.52, -22.0758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 6, 365.925, -5363.74, -21.1654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 7, 359.145, -5389.11, -23.3096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 8, 351.778, -5414.2, -22.672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 9, 336.771, -5442.29, -26.5356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 10, 336.753, -5463.58, -28.1553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 11, 326.522, -5489.89, -32.6077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 12, 297.979, -5504.62, -32.2698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 13, 266.13, -5515.1, -32.1059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 14, 239.612, -5514.21, -31.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 15, 209.377, -5516.51, -31.5502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 16, 181.916, -5520, -31.0444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 17, 152.516, -5519.96, -29.2918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 18, 112.342, -5522.8, -32.6255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 19, 71.7514, -5513.65, -32.5661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 20, 42.7414, -5516.01, -32.6023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 21, 71.7514, -5513.65, -32.5661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 22, 112.342, -5522.8, -32.6255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 23, 152.516, -5519.96, -29.2918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 24, 181.916, -5520, -31.0444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 25, 209.377, -5516.51, -31.5502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 26, 239.612, -5514.21, -31.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 27, 266.13, -5515.1, -32.1059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 28, 297.979, -5504.62, -32.2698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 29, 326.522, -5489.89, -32.6077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 30, 336.753, -5463.58, -28.1553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 31, 336.771, -5442.29, -26.5356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 32, 351.778, -5414.2, -22.672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 33, 359.145, -5389.11, -23.3096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 34, 365.925, -5363.74, -21.1654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 35, 384.33, -5356.52, -22.0758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 36, 401.883, -5346.24, -24.6042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 37, 417.182, -5331.88, -27.1095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 38, 449.288, -5339.32, -39.4666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 39, 478.163, -5354.21, -43.7743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56823, 40, 483.273, -5373.55, -49.2484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 1, -348.067, -5577.97, -32.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 2, -357.549, -5604.61, -32.5432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 3, -380.199, -5623.58, -31.4737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 4, -412.232, -5631.5, -31.9731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 5, -438.914, -5638.84, -33.1976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 6, -459.091, -5648.77, -34.1012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 7, -471.591, -5669.52, -33.2584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 8, -490.046, -5686.99, -32.2633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 9, -512.865, -5686.81, -36.9606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 10, -530.814, -5673.19, -35.9577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 11, -545.807, -5669.22, -31.6047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 12, -554.349, -5676.35, -26.0957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 13, -548.392, -5686.53, -26.0327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 14, -545.629, -5697.58, -25.7446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 15, -558.881, -5718.68, -23.5747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 16, -555.439, -5742.34, -26.5172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 17, -543.636, -5759.58, -33.2977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 18, -545.659, -5779.45, -32.5208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 19, -565.719, -5811.16, -34.1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 20, -584.56, -5824.54, -32.4604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 21, -614.898, -5821.75, -32.8638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 22, -584.56, -5824.54, -32.4604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 23, -565.719, -5811.16, -34.1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 24, -545.659, -5779.45, -32.5208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 25, -543.636, -5759.58, -33.2977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 26, -555.439, -5742.34, -26.5172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 27, -558.881, -5718.68, -23.5747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 28, -545.629, -5697.58, -25.7446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 29, -548.392, -5686.53, -26.0327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 30, -554.349, -5676.35, -26.0957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 31, -545.807, -5669.22, -31.6047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 32, -530.814, -5673.19, -35.9577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 33, -512.865, -5686.81, -36.9606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 34, -490.046, -5686.99, -32.2633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 35, -471.591, -5669.52, -33.2584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 36, -459.091, -5648.77, -34.1012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 37, -438.914, -5638.84, -33.1976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 38, -412.466, -5631.58, -32.0903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 39, -380.199, -5623.58, -31.4737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 40, -357.549, -5604.61, -32.5432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 41, -348.067, -5577.97, -32.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56824, 42, -318.713, -5564.04, -32.5515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 1, -608.189, -5817.86, -33.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 2, -636.505, -5820.9, -28.4536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 3, -659.174, -5823.26, -19.3774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 4, -691.712, -5820.37, -20.5041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 5, -713.348, -5823.96, -20.3692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 6, -751.252, -5827.44, -21.7339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 7, -783.621, -5825.68, -22.7967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 8, -808.286, -5822.93, -29.9531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 9, -845.253, -5820.43, -16.3681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 10, -875.673, -5822.89, -12.8224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 11, -909.937, -5825.71, -12.1481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 12, -942.422, -5823.41, -20.2785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 13, -980.966, -5821.28, -22.5778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 14, -1015.38, -5815.63, -30.7905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 15, -1034.81, -5795.98, -28.1028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 16, -1056.59, -5790.92, -26.0222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 17, -1070.57, -5793.05, -25.0055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 18, -1094.36, -5787.65, -27.308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 19, -1114.45, -5780.14, -27.8109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 20, -1128.8, -5771.17, -18.6337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 21, -1147.59, -5766.96, -13.6918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 22, -1179.73, -5766.32, -14.8849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 23, -1207.66, -5765.58, -13.849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 24, -1232.48, -5768.13, -17.9423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 25, -1249.48, -5772.08, -21.2213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 26, -1232.48, -5768.13, -17.9423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 27, -1207.66, -5765.58, -13.849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 28, -1179.73, -5766.32, -14.8849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 29, -1147.59, -5766.96, -13.6918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 30, -1128.8, -5771.17, -18.6337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 31, -1114.45, -5780.14, -27.8109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 32, -1094.36, -5787.65, -27.308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 33, -1070.57, -5793.05, -25.0055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 34, -1056.59, -5790.92, -26.0222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 35, -1034.81, -5795.98, -28.1028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 36, -1015.38, -5815.63, -30.7905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 37, -980.966, -5821.28, -22.5778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 38, -942.422, -5823.41, -20.2785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 39, -909.937, -5825.71, -12.1481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 40, -875.673, -5822.89, -12.8224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 41, -845.253, -5820.43, -16.3681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 42, -808.286, -5822.93, -29.9531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 43, -783.621, -5825.68, -22.7967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 44, -751.252, -5827.44, -21.7339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 45, -713.348, -5823.96, -20.3692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 46, -691.712, -5820.37, -20.5041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 47, -659.174, -5823.26, -19.3774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 48, -636.505, -5820.9, -28.4536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 49, -608.189, -5817.86, -33.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56825, 50, -581.407, -5813.84, -31.5447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 1, -1414.72, -5785.94, -18.2885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 2, -1429.12, -5803.25, -21.4268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 3, -1440.07, -5818.4, -23.6505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 4, -1473.32, -5817.65, -28.5233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 5, -1493.11, -5817.8, -30.5536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 6, -1515.08, -5820.92, -30.8291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 7, -1546.92, -5824.5, -30.4198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 8, -1576.58, -5830.68, -26.9595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 9, -1609.99, -5827.75, -22.2551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 10, -1649.51, -5819.8, -18.2337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 11, -1656.18, -5794.95, -11.2324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 12, -1638.66, -5767.85, -23.0969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 13, -1641.79, -5751.14, -26.1178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 14, -1618.05, -5731.53, -29.6055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 15, -1600.35, -5710.07, -28.909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 16, -1617.42, -5693.51, -23.3433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 17, -1640.38, -5682.3, -22.6561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 18, -1660.63, -5671.53, -26.1769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 19, -1686.91, -5662.64, -27.366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 20, -1698.24, -5629.52, -27.0792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 21, -1712.57, -5613.55, -27.7746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 22, -1728, -5592.73, -26.9465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 23, -1744.33, -5587.04, -30.407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 24, -1728, -5592.73, -26.9465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 25, -1712.57, -5613.55, -27.7746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 26, -1698.24, -5629.52, -27.0792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 27, -1686.91, -5662.64, -27.366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 28, -1660.63, -5671.53, -26.1769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 29, -1640.38, -5682.3, -22.6561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 30, -1617.42, -5693.51, -23.3433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 31, -1600.35, -5710.07, -28.909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 32, -1618.05, -5731.53, -29.6055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 33, -1641.79, -5751.14, -26.1178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 34, -1638.66, -5767.85, -23.0969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 35, -1656.18, -5794.95, -11.2324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 36, -1649.51, -5819.8, -18.2337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 37, -1609.99, -5827.75, -22.2551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 38, -1576.58, -5830.68, -26.9595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 39, -1546.92, -5824.5, -30.4198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 40, -1515.08, -5820.92, -30.8291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 41, -1493.11, -5817.8, -30.5536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 42, -1473.32, -5817.65, -28.5233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 43, -1440.07, -5818.4, -23.6505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 44, -1429.12, -5803.25, -21.4268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 45, -1414.72, -5785.94, -18.2885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56826, 46, -1368.82, -5777.98, -19.775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 1, -1776.08, -5589.01, -34.1817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 2, -1803.56, -5594.41, -34.1236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 3, -1823.1, -5600.48, -33.4813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 4, -1856.05, -5605.8, -33.9261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 5, -1873.25, -5594.56, -36.2275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 6, -1884.44, -5579.1, -39.404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 7, -1896.79, -5559.88, -39.6055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 8, -1889.67, -5539.57, -37.1367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 9, -1871.8, -5526.5, -38.0821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 10, -1846.05, -5521.63, -40.426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 11, -1827.92, -5477.87, -35.5678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 12, -1820.32, -5455.87, -30.8618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 13, -1804.97, -5430.85, -35.1741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 14, -1779.96, -5415.25, -34.3368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 15, -1766.38, -5396.98, -33.1941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 16, -1779.96, -5415.25, -34.3368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 17, -1804.97, -5430.85, -35.1741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 18, -1820.32, -5455.87, -30.8618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 19, -1827.92, -5477.87, -35.5678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 20, -1846.05, -5521.63, -40.426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 21, -1871.8, -5526.5, -38.0821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 22, -1889.67, -5539.57, -37.1367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 23, -1896.79, -5559.88, -39.6055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 24, -1884.44, -5579.1, -39.404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 25, -1873.25, -5594.56, -36.2275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 26, -1856.05, -5605.8, -33.9261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 27, -1823.1, -5600.48, -33.4813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 28, -1803.56, -5594.41, -34.1236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 29, -1776.08, -5589.01, -34.1817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56827, 30, -1755.5, -5592.2, -32.9915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 1, -1142.71, -4322.34, -7.51439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 2, -1145.22, -4345, -9.04151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 3, -1160.35, -4357.77, -12.1184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 4, -1176.23, -4369.2, -13.3569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 5, -1169.89, -4381.36, -14.9885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 6, -1166.83, -4391.78, -13.7736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 7, -1184.73, -4412.31, -13.0552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 8, -1183.19, -4430.99, -10.8047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 9, -1202.45, -4460.21, -6.74833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 10, -1215.99, -4472.52, -8.58044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 11, -1208.83, -4488.69, -6.47131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 12, -1188.06, -4498.22, -4.53936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 13, -1169.26, -4479.33, -4.28472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 14, -1162.07, -4452.04, -4.66485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 15, -1155.31, -4427.7, -7.9868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 16, -1165.52, -4412.07, -11.3374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 17, -1159.32, -4392.17, -11.8421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 18, -1144.14, -4381.1, -9.75907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 19, -1133.1, -4355.53, -8.96437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 20, -1120.31, -4335.31, -8.06143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56828, 21, -1119.31, -4321.89, -7.84806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE creature SET MovementType = 2 WHERE guid IN (84992);
DELETE FROM creature_movement WHERE id IN (84992);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) values
(84992,1,116.584,455.602,-4.95288,0,0,0,0,0,0,0,0,0,0,2.61773,0,0),
(84992,2,115.153,455.568,-4.89346,20000,1797501,0,0,0,0,0,0,0,0,3.33087,0,0),
(84992,3,116.623,455.478,-4.94902,0,0,0,0,0,0,0,0,0,0,6.17716,0,0),
(84992,4,120.628,451.036,-4.92864,0,0,0,0,0,0,0,0,0,0,5.62188,0,0),
(84992,5,120.543,449.982,-4.88372,20000,1797502,0,0,0,0,0,0,0,0,4.41551,0,0),
(84992,6,120.796,450.93,-4.93171,0,0,0,0,0,0,0,0,0,0,1.61949,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1797501,1797502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1797501,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1797501,10,0,0,0,0,0,0,2000000141,2000000194,2000000222,2000001372,0,0,0,0,''),
(1797501,18,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1797502,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1797502,10,0,0,0,0,0,0,2000001372,2000000222,2000000194,2000000141,0,0,0,0,''),
(1797502,18,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000141,2000000194,2000000222,2000001372);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000141,'...mumble...Petals of Fire...mumble...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'High Botanist Freywinn in Botanica'),
(2000000194,'...mumble mumble...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'High Botanist Freywinn in Botanica'),
(2000000222,'...with the right mixture, perhaps...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'High Botanist Freywinn in Botanica'),
(2000001372,'...thorny vines...mumble...ouch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'High Botanist Freywinn in Botanica');
DELETE FROM dbscripts_on_event WHERE id = 14856;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14856,1,15,40136,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14856,4,10,23096,120000,0,0,0,0,0,0,0,-2482.269,4661.722,161.5004,0.9424778,'spawn Acolyte of Air'),
(14856,118,31,23096,100,0,0,0,0,0,0,0,0,0,0,0,''),
(14856,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn'); 
DELETE FROM dbscripts_on_event WHERE id = 14857;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14857,1,15,40141,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14857,4,10,23097,120000,0,0,0,0,0,0,0,-2443.984,4634.114,158.2763,2.36124,'spawn Acolyte of Water'),
(14857,118,31,23097,100,0,0,0,0,0,0,0,0,0,0,0,''),
(14857,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscripts_on_event WHERE id = 14858;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14858,3,15,40147,0,23102,30,7,0,0,0,0,0,0,0,0,''),
(14858,4,10,23098,120000,0,0,0,0,0,0,0,-2385.025,4552.593,165.7631,2.36124,'spawn Acolyte of Earth'),
(14858,118,31,23098,100,0,0,0,0,0,0,0,0,0,0,0,''),
(14858,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM `creature_loot_template` WHERE `entry` = 23100 AND `item` = 31889;
UPDATE gossip_menu_option SET condition_id = 2197, action_script_id = 8725 WHERE menu_id = 8725;
DELETE FROM conditions WHERE condition_entry = 2197;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(2197, 9, 11089, 0);
DELETE FROM `creature_template_spells` WHERE `entry` = 23093;
DELETE FROM dbscripts_on_gossip WHERE id = 8725;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8725,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'23093 - npc_flag removed'),
(8725,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 23093;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(23093,1,-2528.145,4661.219,170.5803,3000,2309301,0,0,0,0,0,0,0,0,5.550147,0,0),
(23093,2,-2520.11,4665.68,170.382,0,0,0,0,0,0,0,0,0,0,0.510926,0,0),
(23093,3,-2501.86,4675.29,161.372,0,0,0,0,0,0,0,0,0,0,0.474462,0,0),
(23093,4,-2487.58,4686.76,155.028,0,0,0,0,0,0,0,0,0,0,0.860878,0,0),
(23093,5,-2474.83,4698.74,155.344,0,0,0,0,0,0,0,0,0,0,0.5,0,0),
(23093,6,-2474.83,4698.74,155.344,7000,2309302,0,0,0,0,0,0,0,0,0.523156,0,0),
(23093,7,-2480.65,4685.96,155.49,0,0,0,0,0,0,0,0,0,0,4.98332,0,0),
(23093,8,-2481.49,4672.65,158.966,0,0,0,0,0,0,0,0,0,0,5.0972,0,0),
(23093,9,-2480.16,4665.24,160.284,7000,2309303,0,0,0,0,0,0,0,0,4.21441,0,0),
(23093,10,-2455.65,4662.22,159.951,0,0,0,0,0,0,0,0,0,0,5.74709,0,0),
(23093,11,-2436.2,4646.31,160.228,0,0,0,0,0,0,0,0,0,0,4.22263,0,0),
(23093,12,-2439.97,4639.62,158.027,7000,2309304,0,0,0,0,0,0,0,0,4.22263,0,0), 
(23093,13,-2436.58,4646.84,160.297,0,0,0,0,0,0,0,0,0,0,0.364134,0,0),
(23093,14,-2425.2,4648.12,160.448,0,0,0,0,0,0,0,0,0,0,5.66298,0,0),
(23093,15,-2411.43,4634.77,160.39,0,0,0,0,0,0,0,0,0,0,5.14384,0,0),
(23093,16,-2407.81,4627.84,160.568,0,0,0,0,0,0,0,0,0,0,4.7906,0,0),
(23093,17,-2415.99,4589.04,160.548,0,0,0,0,0,0,0,0,0,0,5.91249,0,0),
(23093,18,-2399.42,4581.89,164.871,0,0,0,0,0,0,0,0,0,0,5.81645,0,0),
(23093,19,-2391.28,4576.64,166.057,0,0,0,0,0,0,0,0,0,0,5.25412,0,0),
(23093,20,-2388.56,4568.29,164.933,0,0,0,0,0,0,0,0,0,0,4.9219,0,0),
(23093,21,-2388.364,4560.494,165.4174,7000,2309305,0,0,0,0,0,0,0,0,5.40246,0,0),
(23093,22,-2393.32,4546.13,165.565,0,0,0,0,0,0,0,0,0,0,3.85805,0,0),
(23093,23,-2409.52,4532.03,166.061,0,0,0,0,0,0,0,0,0,0,4.28217,0,0),
(23093,24,-2422.16,4505.4,166.642,0,0,0,0,0,0,0,0,0,0,4.60261,0,0),
(23093,25,-2424.31,4496.46,165.468,0,0,0,0,0,0,0,0,0,0,4.48009,0,0),
(23093,26,-2428.53,4482.27,167.103,0,0,0,0,0,0,0,0,0,0,4.76524,0,0),
(23093,27,-2429.68,4462.26,166.145,7000,2309306,0,0,0,0,0,0,0,0,5.10998,0,0),
(23093,28,-2429.66,4482.22,167.088,0,0,0,0,0,0,0,0,0,0,1.30757,0,0),
(23093,29,-2424.99,4494.94,165.455,0,0,0,0,0,0,0,0,0,0,1.26751,0,0),
(23093,30,-2416.78,4520.28,166.428,0,0,0,0,0,0,0,0,0,0,1.03346,0,0),
(23093,31,-2408.74,4532.46,166.077,0,0,0,0,0,0,0,0,0,0,0.715377,0,0),
(23093,32,-2391.15,4550.27,165.63,0,0,0,0,0,0,0,0,0,0,1.39475,0,0),
(23093,33,-2390.8,4573.16,165.876,0,0,0,0,0,0,0,0,0,0,1.92882,0,0),
(23093,34,-2397.56,4580.46,165.298,0,0,0,0,0,0,0,0,0,0,2.52572,0,0),
(23093,35,-2403.85,4584.2,163.669,0,0,0,0,0,0,0,0,0,0,2.89407,0,0),
(23093,36,-2410.81,4584.86,160.288,0,0,0,0,0,0,0,0,0,0,2.34743,0,0),
(23093,37,-2415.9,4591.78,160.632,0,0,0,0,0,0,0,0,0,0,1.53769,0,0),
(23093,38,-2408.04,4624.59,160.607,0,0,0,0,0,0,0,0,0,0,1.7631,0,0),
(23093,39,-2410.98,4634.52,160.351,0,0,0,0,0,0,0,0,0,0,2.16639,0,0),
(23093,40,-2428.67,4652.83,160.572,0,0,0,0,0,0,0,0,0,0,2.58972,0,0),
(23093,41,-2441.28,4659.46,160.626,0,2309307,0,0,0,0,0,0,0,0,2.97614,0,0),
(23093,42,-2463.44,4662.78,159.543,0,0,0,0,0,0,0,0,0,0,2.64077,0,0),
(23093,43,-2472.09,4667.23,159.414,0,0,0,0,0,0,0,0,0,0,2.46249,0,0),
(23093,44,-2479.66,4675.25,158.05,0,0,0,0,0,0,0,0,0,0,1.83888,0,0),
(23093,45,-2479.86,4694.21,154.879,0,0,0,0,0,0,0,0,0,0,1.28596,0,0),
(23093,46,-2478.81,4698.33,154.796,0,0,0,0,0,0,0,0,0,0,0.593238,0,0),
(23093,47,-2475.14,4700.05,155.206,17000,2309308,0,0,0,0,0,0,0,0,6.24303,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2309301 AND 2309308; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2309301,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sar\'this active'),
(2309301,2,0,0,0,0,0,0,2000001373,0,0,0,0,0,0,0,''),
(2309302,3,0,0,0,0,0,0,2000001374,0,0,0,0,0,0,0,''),
(2309302,4,9,8851,300,0,0,0,0,0,0,0,0,0,0,0,'respawn Fetish of Sar\'this'),
(2309303,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309303,3,0,0,0,0,0,0,2000001375,0,0,0,0,0,0,0,''),
(2309303,4,15,40129,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309304,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309304,3,0,0,0,0,0,0,2000001377,0,0,0,0,0,0,0,''),
(2309304,4,15,40130,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309305,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309305,3,0,0,0,0,0,0,2000001378,0,0,0,0,0,0,0,''),
(2309305,4,15,40132,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309306,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309306,3,0,0,0,0,0,0,2000001379,0,0,0,0,0,0,0,''),
(2309306,4,15,40133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309307,0,3,0,0,23094,126636,7 | 0x10,0,0,0,0,-2473.62,4706.47,155.316,5.96323,''),
(2309307,0,3,0,0,23094,56810,7 | 0x10,0,0,0,0,-2476.07,4702.61,155.047,6.21425,''),
(2309307,0,3,0,0,23094,56811,7 | 0x10,0,0,0,0,-2477.52,4696.75,155.0983,1.454149,''),
(2309307,0,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2472.25,4694.06,155.881,1.00466,''),
(2309308,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2309308,3,0,0,0,0,0,0,2000001380,0,0,0,0,0,0,0,''),
(2309308,4,15,40134,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2309308,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001373 AND 2000001381;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001373,'So my blood was not a sufficient payment, eh? Fine, let us recover your arcane essence. After this, I owe Balthas nothing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001374,'%s places a fetish at the ritual pile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,16,NULL),
(2000001375,'The process is arduous. We must first summon forth acolytes of the elements. You must then destroy these acolytes so that my minions can make preparations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001376,'Well done!  Let\'s continue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001377,'Prepare yourself! The acolyte of water is soon to come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001378,'Come forth, acolyte of earth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001379,'Fire, show yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001380,'Now we call forth the the arcane acolyte.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001381,'It is yours my Lord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM dbscripts_on_event WHERE id = 14859;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14859,1,15,40148,0,23102,80012,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82738,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82740,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82741,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82742,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82744,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82745,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,82748,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,56829,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,1,15,40148,0,23102,56830,7 | 0x10,0,0,0,0,0,0,0,0,''),
(14859,4,10,23099,120000,0,0,0,0,0,0,0,-2425.974,4444.52,167.2437,1.884956,'spawn Acolyte of Fire'),
(14859,118,31,23099,100,0,0,0,0,0,0,0,0,0,0,0,''),
(14859,119,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
UPDATE `creature_template` SET `FactionAlliance` = 91, `FactionHorde` = 91 WHERE `Entry` in (23096,23097,23098,23099,23100);
DELETE FROM dbscripts_on_event WHERE id = 14860;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14860,0,20,2,0,23102,79169,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 23102 ;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(23102,1,-2466.61,4699.98,155.643,16000,2310201,0,0,0,0,0,0,0,0,3.141593,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2310201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2310201,0,15,40193,0,23094,126636,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,0,15,40225,0,23094,56810,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,0,15,40227,0,23094,56811,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,0,15,40228,0,23094,56812,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2310201,8,10,23100,120000,0,0,0,0,0,0,0,-2470.6,4700.02,155.902,1.19221,'spawn Flawless Arcane Elemental'),
(2310201,10,0,0,0,23093,100,4,2000001381,0,0,0,0,0,0,0,'force 23093 to: say text'),
(2310201,13,20,0,0,23093,100,7,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2310201,14,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2310201,14,15,5,0,23093,100,7,0,0,0,0,0,0,0,0,''),
(2310201,15,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2310201,16,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 23096;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23096,0,15,40156,0,23094,126636,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23096,3,0,0,0,23093,100,4,2000001376,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23096,3,15,6273,0,23093,100,7,0,0,0,0,0,0,0,0,''),
(23096,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23096,5,32,1,0,23094,126636,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23096,7,3,0,0,23094,126636,7 | 0x10,0,0,0,0,-2487.01,4723.86,153.009,4.90897,''),
(23096,22,3,0,0,23094,126636,7 | 0x10,0,0,0,0,-2473.62,4706.47,155.316,5.96323,''),
(23096,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''),
(23096,198,15,6273,0,23094,126636,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23096,198,14,40156,0,23094,126636,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23096,200,32,0,0,23094,126636,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
DELETE FROM dbscripts_on_creature_death WHERE id = 23097;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23097,0,15,40187,0,23094,56810,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23097,3,0,0,0,23093,100,4,2000001376,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23097,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23097,5,32,1,0,23094,56810,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23097,7,3,0,0,23094,56810,7 | 0x10,0,0,0,0,-2473.57,4671.96,159.079,2.99726,''),
(23097,22,3,0,0,23094,56810,7 | 0x10,0,0,0,0,-2484.73,4691.69,154.773,1.17985,''),
(23097,28,3,0,0,23094,56810,7 | 0x10,0,0,0,0,-2476.07,4702.61,155.047,6,''),
(23097,36,3,0,0,23094,56810,7 | 0x10,0,0,0,0,0,0,0,6.21425,''),
(23097,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''),
(23097,198,15,6273,0,23094,56810,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23097,198,14,40187,0,23094,56810,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23097,200,32,0,0,23094,56810,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
DELETE FROM dbscripts_on_creature_death WHERE id = 23098;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23098,0,15,40189,0,23094,56811,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23098,3,0,0,0,23093,100,4,2000001376,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23098,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23098,5,32,1,0,23094,56811,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23098,7,3,0,0,23094,56811,7 | 0x10,0,0,0,0,-2463.08,4659.54,159.652,2.50195,''),
(23098,22,3,0,0,23094,56811,7 | 0x10,0,0,0,0,-2482.7,4673.34,158.833,1.68474,''),
(23098,29,3,0,0,23094,56811,7 | 0x10,0,0,0,0,-2477.52,4696.75,155.0983,1,''),
(23098,36,3,0,0,23094,56811,7 | 0x10,0,0,0,0,0,0,0,1.454149,''),
(23098,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''),
(23098,198,15,6273,0,23094,56811,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23098,198,14,40189,0,23094,56811,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23098,200,32,0,0,23094,56811,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
DELETE FROM dbscripts_on_creature_death WHERE id = 23099;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23099,0,15,40190,0,23094,56812,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23099,3,0,0,0,23093,100,4,2000001376,0,0,0,0,0,0,0,'force 23093 to: say text'),
(23099,4,32,0,0,23093,100,7,0,0,0,0,0,0,0,0,'wp unpause'),
(23099,5,32,1,0,23094,56812,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(23099,7,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2415.88,4588.63,160.551,1.35255,''),
(23099,12,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2407.72,4628.97,160.484,2.39556,''),
(23099,30,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2432.06,4655.25,160.581,2.71757,''),
(23099,42,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2475.86,4667.53,159.443,2.30052,''),
(23099,55,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2480.81,4682.19,156.044,1.40438,''),
(23099,65,3,0,0,23094,56812,7 | 0x10,0,0,0,0,-2472.25,4694.06,155.881,1.4,''),
(23099,70,3,0,0,23094,56812,7 | 0x10,0,0,0,0,0,0,0,1.00466,''),
(23099,196,31,23100,100,0,0,0,0,0,0,0,0,0,0,0,''),
(23099,198,15,6273,0,23094,56812,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23099,198,14,40190,0,23094,56812,7 | 0x10,0,0,0,0,0,0,0,0,''),
(23099,200,32,0,0,23094,56812,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(78318, 23102, 530, 1, 1, 0, 0, -2443.7, 4634.14, 158.221, 1.10586, 25, 0, 0, 881, 0, 0, 0),
(78590, 23102, 530, 1, 1, 0, 0, -2482.24, 4661.68, 161.413, 3.51227, 25, 0, 0, 881, 0, 0, 0),
(78591, 23102, 530, 1, 1, 0, 0, -2384.98, 4552.59, 165.69, 4.99611, 25, 0, 0, 881, 0, 0, 0),
(78592, 23102, 530, 1, 1, 0, 0, -2432.75, 4458.1, 166.076, 0.907029, 25, 0, 0, 881, 0, 0, 0),
(79169, 23102, 530, 1, 1, 0, 0, -2466.61, 4699.98, 155.643, 3.14159, 25, 0, 0, 881, 0, 0, 0),
(80012, 23102, 530, 1, 1, 0, 0, -2414.98, 4458.58, 165.725, 4.31056, 25, 0, 0, 881, 0, 0, 2),
(82738, 23102, 530, 1, 1, 0, 0, -2432.75, 4458.1, 166.076, 4.31056, 25, 0, 0, 881, 0, 0, 2),
(82740, 23102, 530, 1, 1, 0, 0, -2418.7, 4446.77, 165.623, 4.31056, 25, 0, 0, 881, 0, 0, 2),
(82741, 23102, 530, 1, 1, 0, 0, -2432.38, 4444.57, 170.177, 4.31056, 25, 0, 0, 881, 0, 0, 2),
(82742, 23102, 530, 1, 1, 0, 0, -2423.71, 4453.52, 165.612, 5.42973, 25, 0, 0, 881, 0, 0, 2),
(82744, 23102, 530, 1, 1, 0, 0, -2428.66, 4460.05, 166.238, 5.42973, 25, 0, 0, 881, 0, 0, 2),
(82745, 23102, 530, 1, 1, 0, 0, -2432.45, 4434.58, 170.862, 5.42973, 25, 0, 0, 881, 0, 0, 2),
(82748, 23102, 530, 1, 1, 0, 0, -2426.57, 4437.26, 167.977, 5.42973, 25, 0, 0, 881, 0, 0, 2),
(56829, 23102, 530, 1, 1, 0, 0, -2414.89, 4436.77, 163.105, 5.42973, 25, 0, 0, 881, 0, 0, 2),
(56830, 23102, 530, 1, 1, 0, 0, -2435.68, 4440.87, 171.618, 2.64157, 25, 0, 0, 881, 0, 0, 2);
DELETE FROM creature_movement WHERE id in (80012,82738,82740,82741,82742,82744,82745,82748,56829,56830);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(80012, 1, -2416.25, 4457.35, 166.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80012, 2, -2416.75, 4455.1, 166.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80012, 3, -2420.25, 4453.85, 166.995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80012, 4, -2420.5, 4451.85, 166.745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80012, 5, -2422, 4450.35, 166.495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80012, 6, -2425, 4447.1, 166.245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80012, 7, -2426.01, 4444.6, 167.181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 1, -2428.95, 4454.36, 164.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 2, -2428.7, 4452.11, 165.713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 3, -2430.45, 4449.86, 166.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 4, -2430.7, 4448.11, 166.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 5, -2429.95, 4445.61, 166.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 6, -2428.7, 4445.86, 166.963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82738, 7, -2426.16, 4444.63, 167.266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82740, 1, -2422.57, 4447.15, 167.424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82740, 2, -2422.57, 4447.15, 167.424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82740, 3, -2425.32, 4444.65, 166.924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82740, 4, -2425.95, 4444.54, 167.143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82741, 1, -2431.45, 4444.52, 169.478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82741, 2, -2429.2, 4448.02, 167.978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82741, 3, -2427.45, 4446.77, 167.478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82741, 4, -2426.03, 4444.46, 167.196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82742, 1, -2420.85, 4450.29, 164.683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82742, 2, -2421.85, 4448.04, 165.933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82742, 3, -2425.1, 4446.79, 166.683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82742, 4, -2426, 4444.56, 167.171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82744, 1, -2426.1, 4457.33, 165.258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82744, 2, -2424.35, 4454.33, 165.508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82744, 3, -2427.1, 4450.83, 167.258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82744, 4, -2425.85, 4447.83, 167.008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82744, 5, -2426.04, 4444.6, 167.195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82745, 1, -2430.91, 4434.82, 169.765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82745, 2, -2429.16, 4438.32, 168.515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82745, 3, -2427.16, 4437.57, 168.015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82745, 4, -2427.66, 4441.32, 167.765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82745, 5, -2425.91, 4442.82, 167.015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82745, 6, -2425.85, 4444.56, 167.085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82748, 1, -2428.28, 4439.11, 168.616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82748, 2, -2428.28, 4440.86, 168.366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82748, 3, -2426.03, 4443.11, 167.116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82748, 4, -2425.99, 4444.47, 167.173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56829, 1, -2416.43, 4437.88, 163.67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56829, 2, -2417.93, 4442.13, 164.17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56829, 3, -2420.43, 4441.88, 165.42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56829, 4, -2422.43, 4441.88, 166.42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56829, 5, -2423.68, 4444.38, 165.92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56829, 6, -2425.96, 4444.49, 167.152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 1, -2433.75, 4441.5, 170.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 2, -2432.25, 4443.75, 169.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 3, -2430, 4443.5, 168.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 4, -2429, 4445.25, 168.13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 5, -2427.25, 4445.5, 167.63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 6, -2426.75, 4444.25, 167.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56830, 7, -2425.82, 4444.62, 167.059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 126535;
DELETE FROM `creature` WHERE `guid` = 126536;
DELETE FROM `creature` WHERE `guid` = 126537;
DELETE FROM `creature` WHERE `guid` = 126538;
DELETE FROM `creature` WHERE `guid` = 126539;
DELETE FROM `creature` WHERE `guid` = 126540;
DELETE FROM `creature` WHERE `guid` = 126541;
DELETE FROM `creature` WHERE `guid` in (130967,130957,130959,130971,130965,130963,130969,130973,130975,130977,130979,130981,130983,130985,130987,130989,130991,130993,130995,130997,130999,131001,131003,131005,130956);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (36557,36558);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, cast_flags) VALUES
(36557, 67830, 0, 1),
(36558, 67830, 0, 1);
UPDATE creature_template SET UnitFlags=UnitFlags|512 WHERE entry=35004;
UPDATE creature_template SET UnitFlags=UnitFlags|256 WHERE entry=35644;
DELETE FROM creature_template_addon WHERE entry IN (34657,34701,34702,34703,34705,35569,35570,35571,35572,35617,35328,35331,35330,35332,
35329,35314,35326,35323,35325,35327,35644,36558);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, auras) VALUES
(35644, 0, 0x0, 0x1, '67870'),
(36558, 0, 0x0, 0x1, '67865'),
(34657, 0, 0x0, 0x1, '63406'),
(34701, 0, 0x0, 0x1, '63423'),
(34702, 0, 0x0, 0x1, '63396'),
(34703, 0, 0x0, 0x1, '63427'),
(34705, 0, 0x0, 0x1, '62594'),
(35569, 0, 0x0, 0x1, '63403'),
(35570, 0, 0x0, 0x1, '63399'),
(35571, 0, 0x0, 0x1, '63436'),
(35572, 0, 0x0, 0x1, '63433'),
(35617, 0, 0x0, 0x1, '63430'),
(35328, 28912, 0x0, 0x1, '64100'),
(35331, 28571, 0x0, 0x1, '64100'),
(35330, 29255, 0x0, 0x1, '64100'),
(35332, 29256, 0x0, 0x1, '64100'),
(35329, 29258, 0x0, 0x1, '64100'),
(35314, 29260, 0x0, 0x1, '64100'),
(35326, 29262, 0x0, 0x1, '64100'),
(35323, 29261, 0x0, 0x1, '64100'),
(35325, 29259, 0x0, 0x1, '64100'),
(35327, 29257, 0x0, 0x1, '64100');
DELETE FROM creature_template_spells WHERE entry IN (36558,36557,23100);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(36557, 68505, 62575, 68282, 62552),
(36558, 68505, 62575, 68282, 62552);
DELETE FROM `pool_gameobject_template` WHERE `id` = 175966;
INSERT INTO `pool_gameobject_template` VALUES
(175966, 14645, 0, 'Enchanted Scarlet Thread (175966)');
DELETE FROM `pool_template` WHERE `entry` = 14645;
INSERT INTO `pool_template` VALUES
(14645, 2, 'Enchanted Scarlet Thread (175966) - Stratholme');
DELETE FROM creature_movement_template WHERE entry IN (25038);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, orientation) VALUES
(25038,1,1441.640, 520.520, 50.083, 0, 0),
(25038,2,1467.219, 516.318, 50.083, 0, 0),
(25038,3,1492.819, 515.668, 50.083, 0, 0),
(25038,4,1458.170, 501.295, 60.083, 2000, 2.93),
(25038,5,1446.540, 702.570, 50.083, 0, 0),
(25038,6,1469.939, 704.239, 50.083, 0, 0),
(25038,7,1494.760, 705.000, 50.083, 0, 0),
(25038,8,1468.380, 730.267, 60.083, 2000, 5.07);
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (5743, 5744);
INSERT INTO `dbscripts_on_gossip` VALUES
(5743, 0, 7, 7482, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 2, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, ''),
(5743, 4, 0, 0, 0, 14368, 20, 0, 2000001382, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 7, 0, 0, 0, 14368, 20, 0, 2000001383, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 13, 0, 0, 0, 14368, 20, 0, 2000001384, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 20, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.07178, ''),
(5744, 0, 7, 7481, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 2, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, ''),
(5744, 4, 0, 0, 0, 14368, 20, 0, 2000001382, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 7, 0, 0, 0, 14368, 20, 0, 2000001383, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 13, 0, 0, 0, 14368, 20, 0, 2000001384, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 20, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.07178, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000001382, 2000001383, 2000001384);
INSERT INTO `db_script_string` VALUES
(2000001382, 'I very much doubt that he will have anything to say, stranger...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000001383, 'I personally didn\'t mind him. It was the Prince who took exception to a high elf in his domain. Alas, I am not one to question the Prince. In his defense, he did not incinerate Master Winthalus immediately.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000001384, 'We most definitely do not need any more attention drawn to us, stranger. Return to those that sent you in search of the lost master and tell them that nothing could be found. When this is done - and I will know when it is so - return and I shall reveal the secrets of the deceased.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);
UPDATE `gameobject_template` SET `faction` = 14 WHERE `entry` = 179784;
UPDATE `creature` SET `position_x`='1055.392', `position_y`='-424.1431', `position_z`='-31.71157', `orientation`='1.750369', `MovementType`='2' WHERE `id`=12243;
DELETE FROM `creature_movement` WHERE `id`=47850;
DELETE FROM `creature_movement_template` WHERE `entry`=12243;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(12243, 1, '1049.818', '-393.4347', '-36.40392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 2, '1045.682', '-370.0918', '-36.26097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 3, '1037.269', '-344.1738', '-38.49696', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 4, '1010.231', '-354.8006', '-40.64174', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 5, '1001.227', '-344.3694', '-41.84286', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 6, '999.8060', '-321.7702', '-44.88178', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 7, '975.9816', '-300.2042', '-45.56088', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 8, '973.3655', '-281.7761', '-45.60944', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 9, '990.8004', '-256.7235', '-45.71144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 10, '989.8036', '-243.7692', '-46.39622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 11, '976.5450', '-231.1565', '-48.83212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 12, '961.1855', '-219.4528', '-46.59094', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 13, '948.0901', '-222.7645', '-46.55467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 14, '918.1025', '-245.1806', '-46.55928', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 15, '890.2081', '-266.6740', '-45.42295', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 16, '893.1019', '-286.1003', '-45.94720', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 17, '897.5882', '-303.8908', '-46.28094', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 18, '901.6393', '-319.0111', '-49.26011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 19, '924.2225', '-338.5798', '-49.55234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 20, '945.5290', '-352.3690', '-50.18389', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 21, '949.2391', '-372.7560', '-50.12433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 22, '988.6956', '-380.2867', '-50.14082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 23, '988.1112', '-348.7142', '-55.44043', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 24, '996.1870', '-322.5443', '-66.97682', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 25, '1033.109', '-300.2142', '-71.97886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 26, '1053.559', '-317.8576', '-72.60872', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 27, '1072.046', '-311.1849', '-72.56207', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 28, '1070.727', '-284.2663', '-72.68817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 29, '1063.746', '-252.9242', '-72.76898', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 30, '1043.079', '-229.5041', '-72.24142', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 31, '1020.745', '-209.5346', '-68.81355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 32, '995.1354', '-196.4536', '-67.63020', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 33, '976.9100', '-181.5676', '-67.80058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 34, '948.1158', '-177.7663', '-63.59454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 35, '937.1934', '-168.8369', '-61.91036', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 36, '938.5875', '-151.5429', '-60.67347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 37, '948.4577', '-143.1483', '-60.54069', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 38, '958.8175', '-117.1759', '-63.10133', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 39, '963.1480', '-94.42476', '-63.19287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 40, '959.0657', '-69.91625', '-61.98630', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 41, '938.5645', '-63.86766', '-61.55652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 42, '919.0784', '-60.11865', '-59.44709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 43, '897.0678', '-67.87030', '-59.41375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 44, '903.8420', '-88.71603', '-59.77781', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 45, '917.5721', '-110.9749', '-61.77675', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 46, '903.7606', '-142.9984', '-60.55473', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 47, '905.8484', '-166.0484', '-60.56079', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 48, '915.4623', '-183.6756', '-57.63430', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 49, '902.2466', '-202.7771', '-52.54680', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 50, '893.0361', '-219.8669', '-52.47010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 51, '877.2800', '-241.5437', '-51.13675', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 52, '864.7952', '-249.2394', '-52.05878', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 53, '827.9483', '-258.0505', '-59.70293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 54, '864.7952', '-249.2394', '-52.05878', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 55, '877.2734', '-241.5478', '-51.36961', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 56, '893.0361', '-219.8669', '-52.47010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 57, '902.2466', '-202.7771', '-52.54680', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 58, '915.4623', '-183.6756', '-57.63430', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 59, '905.8484', '-166.0484', '-60.56079', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 60, '903.7606', '-142.9984', '-60.55473', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 61, '917.4988', '-111.1451', '-61.78257', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 62, '903.8420', '-88.71603', '-59.77781', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 63, '897.0678', '-67.87030', '-59.41375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 64, '919.0784', '-60.11865', '-59.44709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 65, '938.5645', '-63.86766', '-61.55652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 66, '959.0657', '-69.91625', '-61.98630', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 67, '963.1480', '-94.42476', '-63.19287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 68, '958.8175', '-117.1759', '-63.10133', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 69, '948.4577', '-143.1483', '-60.54069', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 70, '938.5875', '-151.5429', '-60.67347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 71, '937.1934', '-168.8369', '-61.91036', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 72, '948.1158', '-177.7663', '-63.59454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 73, '976.9100', '-181.5676', '-67.80058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 74, '995.1354', '-196.4536', '-67.63020', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 75, '1020.745', '-209.5346', '-68.81355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 76, '1043.079', '-229.5041', '-72.24142', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 77, '1063.746', '-252.9242', '-72.76898', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 78, '1070.727', '-284.2663', '-72.68817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 79, '1072.046', '-311.1849', '-72.56207', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 80, '1053.559', '-317.8576', '-72.60872', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 81, '1033.109', '-300.2142', '-71.97886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 82, '996.1870', '-322.5443', '-66.97682', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 83, '988.1112', '-348.7142', '-55.44043', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 84, '988.6956', '-380.2867', '-50.14082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 85, '949.2391', '-372.7560', '-50.12433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 86, '945.5290', '-352.3690', '-50.18389', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 87, '924.2225', '-338.5798', '-49.55234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 88, '901.6393', '-319.0111', '-49.26011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 89, '897.5882', '-303.8908', '-46.28094', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 90, '893.1019', '-286.1003', '-45.94720', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 91, '890.0764', '-266.7756', '-45.43538', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 92, '918.1025', '-245.1806', '-46.55928', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 93, '948.0901', '-222.7645', '-46.55467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 94, '961.1744', '-219.4443', '-46.55466', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 95, '976.5450', '-231.1565', '-48.83212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 96, '989.7991', '-243.7112', '-46.40620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 97, '990.8004', '-256.7235', '-45.71144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 98, '973.3655', '-281.7761', '-45.60944', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 99, '975.9816', '-300.2042', '-45.56088', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 100, '999.8060', '-321.7702', '-44.88178', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 101, '1001.227', '-344.3694', '-41.84286', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 102, '1010.110', '-354.6602', '-40.65324', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 103, '1037.269', '-344.1738', '-38.49696', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 104, '1045.682', '-370.0918', '-36.26097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 105, '1049.818', '-393.4347', '-36.40392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12243, 106, '1056.210', '-424.1578', '-31.78930', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
DELETE FROM dbscripts_on_quest_end WHERE id = 12657;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12657,1,0,0,0,0,0,0,2000000037,0,0,0,0,0,0,0,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2465.472,-5567.304,372.1589,1.64061,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2486.715,-5598.662,372.1589,6.021386,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2455.585,-5618.318,372.1586,4.590216,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2434.517,-5588.561,372.1588,3.263766,''),
(12657,11,0,0,0,0,0,0,2000001059,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000037,2000001059);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000037,'%s calls upon the mighty armies of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,NULL),
(2000001059,'Armies of the Scourge, hear my call! The scarlet apocalypse has begun! Tear this land asunder and leave only death in your wake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,6,0,22,NULL);
DELETE FROM dbscripts_on_quest_end WHERE id = 10988;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10988,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'22924 - npc_flag removed'),
(10988,2,10,23036,17000,0,0,0,0,0,0,0,3021.95,5513.31,146.41,5.55244,'summon'),
(10988,4,0,0,0,0,0,0,2000001385,0,0,0,0,0,0,0,''),
(10988,7,0,0,0,0,0,0,2000000005,0,0,0,0,0,0,0,''),
(10988,8,25,1,0,23036,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(10988,12,3,0,700,23036,50,7,0,0,0,0,2972.54,5519.14,170.419,3.01223,'force buddy to move'),
(10988,13,3,0,0,0,0,0,0,0,0,0,0,0,0,4.87912,''),
(10988,14,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10988,17,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10988,17,9,8849,600,0,0,0,0,0,0,0,0,0,0,0,'resp o185523'),
(10988,18,0,0,0,0,0,0,2000000004,0,0,0,0,0,0,0,''),
(10988,22,0,0,0,0,0,0,2000000003,0,0,0,0,0,0,0,''),
(10988,28,0,0,0,0,0,0,2000000002,0,0,0,0,0,0,0,''),
(10988,36,0,0,0,0,0,0,2000000001,0,0,0,0,0,0,0,''),
(10988,43,0,0,0,0,0,0,2000000000,0,0,0,0,0,0,0,''),
(10988,48,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36604,''),
(10988,49,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added');
UPDATE quest_template SET CompleteScript = 10988 WHERE entry = 10988;
DELETE FROM db_script_string WHERE entry = 2000001385;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001385,'%s greets the sparrowhawk that helped locate the raven stones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,21,NULL);
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000000005,2000000003,2000000002,2000000001,2000000000);
UPDATE db_script_string SET emote = 4 WHERE entry = 2000000004;
UPDATE creature_template SET MovementType = 0, InhabitType = 5 WHERE entry = 22972;
UPDATE gameobject SET spawntimesecs  =  -320 WHERE id = 185541;
UPDATE creature SET spawntimesecs = 320 WHERE id = 22986;
UPDATE gameobject SET spawntimesecs  = 60, animprogress = 255 WHERE guid = 12451;
DELETE FROM dbscripts_on_quest_end WHERE id = 10964;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10964,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag removed'),
(10964,3,0,2,0,0,0,0,2000001386,0,0,0,0,0,0,0,''),
(10964,4,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'), 
(10964,8,0,0,0,0,0,0,2000000008,0,0,0,0,0,0,0,''),
(10964,11,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(10964,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0.911676,''),
(10964,12,0,2,0,0,0,0,2000001387,0,0,0,0,0,0,0,''),
(10964,15,0,0,0,0,0,0,2000000007,0,0,0,0,0,0,0,''),
(10964,17,3,0,700,0,0,0,0,0,0,0,7453,-3116.32,439.604,5,''),
(10964,19,3,0,0,0,0,0,0,0,0,0,7453,-3116.32,439.604,5.54,''),
(10964,22,0,0,0,0,0,0,2000000006,0,0,0,0,0,0,0,''),
(10964,22,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10964,24,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'22832 - npc_flag added'),
(10964,54,3,0,0,0,0,0,0,0,0,0,7459.48,-3123.03,438.398,5,''),
(10964,59,3,0,0,0,0,0,0,0,0,0,7459.48,-3123.03,438.398,5.51524,''),
(10964,64,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001386 AND 2000001387;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001386,'%s snaps up to a kneeling position, but seems as though he\'s somewhere else.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001387,'%s gets to his feet, beginning to recognize his surroundings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE db_script_string SET emote = 6 WHERE entry = 2000000008;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000007;
UPDATE quest_template SET NextQuestInChain = 10965, CompleteEmote = 0 WHERE entry =10964;
DELETE FROM creature_template_spells WHERE entry = 21316;
DELETE FROM dbscripts_on_event WHERE id = 13874;
INSERT INTO dbscripts_on_event VALUES
(13874,0,22,114,0x00 | 0x08,21316,77107,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77109,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77110,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77108,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77114,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77111,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77116,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77106,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77105,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77112,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77115,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77113,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77103,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,77102,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77104,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77121,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77120,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77119,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77117,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77118,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77129,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77128,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77122,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77131,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77130,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77125,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77134,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77133,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77123,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77127,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77126,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77124,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,77132,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,3,15,37134,0,21512,10,1 | 0x08,0,0,0,0,0,0,0,0,'force buddy to cast 37134');
DELETE FROM `creature` WHERE `guid` = 77135;
DELETE FROM `creature` WHERE `guid` = 77136;
DELETE FROM `creature` WHERE `guid` = 77137;
DELETE FROM `creature` WHERE `guid` = 77138;
DELETE FROM `creature` WHERE `guid` = 77139;
DELETE FROM `creature` WHERE `guid` = 77140;
DELETE FROM `creature` WHERE `guid` = 77381;
DELETE FROM `creature` WHERE `guid` = 77382;
DELETE FROM `creature` WHERE `guid` = 77383;
DELETE FROM `creature` WHERE `guid` = 77384;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(77102, 21316, 530, 1, 1, 0, 0, -3441.64, 2957.84, 171.954, 6.26573, 45, 0, 0, 6542, 0, 0, 0),
(77103, 21316, 530, 1, 1, 0, 0, -3441.33, 2950.2, 171.91, 0.017453, 45, 0, 0, 6542, 0, 0, 0),
(77104, 21316, 530, 1, 1, 0, 0, -3441.14, 2991.27, 171.996, 6.24828, 45, 0, 0, 6542, 0, 0, 0),
(77105, 21316, 530, 1, 1, 0, 0, -3449.39, 2975.36, 173.143, 6.24828, 45, 0, 0, 6542, 0, 0, 0),
(77106, 21316, 530, 1, 1, 0, 0, -3449.68, 2982.53, 173.187, 6.24828, 45, 0, 0, 6542, 0, 0, 0),
(77107, 21316, 530, 1, 1, 0, 0, -3458.95, 2950.18, 174.789, 0.017453, 45, 0, 0, 6542, 0, 0, 0),
(77108, 21316, 530, 1, 1, 0, 0, -3458.14, 2974.41, 174.509, 6.24828, 45, 0, 0, 6542, 0, 0, 0),
(77109, 21316, 530, 1, 1, 0, 0, -3458.59, 2958.16, 174.614, 0.017453, 45, 0, 0, 6542, 0, 0, 0),
(77110, 21316, 530, 1, 1, 0, 0, -3458.9, 2966.25, 174.628, 0.017453, 45, 0, 0, 6542, 0, 0, 0),
(77111, 21316, 530, 1, 1, 0, 0, -3458.27, 2991.92, 174.65, 6.23082, 45, 0, 0, 6542, 0, 0, 0),
(77112, 21316, 530, 1, 1, 0, 0, -3449.72, 2965.5, 173.193, 0.017453, 45, 0, 0, 6542, 0, 0, 0),
(77113, 21316, 530, 1, 1, 0, 0, -3450.33, 2950.32, 173.384, 0.017453, 45, 0, 0, 6542, 0, 0, 0),
(77114, 21316, 530, 1, 1, 0, 0, -3458.19, 2983.11, 174.517, 6.24828, 45, 0, 0, 6542, 0, 0, 0),
(77115, 21316, 530, 1, 1, 0, 0, -3449.67, 2957.66, 173.207, 6.07375, 45, 0, 0, 6542, 0, 0, 0),
(77116, 21316, 530, 1, 1, 0, 0, -3449.71, 2990.99, 173.288, 6.23082, 45, 0, 0, 6542, 0, 0, 0),
(77117, 21316, 530, 1, 1, 0, 0, -3424.51, 3007.88, 171.747, 4.46804, 45, 0, 0, 6542, 0, 0, 0),
(77118, 21316, 530, 1, 1, 0, 0, -3424.6, 3016.63, 173.075, 4.62512, 45, 0, 0, 6542, 0, 0, 0),
(77119, 21316, 530, 1, 1, 0, 0, -3416.22, 3007.46, 171.703, 4.5204, 45, 0, 0, 6542, 0, 0, 0),
(77120, 21316, 530, 1, 1, 0, 0, -3391.52, 3007.16, 171.641, 4.57276, 45, 0, 0, 6542, 0, 0, 0),
(77121, 21316, 530, 1, 1, 0, 0, -3375.01, 3005.98, 171.509, 4.55531, 45, 0, 0, 6542, 0, 0, 0),
(77122, 21316, 530, 1, 1, 0, 0, -3400.02, 3016.65, 173.047, 4.53786, 45, 0, 0, 6542, 0, 0, 0),
(77123, 21316, 530, 1, 1, 0, 0, -3392.15, 3025.3, 174.283, 4.67748, 45, 0, 0, 6542, 0, 0, 0),
(77124, 21316, 530, 1, 1, 0, 0, -3417.16, 3024.43, 174.2, 4.67748, 45, 0, 0, 6542, 0, 0, 0),
(77125, 21316, 530, 1, 1, 0, 0, -3374.85, 3015.46, 172.825, 4.60767, 45, 0, 0, 6542, 0, 0, 0),
(77126, 21316, 530, 1, 1, 0, 0, -3408.51, 3024.93, 174.274, 4.72984, 45, 0, 0, 6542, 0, 0, 0),
(77127, 21316, 530, 1, 1, 0, 0, -3400.35, 3024.85, 174.229, 4.76475, 45, 0, 0, 6542, 0, 0, 0),
(77128, 21316, 530, 1, 1, 0, 0, -3408.39, 3016.36, 173.003, 4.62512, 45, 0, 0, 6542, 0, 0, 0),
(77129, 21316, 530, 1, 1, 0, 0, -3416.84, 3016.68, 173.05, 4.62512, 45, 0, 0, 6542, 0, 0, 0),
(77130, 21316, 530, 1, 1, 0, 0, -3383.07, 3016.3, 172.995, 4.64258, 45, 0, 0, 6542, 0, 0, 0),
(77131, 21316, 530, 1, 1, 0, 0, -3391.69, 3016.44, 173.016, 4.55531, 45, 0, 0, 6542, 0, 0, 0),
(77132, 21316, 530, 1, 1, 0, 0, -3425.05, 3024.71, 174.285, 4.64258, 45, 0, 0, 6542, 0, 0, 0),
(77133, 21316, 530, 1, 1, 0, 0, -3383.72, 3025.14, 174.281, 4.69494, 45, 0, 0, 6542, 0, 0, 0),
(77134, 21316, 530, 1, 1, 0, 0, -3375.24, 3025.37, 174.228, 4.57276, 45, 0, 0, 6542, 0, 0, 0);
UPDATE creature_template SET InhabitType = 1 WHERE entry = 22181;
UPDATE  conditions SET value1 = 5202 WHERE condition_entry =2174;
REPLACE INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES (7348, 9619, 0, 2198); 
DELETE FROM conditions WHERE condition_entry = 2198;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (2198, 8, 9345, 0);
DELETE FROM gossip_menu WHERE entry = 8493; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8493, 10606, 0, 0),
(8493, 10855, 0, 2202),
(8493, 10854, 0, 411),
(8493, 10655, 0, 2201);
REPLACE INTO conditions (condition_entry, type, value1, value2) VALUES
(2199, 29, 762, 300),
(2201, -1, 410, 2200), 
(2200, 7, 762, 300),
(2202, -1, 410, 2199);
REPLACE INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8652, 10862, 0, 0),
(8652, 10863, 0, 1528);
DELETE FROM `creature` WHERE `guid` = 137953;
UPDATE creature SET spawntimesecs = 180, MovementType = 2 WHERE guid = 109531;
UPDATE creature_template SET MovementType = 2 WHERE entry = 36217;
DELETE FROM creature_movement_template WHERE entry = 36217;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(36217,1,1438.03,403.83,-85.2626,45000,0,0,0,0,0,0,0,0,0,3.12414,0,0),
(36217,2,1438.03,403.83,-85.2626,6000,3621701,0,0,0,0,0,0,0,0,3.12414,0,0),
(36217,3,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,0,4.67316,0,0),
(36217,4,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,0,3.97572,0,0),
(36217,5,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,0,3.23666,0,0),
(36217,6,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,0,2.48347,0,0),
(36217,7,1428.68,401,-85.2571,55000,3621702,0,0,0,0,0,0,0,0,1.86693,0,0),
(36217,8,1430.37,397.151,-85.2619,0,0,0,0,0,0,0,0,0,0,5.86461,0,0),
(36217,9,1432.92,395.72,-85.2653,0,0,0,0,0,0,0,0,0,0,0.314982,0,0),
(36217,10,1436.25,397.342,-85.2657,0,0,0,0,0,0,0,0,0,0,1.24254,0,0),
(36217,11,1438.01,400.654,-85.2645,0,0,0,0,0,0,0,0,0,0,1.58026,0,0),
(36217,12,1438.03,403.83,-85.2626,2000,0,0,0,0,0,0,0,0,0,1.72556,0,0),
(36217,13,1438.03,403.83,-85.2626,420000,0,0,0,0,0,0,0,0,0,3.12414,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3621701,3621702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3621701,2,0,0,0,0,0,0,2000001388,0,0,0,0,0,0,0,''),
(3621702,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3621702,4,0,0,0,0,0,0,2000001389,0,0,0,0,0,0,0,''),
(3621702,10,3,0,0,0,0,0,0,0,0,0,0,0,0,0.640137,''),
(3621702,11,0,0,0,0,0,0,2000001390,0,0,0,0,0,0,0,''),
(3621702,20,31,2055,20,0,0,0,0,0,0,0,0,0,0,0,''),
(3621702,21,3,0,0,2055,20,7,0,0,0,0,0,0,0,4.00321,''),
(3621702,22,0,0,0,2055,20,4,2000001391,0,0,0,0,0,0,0,'force 2055 to: say text'),
(3621702,32,0,0,0,2055,20,4,2000001392,0,0,0,0,0,0,0,'force 2055 to: say text'),
(3621702,38,0,0,0,0,0,0,2000001393,0,0,0,0,0,0,0,''),
(3621702,44,3,0,0,0,0,0,0,0,0,0,0,0,0,3.99929,''),
(3621702,46,0,0,0,0,0,0,2000001394,0,0,0,0,0,0,0,''),
(3621702,48,1,66,0,36213,109535,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3621702,50,3,0,0,2055,20,7,0,0,0,0,0,0,0,2.26893,''),
(3621702,50,3,0,0,36213,109535,7 | 0x10,0,0,0,0,1420.97,389.227,-84.9886,0.0620715,''),
(3621702,51,3,0,0,36213,109535,7 | 0x10,0,0,0,0,1422.92,387.966,-84.9914,5.27633,''),
(3621702,52,3,0,0,36213,109535,7 | 0x10,0,0,0,0,1422.9,384.706,-84.9962,4.3323,''),
(3621702,53,3,0,0,36213,109535,7 | 0x10,0,0,0,0,1420.35,382.272,-84.9962,3.85478,''),
(3621702,56,0,0,0,36213,109535,7 | 0x10,2000001395,0,0,0,0,0,0,0,'force 36213 to: say text'),
(3621702,63,3,0,0,36213,109535,7 | 0x10,0,0,0,0,1418.86,388.783,-84.9909,0.942079,''),
(3621702,72,3,0,0,36213,109535,7 | 0x10,0,0,0,0,0,0,0,0.942079,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001388 AND 2000001395;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001388,'I\'ve got my eye on you, Faranell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001389,'No abominations protecting you. No secrecy. No plotting in the dark.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001390,'If you so much as spit without my permission, this place shuts down. Forcefully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001391,'I assure you, overseer, the Royal Apothecary Society dearly wishes to make up for the tragic misguidance which ended so many lives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001392,'We will cause you no trouble. We seek only to continue our research in peace.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001393,'We\'ll see about that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001394,'Get that rotten nut to shut his trap!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000001395,'Shut your face, you gibbering idiot! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(109535, 36213, 0, 1, 1, 0, 0, 1418.86, 388.783, -84.9909, 0.942079, 180, 0, 0, 15952, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 77409;
DELETE FROM `creature` WHERE `guid` = 77410;
DELETE FROM `creature` WHERE `guid` = 127107;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(127107, 22332, 530, 1, 1, 0, 0, -4086.1, 298.374, 141.729, 2.51223, 5, 0, 0, 27000, 0, 0, 2),
(77409, 22332, 530, 1, 1, 0, 0, -4153.9, 228.013, 167.625, 2.51223, 5, 0, 0, 27000, 0, 0, 2),
(77410, 22332, 530, 1, 1, 0, 0, -4338.94, 379.093, 134.61, 2.51223, 5, 0, 0, 27000, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 127107;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(127107,1,-4086.1,298.374,141.729,0,2233201,0,0,0,0,0,0,0,0,2.51223,0,0),
(127107,2,-4110.571,308.0732,159.2874,0,2233202,0,0,0,0,0,0,0,0,0,0,0),
(127107,3,-4110.571,308.0732,159.2874,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,4,-4142.466,314.2244,157.704,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,5,-4157.188,327.1772,156.7874,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,6,-4163.87,333.6726,153.9818,0,2233203,0,0,0,0,0,0,0,0,0,0,0),
(127107,7,-4163.858,368.3685,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,8,-4182.261,374.9316,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,9,-4207.382,370.833,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,10,-4215.42,364.4926,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,11,-4229.564,331.4001,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,12,-4213.938,303.6982,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,13,-4184.994,306.4515,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,14,-4167.665,334.3888,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(127107,15,-4086.1,298.374,141.729,0,2233204,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM creature_movement WHERE id = 77409;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(77409,1,-4153.902,228.0131,167.6251,1000,2233201,0,0,0,0,0,0,0,0,2.51223,0,0),
(77409,2,-4159.241,240.4495,174.9831,0,2233202,0,0,0,0,0,0,0,0,0,0,0),
(77409,3,-4159.241,240.4495,174.9831,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,4,-4172.241,284.199,174.9831,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,5,-4184.007,304.7164,174.9831,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,6,-4197.631,309.5559,175.236,0,2233203,0,0,0,0,0,0,0,0,0,0,0),
(77409,7,-4216.679,321.5481,175.236,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,8,-4227.502,348.093,175.236,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,9,-4217.703,367.1157,175.236,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,10,-4190.344,372.9396,175.236,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,11,-4168.039,358.9861,175.236,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,12,-4167.604,331.7665,175.236,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77409,13,-4153.902,228.0131,167.6251,0,2233204,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM creature_movement WHERE id = 77410;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(77410,1,-4338.941,379.0929,134.6099,0,2233201,0,0,0,0,0,0,0,0,0,0,0),
(77410,2,-4317.738,364.9648,148.7292,0,2233202,0,0,0,0,0,0,0,0,0,0,0),
(77410,3,-4317.738,364.9648,148.7292,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,4,-4282.658,346.8867,170.3125,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,5,-4236.214,332.2209,170.3125,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,6,-4215.42,364.4926,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,7,-4207.382,370.833,161.6105,0,2233203,0,0,0,0,0,0,0,0,0,0,0),
(77410,8,-4182.261,374.9316,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,9,-4163.858,368.3685,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,10,-4167.665,334.3888,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,11,-4184.994,306.4515,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,12,-4213.938,303.6982,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,13,-4229.564,331.4001,161.6105,0,0,0,0,0,0,0,0,0,0,0,0,0),
(77410,14,-4317.738,364.9648,148.7292,0,2233204,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2233201 AND 2233204; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2233201,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2233202,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2233203,0,15,38906,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2233203,6,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''),
(2233203,7,15,38906,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2233203,12,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''),
(2233203,13,15,38906,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2233204,0,23,17188,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2233204,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_quest_start WHERE id = 10866;
INSERT INTO dbscripts_on_quest_start VALUES 
(10866,2,10,11980,300000,0,0,0,0,0,0,0,-4204.937,316.3974,122.5078,1.36908,'spawn Zuluhed'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4172.627,330.287,135.9577,2.86234,'dragonmaw elite #1'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4169.85,341.2979,135.9378,3.159046,'dragonmaw elite #2'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4167.831,353.6864,138.9584,2.897247,'dragonmaw elite #3'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4224.608,339.7754,135.5993,6.195919,'dragonmaw elite #4'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4222.075,348.025,136.5042,5.951573,'dragonmaw elite #5'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4221.03,356.1273,137.0673,5.864306,'dragonmaw elite #6'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4182.745,320.6509,135.6589,1.762783,'dragonmaw elite #7'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4191.668,314.6634,136.2213,2.076942,'dragonmaw elite #8'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4205.275,310.4961,137.9865,1.082104,'dragonmaw elite #9'),
(10866,21,26,0,0,11980,100,0,0,0,0,0,0,0,0,0,''),
(10866,68,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,127107,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,77409,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,77410,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,127107,7 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,70,32,0,0,22332,77409,7 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,77410,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 33600, movementType = 2 WHERE entry = 11980;
DELETE FROM creature_movement_template WHERE entry = 11980;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(11980,1,-4204.937,316.3974,122.5078,16000,1198001,0,0,0,0,0,0,0,0,1.36908,0,0),
(11980,2,-4204.937,316.3974,122.5078,300000,0,0,0,0,0,0,0,0,0,1.36908,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1198001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1198001,1,0,0,0,0,0,0,2000001396,0,0,0,0,0,0,0,''),
(1198001,7,0,0,0,0,0,0,2000001397,0,0,0,0,0,0,0,''),
(1198001,12,0,0,0,0,0,0,2000001398,0,0,0,0,0,0,0,''),
(1198001,15,15,32121,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(1198001,16,22,16,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001396 AND 2000001398;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001396,'Foolish mortals. Did you think that I would not strike you down for your transgressions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,5,NULL),
(2000001397,'Indeed, the time has come to end this charade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,22,NULL),
(2000001398,'Destroy them! Destroy them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,25,NULL);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (57697,21310,530,1,1,0,0,-3788.563,2597.473,92.70899,3.874631,300,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 57697;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(57697,1,-3788.563,2597.473,92.70899,1000,0,0,0,0,0,0,0,0,0,3.87,0,0),
(57697,2,-3788.563,2597.473,92.70899,300000,2131001,0,0,0,0,0,0,0,0,3.87,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (57881,21310,530,1,1,0,0,-3802.708,2594.564,92.70899,0.1919862,300,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 57881;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(57881,1,-3802.708,2594.564,92.70899,1000,0,0,0,0,0,0,0,0,0,0.19,0,0),
(57881,2,-3802.708,2594.564,92.70899,300000,2131001,0,0,0,0,0,0,0,0,0.19,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (57883,21310,530,1,1,0,0,-3794.094,2588.92,92.70899,5.166174,300,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 57883;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(57883,1,-3794.094,2588.92,92.70899,1000,0,0,0,0,0,0,0,0,0,5.166,0,0),
(57883,2,-3794.094,2588.92,92.70899,300000,2131001,0,0,0,0,0,0,0,0,5.166,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 122722;
DELETE FROM creature_movement WHERE id = 122722;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(122722,1,-3797.37,2603.23,92.709,1000,0,0,0,0,0,0,0,0,0,0.75,0,0),
(122722,2,-3797.37,2603.23,92.709,300000,2131001,0,0,0,0,0,0,0,0,0.75,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131001,0,31,21292,15,0,0,0,0,0,0,0,0,0,0,0,''),
(2131001,1,15,36558,0,21292,10,0x01,0,0,0,0,0,0,0,0,'cast 36558 on buddy');
UPDATE gameobject SET spawntimesecs = -60 WHERE id = 186315;
DELETE FROM dbscripts_on_event WHERE id = 15385;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15385,1,9,40451,60,0,0,0,0,0,0,0,0,0,0,0,''),
(15385,3,10,23768,60000,0,0,0,0,0,0,0,-3532.56,-4316.76,7.04,2.98,'spawn Lynn Hyal'),
(15385,3,10,23769,60000,0,0,0,0,0,0,0,-3533.17,-4318.34,7.05,2.51,'spawn Jimmy Hyal'),
(15385,6,0,0,0,23768,50,7,2000001399,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,11,0,0,0,23768,50,7,2000001400,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,16,0,0,0,23768,50,7,2000001401,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,24,0,0,0,23768,50,7,2000001402,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,30,3,0,0,23769,50,7,0,0,0,0,0,0,0,1.15404,''),
(15385,31,0,0,0,23769,50,7,2000001403,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,34,3,0,0,23768,50,7,0,0,0,0,0,0,0,4.3192,''),
(15385,35,28,8,0,23768,50,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(15385,36,0,0,0,23768,50,7,2000001404,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,39,8,23768,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001399 AND 2000001404;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001399,'James? James... No, you\'re not James, but I know who you are...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001400,'You\'re the one who tracked down the brutes who did this to us.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001401,'I tried so hard to tell Jim... to tell anyone... who was behind this, but I couldn\'t find a way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001402,'Thank you for helping us and for helping Jim. If you see him, tell him little Jimmy and I love him and that we\'re waiting for him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001403,'Mommy, when will we see Daddy again?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001404,'I don\'t know when we\'ll see Daddy again, Jimmy, but I know he loves you and he misses you very much.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(10109, 1020, 0, 1, 1, 0, 0, -3327.89, -1549.92, 10.1191, 0.204705, 300, 10, 0, 573, 0, 0, 1),
(10113, 1020, 0, 1, 1, 0, 0, -3437.04, -1405.65, 10.4727, 0.751912, 300, 10, 0, 573, 0, 0, 1),
(10148, 1020, 0, 1, 1, 0, 0, -3312.27, -1922.47, 34.4467, 1.65395, 300, 5, 0, 573, 0, 0, 1),
(10154, 1020, 0, 1, 1, 0, 0, -3316.31, -1607.73, 10.6575, 5.88926, 300, 10, 0, 573, 0, 0, 1),
(10181, 1020, 0, 1, 1, 0, 0, -3346.43, -1513.6, 9.55044, 3.68814, 300, 10, 0, 573, 0, 0, 1),
(10226, 1020, 0, 1, 1, 0, 0, -3493.08, -1246.5, 10.5789, 2.58045, 300, 5, 0, 573, 0, 0, 1),
(10251, 1020, 0, 1, 1, 0, 0, -3420.3, -1616.64, 10.3352, 0.329679, 300, 3, 0, 573, 0, 0, 1),
(10252, 1020, 0, 1, 1, 0, 0, -3456.24, -1464.93, 10.6347, 1.37608, 300, 10, 0, 573, 0, 0, 1),
(10278, 1020, 0, 1, 1, 0, 0, -3316.88, -1582.54, 9.27104, 6.22023, 300, 10, 0, 573, 0, 0, 1),
(10280, 1020, 0, 1, 1, 0, 0, -3425.11, -1480.43, 11.9405, 1.07831, 300, 10, 0, 573, 0, 0, 1),
(10284, 1020, 0, 1, 1, 0, 0, -3436.82, -1514.93, 11.9798, 4.91093, 300, 3, 0, 573, 0, 0, 1),
(10293, 1020, 0, 1, 1, 0, 0, -3308.28, -1692.74, 9.67704, 4.37479, 300, 10, 0, 573, 0, 0, 1),
(10305, 1020, 0, 1, 1, 0, 0, -3594.02, -1207.03, 11.646, 1.68555, 300, 5, 0, 573, 0, 0, 1),
(10426, 1020, 0, 1, 1, 0, 0, -3429.17, -1608.77, 10.382, 1.5708, 300, 3, 0, 573, 0, 0, 1),
(10487, 1020, 0, 1, 1, 0, 0, -3789.5, -1343.2, 25.8197, 3.00786, 300, 3, 0, 573, 0, 0, 1),
(10576, 1020, 0, 1, 1, 0, 0, -3639.27, -1350.64, 11.5035, 0.751346, 300, 10, 0, 573, 0, 0, 1),
(57886, 1020, 0, 1, 1, 0, 0, -3519.68, -1432.48, 9.37599, 5.95494, 300, 5, 0, 573, 0, 0, 1),
(57892, 1020, 0, 1, 1, 0, 0, -3578.58, -1273.26, 10.0837, 1.76994, 300, 5, 0, 573, 0, 0, 1),
(57908, 1020, 0, 1, 1, 0, 0, -3622.1, -1307.26, 10.9249, 5.82911, 300, 5, 0, 573, 0, 0, 1),
(57915, 1020, 0, 1, 1, 0, 0, -3537.81, -1386.58, 9.64602, 0.947744, 300, 10, 0, 573, 0, 0, 1),
(57922, 1020, 0, 1, 1, 0, 0, -3528.43, -1339.03, 10.396, 2.55542, 300, 10, 0, 573, 0, 0, 1),
(57925, 1020, 0, 1, 1, 0, 0, -3558.39, -1355.16, 9.57783, 0.220051, 300, 10, 0, 573, 0, 0, 1),
(57931, 1020, 0, 1, 1, 0, 0, -3478.34, -1388.82, 9.52102, 0.397022, 300, 10, 0, 573, 0, 0, 1),
(57945, 1020, 0, 1, 1, 0, 0, -3447.55, -1377.62, 9.64268, 1.39216, 300, 5, 0, 573, 0, 0, 1),
(111489, 1020, 0, 1, 1, 0, 0, -3424.44, -1395.02, 10.3222, 3.04482, 300, 10, 0, 573, 0, 0, 1),
(111490, 1020, 0, 1, 1, 0, 0, -3797.17, -1341.44, 25.3554, 0.232657, 300, 3, 0, 573, 0, 0, 1),
(111491, 1020, 0, 1, 1, 0, 0, -3773.13, -1320.33, 28.7508, 1.02502, 300, 3, 0, 573, 0, 0, 1),
(2975, 1021, 0, 1, 1, 0, 0, -3398.36, -1604.39, 10.0856, 3.86108, 300, 10, 0, 664, 0, 0, 1),
(3073, 1021, 0, 1, 1, 0, 0, -3687.45, -1324.83, 12.5067, 4.96978, 300, 10, 0, 664, 0, 0, 1),
(10074, 1021, 0, 1, 1, 0, 0, -3486.69, -1469.99, 9.27101, 0.094553, 300, 5, 0, 664, 0, 0, 1),
(10105, 1021, 0, 1, 1, 0, 0, -3502.58, -1472.69, 9.27101, 4.53466, 300, 5, 0, 664, 0, 0, 1),
(10204, 1021, 0, 1, 1, 0, 0, -3494.26, -1456.36, 10.146, 2.62402, 300, 5, 0, 664, 0, 0, 1),
(10238, 1021, 0, 1, 1, 0, 0, -3813.99, -1367.74, 26.58, 1.6676, 300, 5, 0, 664, 0, 0, 1),
(53615, 1021, 0, 1, 1, 0, 0, -3393.91, -1620.16, 9.58555, 5.98735, 300, 3, 0, 664, 0, 0, 1),
(111493, 1021, 0, 1, 1, 0, 0, -3372.72, -1624.83, 10.8356, 2.26398, 300, 10, 0, 664, 0, 0, 1),
(112307, 1021, 0, 1, 1, 0, 0, -3704.94, -1339.35, 17.6875, 4.55755, 300, 5, 0, 664, 0, 0, 1),
(112309, 1021, 0, 1, 1, 0, 0, -3679.07, -1342.2, 12.819, 4.53754, 300, 10, 0, 664, 0, 0, 1),
(112310, 1021, 0, 1, 1, 0, 0, -3362.33, -1638.55, 11.2151, 2.66446, 300, 10, 0, 664, 0, 0, 1),
(112312, 1021, 0, 1, 1, 0, 0, -3691.99, -1359.35, 19.319, 0.008749, 300, 10, 0, 664, 0, 0, 1),
(112314, 1021, 0, 1, 1, 0, 0, -3545.56, -1331.21, 10.271, 2.06434, 300, 10, 0, 664, 0, 0, 1),
(112315, 1021, 0, 1, 1, 0, 0, -3595.69, -1391.35, 10.1277, 2.45437, 300, 10, 0, 664, 0, 0, 1),
(112319, 1021, 0, 1, 1, 0, 0, -3591.38, -1378.98, 10.5027, 3.36285, 300, 10, 0, 664, 0, 0, 1),
(114727, 1021, 0, 1, 1, 0, 0, -3609.48, -1386.57, 10.4573, 5.92453, 300, 10, 0, 664, 0, 0, 1),
(10124, 1022, 0, 1, 1, 0, 0, -3480.99, -1880.51, 23.4294, 0.656766, 300, 5, 0, 734, 0, 0, 1),
(10133, 1022, 0, 1, 1, 0, 0, -3577.12, -1862.63, 33.4269, 4.73934, 300, 3, 0, 734, 0, 0, 1),
(10139, 1022, 0, 1, 1, 0, 0, -3551.23, -1813.87, 25.3162, 1.6862, 300, 3, 0, 734, 0, 0, 1),
(10151, 1022, 0, 1, 1, 0, 0, -3409.11, -1814.36, 17.5763, 6.00478, 300, 5, 0, 734, 0, 0, 1),
(10214, 1022, 0, 1, 1, 0, 0, -3511.91, -1849.37, 22.4388, 5.10703, 300, 10, 0, 734, 0, 0, 1),
(10241, 1022, 0, 1, 1, 0, 0, -3549.24, -1842.73, 23.6151, 3.20413, 300, 5, 0, 734, 0, 0, 1),
(10266, 1022, 0, 1, 1, 0, 0, -3351.6, -1813.42, 24.747, 2.67742, 300, 5, 0, 734, 0, 0, 1),
(114762, 1022, 0, 1, 1, 0, 0, -3510.5, -1874.02, 23.525, 0.612291, 300, 5, 0, 734, 0, 0, 1),
(114763, 1022, 0, 1, 1, 0, 0, -3484.29, -1684.83, 54.1485, 5.57613, 300, 5, 0, 734, 0, 0, 1),
(117248, 1022, 0, 1, 1, 0, 0, -3377.73, -1779.3, 33.4907, 6.22871, 300, 5, 0, 734, 0, 0, 1),
(118693, 1022, 0, 1, 1, 0, 0, -3362.59, -1866.05, 23.881, 3.56933, 300, 3, 0, 734, 0, 0, 1),
(118694, 1022, 0, 1, 1, 0, 0, -3554.14, -1746.71, 78.8366, 5.74131, 300, 5, 0, 734, 0, 0, 1),
(118695, 1022, 0, 1, 1, 0, 0, -3491.11, -1654.28, 62.576, 4.24776, 300, 3, 0, 734, 0, 0, 1),
(118696, 1022, 0, 1, 1, 0, 0, -3440.66, -1706.21, 57.0167, 2.98022, 300, 5, 0, 734, 0, 0, 1);
UPDATE  `creature` SET `spawntimesecs` = 300 WHERE `id` =1023;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(10134, 1353, 0, 1, 1, 0, 0, -3567.61, -1765.01, 80.6865, 5.82891, 300, 0, 0, 950, 0, 0, 0),
(9945, 5082, 0, 1, 1, 0, 0, -3849.96, -736.444, 8.66354, 1.37881, 300, 0, 0, 1003, 0, 0, 0),
(9944, 4963, 0, 1, 1, 0, 0, -3822.89, -827.898, 10.2984, 5.16617, 300, 0, 0, 1003, 0, 0, 0),
(9931, 1464, 0, 1, 1, 0, 0, -3827.93, -831.901, 10.0906, 0.401426, 300, 0, 0, 1003, 0, 0, 0);
UPDATE creature SET position_x = '-3284.095215', position_y = '-1019.165039', position_z = '9.145651', orientation = '2.879061' WHERE guid = '10322';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(10290, 1024, 0, 1, 1, 0, 0, -3251.78, -1209.42, 9.19991, 1.67665, 300, 10, 0, 494, 0, 0, 1),
(10300, 1024, 0, 1, 1, 0, 0, -3280.77, -1173.35, 9.11705, 0.793781, 300, 10, 0, 494, 0, 0, 1),
(10302, 1024, 0, 1, 1, 0, 0, -3282.06, -1245.29, 9.4277, 5.71129, 300, 10, 0, 494, 0, 0, 1),
(10307, 1024, 0, 1, 1, 0, 0, -3272.26, -1040.97, 9.43597, 4.67329, 300, 10, 0, 494, 0, 0, 1),
(10308, 1024, 0, 1, 1, 0, 0, -3221.05, -1035.13, 6.04052, 2.28184, 300, 10, 0, 494, 0, 0, 1),
(10313, 1024, 0, 1, 1, 0, 0, -3212.56, -1027.55, 8.52514, 2.22694, 300, 0, 0, 494, 0, 0, 0),
(10330, 1024, 0, 1, 1, 0, 0, -3215.16, -1012.35, 9.77514, 5.49631, 300, 0, 0, 494, 0, 0, 0),
(10347, 1024, 0, 1, 1, 0, 0, -3221.4, -1022.76, 7.77514, 0.62985, 300, 0, 0, 494, 0, 0, 0),
(10351, 1024, 0, 1, 1, 0, 0, -3238.57, -1005.42, 5.59601, 1.24559, 300, 10, 0, 494, 0, 0, 1),
(10360, 1024, 0, 1, 1, 0, 0, -3245.83, -1020.83, 8.65014, 0.178867, 300, 10, 0, 494, 0, 0, 1),
(10400, 1024, 0, 1, 1, 0, 0, -3284.94, -977.369, 9.77514, 0.692611, 300, 10, 0, 494, 0, 0, 1),
(10492, 1024, 0, 1, 1, 0, 0, -3203.43, -1153.68, 6.58752, 0.526661, 300, 10, 0, 494, 0, 0, 1),
(118697, 1024, 0, 1, 1, 0, 0, -3248.29, -1090.11, 6.52715, 6.18981, 300, 10, 0, 494, 0, 0, 1),
(118698, 1024, 0, 1, 1, 0, 0, -3257.93, -1159.55, 9.28688, 3.16613, 300, 10, 0, 494, 0, 0, 1),
(118699, 1024, 0, 1, 1, 0, 0, -3247.93, -947.564, 9.90014, 3.77443, 300, 10, 0, 494, 0, 0, 1),
(118700, 1024, 0, 1, 1, 0, 0, -3281.98, -936.932, 8.52514, 2.63218, 300, 0, 0, 494, 0, 0, 0),
(118701, 1024, 0, 1, 1, 0, 0, -3306.93, -948.141, 9.04199, 1.31119, 300, 10, 0, 494, 0, 0, 1),
(118702, 1024, 0, 1, 1, 0, 0, -3270.44, -968.283, 6.40014, 2.9249, 300, 10, 0, 494, 0, 0, 1),
(118703, 1024, 0, 1, 1, 0, 0, -3273.98, -1124.94, 9.14344, 3.61203, 300, 10, 0, 494, 0, 0, 1),
(118704, 1024, 0, 1, 1, 0, 0, -3244.29, -906.829, 4.09774, 3.83709, 300, 10, 0, 494, 0, 0, 1),
(118705, 1024, 0, 1, 1, 0, 0, -3314.26, -914.791, 2.90813, 3.87586, 300, 10, 0, 494, 0, 0, 1),
(118706, 1024, 0, 1, 1, 0, 0, -3283.66, -880.341, -11.4841, 4.83463, 300, 10, 0, 494, 0, 0, 1),
(118707, 1024, 0, 1, 1, 0, 0, -3213.06, -1177.98, 6.21252, 0.247256, 300, 10, 0, 494, 0, 0, 1),
(118708, 1024, 0, 1, 1, 0, 0, -3246.6, -842.02, -15.1982, 0.161731, 300, 10, 0, 494, 0, 0, 1),
(118709, 1024, 0, 1, 1, 0, 0, -3224.38, -894.487, -5.92772, 4.10566, 300, 10, 0, 494, 0, 0, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(9739, 2102, 0, 1, 1, 0, 0, -4065.71, -2451.51, 153.162, 1.9909, 300, 5, 0, 494, 0, 0, 1),
(9743, 2102, 0, 1, 1, 0, 0, -4244.62, -2342.75, 204.457, 1.07217, 300, 0, 0, 494, 0, 0, 0),
(9748, 2102, 0, 1, 1, 0, 0, -4218.48, -2352.51, 204.282, 0.57933, 300, 3, 0, 494, 0, 0, 1),
(9752, 2102, 0, 1, 1, 0, 0, -4236.09, -2348.67, 204.332, 2.55793, 300, 0, 0, 494, 0, 0, 0),
(9755, 2102, 0, 1, 1, 0, 0, -4231.12, -2358.6, 204.157, 3.87403, 300, 0, 0, 494, 0, 0, 0),
(9757, 2102, 0, 1, 1, 0, 0, -4238.02, -2382.77, 204.725, 4.71533, 300, 0, 0, 494, 0, 0, 0),
(9828, 2102, 0, 1, 1, 0, 0, -4355.33, -2421.2, 228.484, 1.04819, 300, 0, 0, 494, 0, 0, 0),
(9853, 2102, 0, 1, 1, 0, 0, -4197.09, -2368.17, 216.912, 4.41568, 300, 0, 0, 494, 0, 0, 0),
(10173, 2102, 0, 1, 1, 0, 0, -4207.18, -2366.54, 202.947, 1.50098, 300, 3, 0, 494, 0, 0, 1),
(10176, 2102, 0, 1, 1, 0, 0, -4310.64, -2519.36, 256.747, 5.8779, 300, 5, 0, 494, 0, 0, 1),
(10186, 2102, 0, 1, 1, 0, 0, -4277.4, -2404.28, 234.061, 6.13024, 300, 5, 0, 494, 0, 0, 1),
(10200, 2102, 0, 1, 1, 0, 0, -4270.37, -2456.72, 251.359, 5.69939, 300, 5, 0, 494, 0, 0, 1),
(10205, 2102, 0, 1, 1, 0, 0, -4272.12, -2340.12, 219.474, 3.99139, 300, 0, 0, 494, 0, 0, 0),
(10217, 2102, 0, 1, 1, 0, 0, -4229.39, -2376.94, 202.896, 4.7822, 300, 0, 0, 494, 0, 0, 0),
(10218, 2102, 0, 1, 1, 0, 0, -4425.6, -2427.09, 252.665, 0.981529, 300, 5, 0, 494, 0, 0, 1),
(118710, 2102, 0, 1, 1, 0, 0, -3980.46, -2358.27, 157.511, 3.90004, 300, 5, 0, 494, 0, 0, 1),
(118711, 2102, 0, 1, 1, 0, 0, -3966.17, -2396.23, 161.237, 3.28535, 300, 5, 0, 494, 0, 0, 1),
(9744, 2103, 0, 1, 1, 0, 0, -4239.4, -2369.76, 204.1, 3.99296, 300, 0, 0, 449, 0, 0, 0),
(9745, 2103, 0, 1, 1, 0, 0, -4248.17, -2372.45, 204.475, 0.711944, 300, 0, 0, 449, 0, 0, 0),
(9749, 2103, 0, 1, 1, 0, 0, -4275.35, -2370.03, 209.148, 1.33577, 300, 3, 0, 449, 0, 0, 1),
(9753, 2103, 0, 1, 1, 0, 0, -4346.12, -2429.92, 218.617, 3.72578, 300, 0, 0, 449, 0, 0, 0),
(9754, 2103, 0, 1, 1, 0, 0, -4304.44, -2384.4, 208.507, 4.99709, 300, 3, 0, 449, 0, 0, 1),
(9759, 2103, 0, 1, 1, 0, 0, -4323.74, -2412.63, 210.255, 1.68925, 300, 0, 0, 449, 0, 0, 2),
(118712, 2103, 0, 1, 1, 0, 0, -4325.79, -2442.2, 213.328, 0.007773, 300, 3, 0, 449, 0, 0, 1),
(118713, 2103, 0, 1, 1, 0, 0, -4340.38, -2460.58, 212.3, 1.53272, 300, 5, 0, 449, 0, 0, 1),
(118714, 2103, 0, 1, 1, 0, 0, -4194.16, -2364.87, 209.79, 1.5708, 300, 0, 0, 449, 0, 0, 0),
(119659, 2103, 0, 1, 1, 0, 0, -4188.47, -2382.44, 209.79, 3.71755, 300, 3, 0, 449, 0, 0, 1),
(119661, 2103, 0, 1, 1, 0, 0, -4207.41, -2384.15, 202.912, 3.75246, 300, 3, 0, 449, 0, 0, 1),
(122679, 2103, 0, 1, 1, 0, 0, -4265.13, -2360.76, 208.082, 5.19876, 300, 3, 0, 449, 0, 0, 1),
(123422, 2103, 0, 1, 1, 0, 0, -4255.28, -2352.59, 206.457, 0.306222, 300, 3, 0, 449, 0, 0, 1),
(123533, 2103, 0, 1, 1, 0, 0, -4268.95, -2428.3, 252.499, 0.095784, 300, 5, 0, 449, 0, 0, 1),
(123534, 2103, 0, 1, 1, 0, 0, -4339.67, -2506.99, 252.204, 1.27141, 300, 5, 0, 449, 0, 0, 1),
(123535, 2103, 0, 1, 1, 0, 0, -4268, -2486.26, 249.123, 0.027337, 300, 5, 0, 449, 0, 0, 1),
(123536, 2103, 0, 1, 1, 0, 0, -4245.94, -2454.22, 259.783, 0.633085, 300, 5, 0, 449, 0, 0, 1);
DELETE FROM `creature` WHERE `guid` = 43994;
DELETE FROM `creature` WHERE `guid` = 44028;
DELETE FROM `creature` WHERE `guid` = 43941;
DELETE FROM dbscripts_on_go_template_use WHERE id IN (177964);
UPDATE creature SET position_x = -807.327, position_y = 2739.82, position_z = 115.447, orientation = 4.184815, MovementType = 2, spawndist = 0  WHERE guid = 59167;
DELETE FROM creature_movement WHERE id = 59167;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16856;
DELETE FROM creature_movement_template WHERE entry = 16856;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(16856,1,-807.327,2739.82,115.447,60000,0,0,0,0,0,0,0,0,0,4.184815,0,0),(16856,2,-798.86,2719.21,111.628,0,0,0,0,0,0,0,0,0,0,5.48986,0,0),
(16856,3,-785.502,2706.21,107.293,0,0,0,0,0,0,0,0,0,0,5.46463,0,0),(16856,4,-785.546,2702.16,106.208,0,0,0,0,0,0,0,0,0,0,4.17889,0,0),
(16856,5,-787.652,2700.58,105.792,12000,1685601,0,0,0,0,0,0,0,0,3.3349,0,0),(16856,6,-791.771,2694.26,104.589,0,0,0,0,0,0,0,0,0,0,3.84755,0,0),
(16856,7,-793.482,2693.76,104.592,10000,1685602,0,0,0,0,0,0,0,0,3.13126,0,0),(16856,8,-794.696,2691.44,104.35,0,0,0,0,0,0,0,0,0,0,3.7887,0,0),
(16856,9,-797.951,2691.02,104.535,0,0,0,0,0,0,0,0,0,0,2.95382,0,0),(16856,10,-798.984,2693.63,104.891,0,0,0,0,0,0,0,0,0,0,1.64928,0,0),
(16856,11,-797.778,2697.53,105.43,12000,1685603,0,0,0,0,0,0,0,0,3.13126,0,0),(16856,12,-792.678,2705.64,106.948,0,0,0,0,0,0,0,0,0,0,1.6532,0,0),
(16856,13,-792.409,2708.46,107.754,0,0,0,0,0,0,0,0,0,0,2.0399,0,0),(16856,14,-794.25,2710.38,108.384,0,0,0,0,0,0,0,0,0,0,3.14966,0,0),
(16856,15,-799.924,2706.66,107.387,10000,1685602,0,0,0,0,0,0,0,0,4.01203,0,0),(16856,16,-807.92,2692.9,104.856,12000,1685604,0,0,0,0,0,0,0,0,3.58948,0,0),
(16856,17,-811.612,2690.9,104.36,0,0,0,0,0,0,0,0,0,0,3.33756,0,0),(16856,18,-814.837,2692.26,104.736,0,0,0,0,0,0,0,0,0,0,2.3079,0,0),
(16856,19,-814.33,2696.03,105.773,0,0,0,0,0,0,0,0,0,0,1.17929,0,0),(16856,20,-809.779,2704.45,107.63,10000,1685602,0,0,0,0,0,0,0,0,1.13373,0,0),
(16856,21,-801.425,2715.06,109.679,12000,1685605,0,0,0,0,0,0,0,0,0.966449,0,0),(16856,22,-801.359,2718.11,110.676,0,0,0,0,0,0,0,0,0,0,1.97582,0,0),
(16856,23,-804.433,2720.69,111.13,0,0,0,0,0,0,0,0,0,0,3.4021,0,0),(16856,24,-810.324,2717.67,110.329,10000,1685602,0,0,0,0,0,0,0,0,4.00607,0,0),
(16856,25,-814.433,2712.14,109.487,0,0,0,0,0,0,0,0,0,0,4.15529,0,0),(16856,26,-820.17,2701.35,107.506,12000,1685606,0,0,0,0,0,0,0,0,4.41448,0,0),
(16856,27,-823.067,2699.77,107.458,0,0,0,0,0,0,0,0,0,0,3.02746,0,0),(16856,28,-824.921,2701.38,107.939,0,0,0,0,0,0,0,0,0,0,2.213,0,0),
(16856,29,-824.739,2706.05,108.591,0,0,0,0,0,0,0,0,0,0,1.32158,0,0),(16856,30,-820.185,2714.8,110.056,12000,1685607,0,0,0,0,0,0,0,0,1.05768,0,0),
(16856,31,-814.476,2725.61,111.567,0,0,0,0,0,0,0,0,0,0,1.07653,0,0),(16856,32,-807.327,2739.82,115.447,0,0,0,0,0,0,0,0,0,0,1.07653,0,0),
(16856,33,-807.327,2739.82,115.447,300000,0,0,0,0,0,0,0,0,0,4.184815,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1685601 AND 1685607; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1685601,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.75976,''),
(1685601,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685601,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685601,7,9,66411,180,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1685602,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.76949,''),
(1685602,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685602,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685602,8,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685603,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.75976,''),
(1685603,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685603,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685603,7,9,19591,180,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1685604,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.75976,''),
(1685604,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685604,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685604,7,9,66412,180,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1685605,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.75976,''),
(1685605,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685605,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685605,7,9,66413,180,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1685606,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.75976,''),
(1685606,3,1,18,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685606,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685606,7,9,66414,180,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1685607,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.75976,''),
(1685607,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685607,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1685607,7,9,66410,180,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject');
UPDATE gameobject SET position_x = -789.0406, position_y = 2701.458, position_z = 105.9629, orientation = 6.161013, rotation2 = -0.06104851, rotation3 = 0.9981348, spawntimesecs = -180 WHERE guid = 66411;
UPDATE gameobject SET position_x = -798.7844, position_y = 2697.909, position_z = 105.5583, orientation = 0.9424766, rotation2 = 0.45399, rotation3 = 0.8910068, spawntimesecs = -180 WHERE guid = 19591;
UPDATE gameobject SET position_x = -802.7329, position_y = 2715.935, position_z = 109.8865, orientation = 1.431168, rotation2 = 0.6560583, rotation3 = 0.7547102, spawntimesecs = -180 WHERE guid = 66413;
UPDATE gameobject SET spawntimesecs = -180 WHERE guid IN (66414,66412,66410);
UPDATE `creature` SET `position_x`='-4896.550', `position_y`='-996.0091', `position_z`='504.0237', `orientation`='0.6960631' WHERE `id`=14363;
DELETE FROM `creature_movement` WHERE `id`=9598;
DELETE FROM `creature_movement_template` WHERE `entry`=14363;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(14363, 1, -4885.1, -986.439, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 2, -4888.36, -983.674, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 3, -4895.21, -985.143, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 4, -4904.65, -975.419, 501.451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 5, -4908.02, -960.372, 501.501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 6, -4880.32, -920.64, 501.575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 7, -4833.69, -904.184, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 8, -4797.36, -906.421, 497.922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 9, -4780.09, -905.943, 499.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 10, -4763.68, -907.05, 501.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 11, -4721.88, -922.563, 501.654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 12, -4691.69, -946.508, 501.667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 13, -4679.95, -969.957, 501.699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 14, -4650.12, -982.774, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 15, -4635.55, -960.367, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 16, -4651.67, -935.212, 501.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 17, -4687.28, -922.145, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 18, -4721.49, -905.883, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 19, -4757.44, -890.981, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 20, -4785.5, -884.328, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 21, -4815.04, -883.25, 501.668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 22, -4846.72, -886.106, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 23, -4886.97, -891.763, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 24, -4906.81, -884.844, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 25, -4929.05, -856.469, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 26, -4952.72, -869.076, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 27, -4988.78, -898.986, 501.636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 28, -5017.84, -932.51, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 29, -4985.22, -957.64, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 30, -4958.79, -941.614, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 31, -4947.84, -930.124, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 32, -4950.35, -921.719, 504.264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 33, -4961.11, -913.848, 503.835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 34, -4956.32, -904.182, 503.837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 35, -4950.29, -908.22, 503.836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 36, -4950.21, -918.283, 504.261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 37, -4942.2, -927.994, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 38, -4935.65, -936.283, 503.042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 39, -4931.63, -949.347, 501.623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 40, -4915.17, -957.814, 501.54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 41, -4906.88, -973.011, 501.453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 42, -4898.35, -983.751, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14363, 43, -4891.35, -992.121, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature` SET `position_x`='-4956.434', `position_y`='-906.7910', `position_z`='503.9225', `orientation`='3.836208' WHERE `id`=14365;
DELETE FROM `creature_movement` WHERE `id`=31;
DELETE FROM `creature_movement_template` WHERE `entry`=14365;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(14365, 1, -4963.37, -912.565, 503.835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 2, -4955.28, -916.448, 504.261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 3, -4944.97, -929.275, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 4, -4973.28, -956.894, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 5, -4992.38, -979.822, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 6, -4994.91, -996.21, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 7, -5007.27, -1025.46, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 8, -5014.62, -1054.75, 501.729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 9, -5016.1, -1099.32, 501.674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 10, -5011.86, -1112.88, 501.674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 11, -5007, -1116.34, 501.688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 12, -5003.02, -1142.08, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 13, -4998.46, -1179.69, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 14, -4982.61, -1226.39, 501.679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 15, -4944.21, -1255.97, 501.663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 16, -4925.57, -1250.11, 501.642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 17, -4923.1, -1236.33, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 18, -4945.75, -1214.15, 501.655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 19, -4969.67, -1187.34, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 20, -4991.06, -1151.82, 501.654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 21, -4997.53, -1115.96, 501.631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 22, -4994.73, -1091.5, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 23, -4992.42, -1058.82, 497.962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 24, -4992.42, -1058.82, 497.962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 25, -4989.01, -1039.41, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 26, -4983.64, -1019.23, 501.653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 27, -4962.49, -981.229, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 28, -4929.97, -957.357, 501.587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 29, -4915.2, -960.314, 501.489, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 30, -4904.06, -976.867, 501.441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 31, -4896.08, -987.446, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 32, -4896.05, -992.92, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 33, -4889.55, -993.43, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 34, -4884.64, -985.495, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 35, -4888.78, -984.35, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 36, -4894.86, -986.589, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 37, -4899.7, -980.864, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 38, -4904.34, -974.595, 501.451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 39, -4914.21, -959.891, 501.528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 40, -4935.67, -935.819, 503.068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 41, -4949.08, -919.802, 504.264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14365, 42, -4959.34, -908.134, 503.836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature` SET `position_x`='-4824.520', `position_y`='-1168.4150', `position_z`='502.2844', `orientation`='0.05302288' WHERE `id`=14367;
DELETE FROM `creature_movement` WHERE `id`=52901;
DELETE FROM `creature_movement_template` WHERE `entry`=14367;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(14367, 1, -4789.09, -1166.54, 502.226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 2, -4758.69, -1159.64, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 3, -4730.11, -1194.25, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 4, -4719.52, -1218.35, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 5, -4740.72, -1244.53, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 6, -4724.86, -1277.61, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 7, -4694.16, -1265.89, 501.993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 8, -4682.36, -1259.11, 501.993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 9, -4664.03, -1243.12, 501.993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 10, -4643.82, -1214.24, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 11, -4647.42, -1189.83, 501.654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 12, -4683.81, -1195.8, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 13, -4708.73, -1200.77, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 14, -4732.16, -1176.46, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 15, -4747.5, -1152.99, 502.206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 16, -4734.04, -1106.04, 502.218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 17, -4738.37, -1074.07, 502.242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 18, -4762.8, -1042.37, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 19, -4788.04, -1030.89, 502.208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 20, -4816.68, -1027.28, 502.196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 21, -4826.92, -1014.34, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 22, -4838.75, -977.666, 501.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 23, -4850.54, -941.909, 501.505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 24, -4866.63, -946.191, 501.452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 25, -4883.96, -942.708, 501.418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 26, -4908.41, -967.712, 501.466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 27, -4901.27, -979.616, 503.047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 28, -4894.48, -986.556, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 29, -4886.83, -988.181, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 30, -4894.63, -994.628, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 31, -4895.39, -986.91, 503.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 32, -4905.21, -975.294, 501.446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 33, -4915.48, -959.214, 501.536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 34, -4936.56, -935.246, 503.136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 35, -4951.3, -916.994, 504.265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 36, -4951.81, -906.419, 503.836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 37, -4960.94, -907.578, 503.836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 38, -4962.91, -915.038, 503.835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 39, -4952.6, -917.665, 504.263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 40, -4938.36, -936.406, 503.153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 41, -4927.75, -951.206, 501.602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 42, -4937.9, -980.271, 501.477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 43, -4943.05, -998.155, 501.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 44, -4943.61, -1014.52, 501.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 45, -4948.51, -1023.71, 501.462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 46, -4924.3, -1036.79, 501.722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 47, -4885.19, -1057.84, 502.147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 48, -4873.42, -1069.64, 502.202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 49, -4872.61, -1106.75, 502.199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 50, -4858.56, -1134.95, 502.188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 51, -4842.92, -1155.27, 502.117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14367, 52, -4820.9, -1169.3, 502.201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature` SET `position_x`='-4756.994', `position_y`='-1154.7340', `position_z`='502.2956', `orientation`='3.701010' WHERE `id`=9099;
DELETE FROM `creature_movement` WHERE `id`=9620;
DELETE FROM `creature_movement_template` WHERE `entry`=9099;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(9099, 1, -4774.4, -1165.63, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 2, -4790.14, -1168.66, 502.225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 3, -4815.05, -1167.4, 502.205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 4, -4836.73, -1156.9, 502.167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 5, -4854.08, -1143.53, 502.207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 6, -4867.31, -1122.64, 502.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 7, -4873.94, -1090.73, 502.214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 8, -4868.06, -1085.28, 502.205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 9, -4829.62, -1085.28, 502.208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 10, -4812.88, -1065.88, 502.197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 11, -4810.18, -1032.05, 502.198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 12, -4797.53, -1025.65, 502.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 13, -4764.07, -1041.11, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 14, -4737.23, -1073.92, 502.24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 15, -4732.99, -1106.31, 502.219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 16, -4741.4, -1139.08, 502.201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9099, 17, -4756.99, -1154.73, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature` SET `position_x` = 9714.28, `position_y` = 2525.74, `position_z` = 1335.68, `MovementType` = 2 WHERE `id` = 3562;
DELETE FROM `creature_movement` WHERE `id`=46624;
DELETE FROM `creature_movement_template` WHERE `entry`=3562;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(3562, 1, 9714.28, 2525.74, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62839, 0, 0),
(3562, 2, 9713.46, 2512.01, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55378, 0, 0),
(3562, 3, 9711.52, 2503.04, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4988, 0, 0),
(3562, 4, 9709.47, 2496.49, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.3378, 0, 0),
(3562, 5, 9706.49, 2490.08, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.0904, 0, 0),
(3562, 6, 9694.12, 2475.3, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.58265, 0, 0),
(3562, 7, 9759.32, 2422.58, 1334.2, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.56279, 0, 0),
(3562, 8, 9694.6, 2474.08, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.838842, 0, 0),
(3562, 9, 9701.33, 2483.24, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.94487, 0, 0),
(3562, 10, 9709.32, 2496.27, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.13729, 0, 0),
(3562, 11, 9712.42, 2503.97, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.31165, 0, 0),
(3562, 12, 9714.24, 2525.53, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.66115, 0, 0),
(3562, 13, 9713.11, 2536.39, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.69257, 0, 0),
(3562, 14, 9711.25, 2544.71, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79075, 0, 0),
(3562, 15, 9708.32, 2554.05, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.01851, 0, 0),
(3562, 16, 9705.03, 2560.33, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04993, 0, 0),
(3562, 17, 9695.88, 2570.58, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.1049, 0, 0),
(3562, 18, 9692.09, 2574.66, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.734384, 0, 0),
(3562, 19, 9751.39, 2628.27, 1334.11, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.93882, 0, 0),
(3562, 20, 9692.33, 2575.49, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.38788, 0, 0),
(3562, 21, 9698.79, 2567.37, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.38395, 0, 0),
(3562, 22, 9703.6, 2561.01, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.36039, 0, 0),
(3562, 23, 9707.97, 2555.02, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.03367, 0, 0),
(3562, 24, 9712.32, 2542.42, 1335.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.82554, 0, 0),
(3562, 25, 9714.03, 2525.69, 1335.68, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.007114, 0, 0),
(3562, 26, 9928.18, 2531.65, 1319.27, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.14085, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(123546, 5184, 1, 4679, 0, -3101.22, -3211.59, 33.9662, 0.0698132, 300, 1, 0, 1403, 0, 0, 1),
(123547, 5184, 1, 4679, 0, -3093.75, -3214.66, 33.9708, 1.74533, 300, 1, 0, 1403, 0, 0, 1),
(123541, 5184, 1, 4679, 0, -2889.71, -3318.75, 31.274, 2.39833, 300, 5, 0, 1403, 0, 0, 2),
(123598, 5184, 1, 4679, 0, -3006.09, -3244.07, 34.716, 0.455059, 300, 1, 0, 1403, 0, 0, 1),
(123734, 5184, 1, 4679, 0, -2997.98, -3249.89, 34.8045, 1.69892, 300, 1, 0, 1403, 0, 0, 1),
(123542, 5184, 1, 4679, 0, -2905.88, -3424.56, 40.1311, 4.76348, 300, 5, 0, 1403, 0, 0, 2),
(123735, 5184, 1, 4679, 0, -2856.69, -3412.81, 36.3208, 5.95157, 300, 0, 0, 1403, 0, 0, 0),
(123543, 5184, 1, 4679, 0, -2884.23, -3421.98, 75.2258, 2.9732, 300, 0, 0, 1403, 0, 0, 2),
(123544, 5184, 1, 4679, 0, -2868.66, -3423.49, 40.1313, 4.78095, 300, 5, 0, 1403, 0, 0, 2),
(123776, 5184, 1, 4679, 0, -2905.62, -3437.11, 39.3894, 5.75959, 300, 0, 0, 1403, 0, 0, 0);
DELETE FROM `creature_movement` WHERE `id` in (123541,123542,123543,33991);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(123541, 1, -2905.65, -3304.1, 31.7724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 2, -2915.96, -3292.2, 31.9173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 3, -2930.35, -3268.02, 31.5423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 4, -2941.83, -3258.18, 31.2724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 5, -2948.27, -3251.28, 31.4309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 6, -2976.8, -3242.84, 32.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 7, -2997.71, -3237.13, 33.8325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 8, -2998.63, -3245, 34.1282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 9, -3000.84, -3235.77, 33.9202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 10, -3016.9, -3227.34, 34.0288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 11, -3045.64, -3214.41, 33.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 12, -3059.45, -3209.59, 33.3593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 13, -3078.85, -3208.81, 33.1585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 14, -3094.93, -3210.5, 33.4332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 15, -3078.85, -3208.81, 33.1585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 16, -3059.45, -3209.59, 33.3593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 17, -3045.64, -3214.41, 33.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 18, -3016.9, -3227.34, 34.0288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 19, -3000.84, -3235.77, 33.9202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 20, -2998.63, -3245, 34.1282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 21, -2997.71, -3237.13, 33.8325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 22, -2976.8, -3242.84, 32.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 23, -2948.27, -3251.28, 31.4309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 24, -2941.83, -3258.18, 31.2724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 25, -2930.35, -3268.02, 31.5423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 26, -2915.96, -3292.2, 31.9173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 27, -2905.65, -3304.1, 31.7724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123541, 28, -2886.7, -3315.86, 31.4119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 1, -2905.33, -3435.32, 39.9603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 2, -2899.78, -3442.42, 40.0815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 3, -2893.39, -3445.42, 39.9894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 4, -2885.39, -3445.89, 40.0582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 5, -2876.09, -3441.79, 39.9866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 6, -2870.97, -3435.44, 40.0388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 7, -2869.72, -3429.29, 40.048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 8, -2871.23, -3419.87, 40.048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 9, -2877.86, -3412.21, 40.0421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 10, -2888.74, -3410.04, 40.0411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 11, -2897.26, -3412.51, 40.0645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 12, -2903.72, -3418.18, 40.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123542, 13, -2906.33, -3425.31, 40.0162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 1, -2890.39, -3420.94, 75.1425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 2, -2890.35, -3425.14, 74.3119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 3, -2887.17, -3431.19, 70.0409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 4, -2883.4, -3432.5, 69.1105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 5, -2881.35, -3427.86, 67.6302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 6, -2883.9, -3421.66, 64.3272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 7, -2888.06, -3420.14, 64.0562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 8, -2894.28, -3421.78, 62.4692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 9, -2895.35, -3432.72, 59.3089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 10, -2889.06, -3436.17, 55.7653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 11, -2879.7, -3430.78, 53.6327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 12, -2879.49, -3424.34, 50.3253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 13, -2888.42, -3417, 47.5808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 14, -2895.88, -3422.28, 44.8244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 15, -2898.24, -3429.32, 42.8046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 16, -2894.99, -3433.55, 40.0947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 17, -2890.38, -3434.49, 40.0525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 18, -2885.45, -3429.55, 40.051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 19, -2874.39, -3424.7, 40.0474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 20, -2885.45, -3429.55, 40.051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 21, -2890.38, -3434.49, 40.0525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 22, -2894.99, -3433.55, 40.0947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 23, -2898.24, -3429.32, 42.8046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 24, -2895.88, -3422.28, 44.8244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 25, -2888.42, -3417, 47.5808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 26, -2879.49, -3424.34, 50.448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 27, -2879.7, -3430.78, 53.6327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 28, -2889.06, -3436.17, 56.1428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 29, -2895.35, -3432.72, 59.3089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 30, -2894.28, -3421.78, 62.4692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 31, -2888.06, -3420.14, 64.0562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 32, -2883.9, -3421.66, 64.3272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 33, -2881.35, -3427.86, 67.6302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 34, -2883.4, -3432.5, 69.1105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 35, -2886.81, -3431.86, 69.5594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 36, -2890.35, -3425.14, 74.3304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 37, -2890.39, -3420.94, 75.1425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123543, 38, -2883.52, -3422.51, 75.1425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 1, -2867.94, -3434.01, 40.0662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 2, -2874, -3444.11, 39.9267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 3, -2885.61, -3450.19, 40.0759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 4, -2895.7, -3447.91, 39.9305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 5, -2905.37, -3441.59, 40.1455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 6, -2908.77, -3434.29, 39.9113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 7, -2909.65, -3426.5, 39.9707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 8, -2906.83, -3414.64, 40.0206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 9, -2900.9, -3409.26, 40.0702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 10, -2894.01, -3406.29, 40.1231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 11, -2885.17, -3406.13, 40.0328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 12, -2876.82, -3409.82, 39.9989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 13, -2870.93, -3415.96, 40.048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123544, 14, -2866.85, -3424.35, 40.048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(123777, 5085, 1, 2978, 0, -3485.74, -4108.76, 17.1038, 0.366519, 300, 0, 0, 1163, 0, 0, 0),
(123778, 5085, 1, 2979, 0, -3468.55, -4112.46, 17.0568, 1.08875, 300, 1, 0, 1163, 0, 0, 1),
(123779, 5085, 1, 2979, 0, -3476.12, -4103.31, 17.1079, 5.11381, 300, 0, 0, 1163, 0, 0, 0),
(123780, 5085, 1, 2978, 0, -3475.72, -4115.67, 17.0591, 3.08986, 300, 1, 0, 1163, 0, 0, 1),
(123781, 5085, 1, 2978, 0, -3461.71, -4119.67, 17.0988, 5.20108, 300, 0, 0, 1163, 0, 0, 0),
(27868, 5085, 1, 2978, 0, -3459.89, -4116.34, 17.0534, 1.17356, 300, 0, 0, 1163, 0, 0, 2),
(123782, 5085, 1, 2980, 0, -3440.11, -4138.46, 11.1666, 0.882563, 300, 1, 0, 1163, 0, 0, 1),
(123783, 5085, 1, 2980, 0, -3457.82, -4147.65, 11.2355, 5.84685, 300, 0, 0, 1163, 0, 0, 0),
(27878, 5085, 1, 2979, 0, -3463.65, -4129.84, 17.0534, 5.08662, 300, 6, 0, 1163, 0, 0, 2),
(123784, 5085, 1, 2979, 0, -3482.88, -4101.59, 52.2821, 2.37365, 300, 0, 0, 1163, 0, 0, 0),
(27926, 5085, 1, 2977, 0, -3472.25, -4116.79, 17.0592, 2.71277, 300, 0, 0, 1163, 0, 0, 2),
(123785, 5085, 1, 2979, 0, -3465.87, -4107.04, 52.2821, 0.10472, 300, 0, 0, 1163, 0, 0, 0),
(123786, 5085, 1, 2977, 0, -3479.84, -4116.58, 30.9032, 1.06465, 300, 0, 0, 1163, 0, 0, 0),
(123855, 5085, 1, 2979, 0, -3464.86, -4126.06, 17.0534, 1.96764, 300, 1, 0, 1163, 0, 0, 1);
DELETE FROM `creature_movement` WHERE `id` in (27868,27878,27926);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(27868, 1, -3456.43, -4108.1, 16.9424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 2, -3458.7, -4098.34, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 3, -3465.68, -4090.36, 16.9788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 4, -3478.25, -4088.28, 16.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 5, -3490.27, -4094.47, 16.8542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 6, -3495.15, -4109.32, 16.8756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 7, -3489.86, -4121.28, 17.0226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 8, -3477.16, -4127.29, 16.9396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 9, -3462.6, -4124.12, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 10, -3455.44, -4131.08, 15.0387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 11, -3462.6, -4124.12, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 12, -3477.16, -4127.29, 16.9396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 13, -3489.86, -4121.28, 17.0226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 14, -3495.15, -4109.32, 16.8756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 15, -3490.27, -4094.47, 16.8542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 16, -3478.25, -4088.28, 16.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 17, -3465.68, -4090.36, 16.9788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 18, -3458.7, -4098.34, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 19, -3456.43, -4108.1, 16.9424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27868, 20, -3459.41, -4117.53, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 1, -3458.16, -4143.81, 11.8071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 2, -3450.98, -4148.42, 10.8626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 3, -3443.45, -4156.07, 9.98545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 4, -3431.46, -4163.49, 10.0899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 5, -3429.47, -4166.15, 10.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 6, -3421.27, -4160.12, 10.6505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 7, -3436.64, -4150.45, 10.4937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 8, -3442.77, -4137.02, 11.2354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 9, -3457.49, -4124.17, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 10, -3442.71, -4136.46, 11.2354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 11, -3436.64, -4150.45, 10.4937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 12, -3421.27, -4160.12, 10.6505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 13, -3429.47, -4166.15, 10.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 14, -3431.46, -4163.49, 10.0899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 15, -3443.45, -4156.07, 9.98545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 16, -3450.98, -4148.42, 10.8626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 17, -3458.16, -4143.81, 11.8071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27878, 18, -3463.68, -4130.47, 16.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 1, -3480.22, -4113.15, 16.9679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 2, -3484.66, -4105.17, 16.9701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 3, -3479.77, -4099.19, 20.0923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 4, -3472.44, -4098.7, 21.741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 5, -3466.22, -4103.63, 24.5093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 6, -3465.94, -4110.2, 25.0951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 7, -3470.24, -4114.96, 28.2878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 8, -3477.9, -4115.34, 30.6802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 9, -3482.96, -4109.79, 33.4121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 10, -3482.23, -4104.05, 36.2262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 11, -3476.56, -4099.87, 37.1277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 12, -3471.05, -4100.69, 40.5204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 13, -3468.14, -4109.4, 41.4897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 14, -3473.42, -4114.33, 45.0202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 15, -3479.8, -4112.71, 46.476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 16, -3471.02, -4102.62, 52.0591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 17, -3479.8, -4112.71, 46.476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 18, -3473.43, -4114.34, 45.0552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 19, -3468.16, -4109.42, 41.4948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 20, -3471.05, -4100.69, 40.5204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 21, -3476.56, -4099.87, 37.1277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 22, -3482.23, -4104.05, 36.2262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 23, -3482.96, -4109.79, 33.4121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 24, -3477.9, -4115.34, 30.6802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 25, -3470.24, -4114.96, 28.2852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 26, -3466.51, -4110.83, 25.3157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 27, -3466.22, -4103.63, 24.5093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 28, -3472.44, -4098.7, 21.741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 29, -3479.77, -4099.19, 20.0923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 30, -3484.66, -4105.17, 16.9701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 31, -3480.22, -4113.15, 16.9679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27926, 32, -3472.33, -4115.87, 16.9662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 92270;
DELETE FROM `creature` WHERE `guid` = 92269;
DELETE FROM `creature` WHERE `guid` = 80813;
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (92263,20883,552,3,1,0,0,148.05,146.994,20.8982,6.26573,7200,0,0,39123,12620,0,0),
(92257,20881,552,3,1,0,0,148.05,146.994,20.8982,6.26573,7200,0,0,48902,0,0,0);
DELETE FROM pool_template WHERE entry = 14646;
INSERT INTO pool_template (entry, max_limit, description) VALUES (14646,1,'Arcatraz - Unbound Devastator/Spiteful Temptress - Pool'); 
DELETE FROM pool_creature WHERE pool_entry = 14646;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES (92263,14646,0,'Arcatraz - Spiteful Temptress - Pool'),
(92257,14646,0,'Arcatraz - Unbound Devastator - Pool');
UPDATE `creature` SET `position_x`='-4925.116', `position_y`='-947.6945', `position_z`='501.6491', `orientation`='4.042188' WHERE `id`=5109;
DELETE FROM `creature_movement` WHERE `id`=9377;
DELETE FROM `creature_movement_template` WHERE `entry`=5109;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(5109, 1, '-4940.067', '-966.5563', '501.5916', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 2, '-4956.591', '-978.8500', '501.6491', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 3, '-4966.608', '-974.9324', '502.7796', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 4, '-4977.690', '-967.0145', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 5, '-4978.871', '-957.0950', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 6, '-4966.549', '-946.7832', '501.6595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 7, '-4946.386', '-929.8782', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 8, '-4924.840', '-913.5948', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 9, '-4904.366', '-898.4344', '501.6594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 10, '-4898.426', '-902.3857', '501.6593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 11, '-4891.908', '-916.8919', '501.6311', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 12, '-4902.026', '-933.6296', '501.5292', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5109, 13, '-4925.541', '-947.7893', '501.6206', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1217901','12179','6','0','75','0','0','0','0','0','11','21327','0','2','1','-748','0','0','0','0','0','0','Tortured Sentinel - Cast Hive Ashi Drone on death'),     
('1217801','12178','2','0','100','0','25','0','0','0','11','23381','0','1','0','0','0','0','0','0','0','0','Tortured Druid - Cast Healing Touch When Below 25% HP'),
('1217802','12178','0','0','100','1','0','13200','29300','31400','11','23380','1','0','0','0','0','0','0','0','0','0','Tortured Druid - Cast Moonfire'),
('1217803','12178','6','0','75','0','0','0','0','0','11','21327','0','2','1','-748','0','0','0','0','0','0', 'Tortured Druid - Cast Hive Ashi Drone on death'),
('151101','1511','2','0','100','0','10','0','0','0','11','8599','0','1','1','-106','0','0','0','0','0','0','Enraged Silverback Gorilla - Cast Enrage at 10% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry = 1511;
REPLACE INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-748','%s\'s death cry has stirred the nearby silithid hive.','0','2','0','Tortured Druid/Sentinel death','0');
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('63903','639','2','0','100','2','75','51','0','0','1','-171','0','0','0','0','0','0','0','0','0','0','Edwin VanCleef - Yell at 75% HP'),
('2548701','25487','6','0','100','0','0','0','0','0','11','46221','6','7','0','0','0','0','0','0','0','0','Wooly Rhino Matriarch - Cast Animal Blood on Death'),
('2548801','25488','6','0','100','0','0','0','0','0','11','46221','6','7','0','0','0','0','0','0','0','0','Wooly Rhino Calf - Cast Animal Blood on Death'),
('2568002','25680','6','0','100','0','0','0','0','0','11','46221','6','7','0','0','0','0','0','0','0','0','Marsh Caribou - Cast Animal Blood on Death'),
('2582901','25829','6','0','100','0','0','0','0','0','11','46221','6','7','0','0','0','0','0','0','0','0','Marsh Fawn - Cast Animal Blood on Death');
UPDATE creature_template SET AIName = 'EventAI' WHERE Entry in (25829,25487,25488);
DELETE FROM dbscripts_on_quest_start WHERE id = 1064 AND delay = 3;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1064, 3, 15, 6657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE quest_template SET OfferRewardText = 'You\'ve found even more beached creatures, $N?  Sea turtles were commonly found frolicking along the base of Nordrassil before it was destroyed.  With the birth of Teldrassil, however, these creatures have been seen in ever decreasing numbers.  Some, as we have discovered, end their lives here for some unknown reason.$B$BYour aid will perhaps unlock the mystery before us.  Please accept this in exchange for the remains you have provided for our study.' WHERE entry = 4727;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 154;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(53598, 5595, 0, 1, 1, 0, 0, -4992.17, -1155.41, 501.743, 3.96066, 300, 0, 0, 15952, 0, 0, 2),
(9415, 5595, 0, 1, 1, 0, 0, -4800.57, -1027.36, 502.289, 6.1208, 300, 0, 0, 15952, 0, 0, 2),
(9676, 5595, 0, 1, 1, 0, 0, -4721.12, -1265.6, 501.743, 0.756095, 300, 0, 0, 15952, 0, 0, 2),
(53597, 5595, 0, 1, 1, 0, 0, -4635.69, -997.489, 501.743, 0.90164, 300, 0, 0, 15952, 0, 0, 2),
(9604, 5595, 0, 1, 1, 0, 0, -4771.91, -1021.36, 502.296, 1.19378, 300, 0, 0, 15952, 0, 0, 2),
(9370, 5595, 0, 1, 1, 0, 0, -4958.85, -997.529, 501.572, 0.977868, 300, 0, 0, 15952, 0, 0, 2),
(8264, 5595, 0, 1, 1, 0, 0, -5050.71, -810.209, 495.211, 1.36172, 300, 0, 1, 15952, 0, 0, 2),
(32, 5595, 0, 1, 1, 0, 0, -4902.16, -895.619, 501.743, 5.23599, 300, 0, 1, 15952, 0, 0, 2),
(9300, 5595, 0, 1, 1, 0, 0, -4986.55, -963.816, 501.743, 5.70723, 300, 0, 0, 15952, 0, 0, 2),
(9583, 5595, 0, 1, 1, 0, 0, -5003.92, -1117.33, 501.758, 0.722695, 300, 0, 0, 15952, 0, 0, 2),
(9374, 5595, 0, 1, 1, 0, 0, -4883.04, -1115.6, 502.296, 3.16733, 300, 0, 0, 15952, 0, 0, 2),
(9626, 5595, 0, 1, 1, 0, 0, -4874.09, -1090.3, 502.297, 4.76729, 300, 0, 1, 15952, 0, 0, 2);
DELETE FROM `creature_movement` WHERE `id` in (53598,53597,9415,9676,9604,8264,32,9300,9583,9374,9626,9370);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(53598, 1, -5007.49, -1171.79, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 2, -5008.71, -1185.93, 501.662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 3, -4998.2, -1206.62, 501.677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 4, -4984.83, -1224.77, 501.679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 5, -4963.3, -1244.97, 501.673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 6, -4941.09, -1251.62, 501.648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 7, -4927.95, -1242.19, 501.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 8, -4928.53, -1229.49, 501.649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 9, -4943.52, -1216.12, 501.648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 10, -4952.01, -1195.8, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 11, -4965.61, -1189.14, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 12, -4981.28, -1171.39, 501.654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53598, 13, -4992.6, -1155.35, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 1, -4894.08, -1115.88, 501.793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 2, -4906.62, -1118.98, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 3, -4917.98, -1125.18, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 4, -4921.55, -1132.52, 501.607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 5, -4923.34, -1144.43, 501.442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 6, -4928.31, -1159, 501.499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 7, -4932.61, -1173.35, 501.61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 8, -4938.12, -1183.53, 501.706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 9, -4948.81, -1191.51, 501.659, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.78266, 0, 0),
(9374, 10, -4938.76, -1183.05, 501.712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 11, -4932.52, -1170.77, 501.594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 12, -4928.32, -1153.06, 501.463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 13, -4925.35, -1140.76, 501.372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 14, -4922.71, -1131.44, 501.63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 15, -4913.5, -1121.1, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 16, -4900.86, -1117.31, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9374, 17, -4883.25, -1115.64, 502.197, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0945663, 0, 0),
(9583, 1, -4997.04, -1111.26, 501.67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 2, -4994.56, -1083.68, 498.832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 3, -4991.82, -1055.73, 497.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 4, -4986.59, -1034.18, 501.652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 5, -4972.98, -994.642, 501.652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 6, -4954.18, -966.574, 501.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 7, -4931.06, -943.376, 501.642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 8, -4896.67, -918.985, 501.627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 9, -4859.07, -906.035, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 10, -4827.86, -903.486, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 11, -4806, -905.001, 497.946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 12, -4778.71, -906.377, 500.008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 13, -4766.74, -906.063, 501.628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 14, -4753.26, -910.083, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 15, -4747.04, -905.021, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 16, -4748.27, -895.659, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 17, -4773.68, -886.522, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 18, -4799.89, -879.746, 501.67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 19, -4830.93, -880.582, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 20, -4859.37, -884.32, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 21, -4900.4, -897.681, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 22, -4928.52, -913.578, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 23, -4964.31, -943.604, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 24, -4982.34, -966.815, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 25, -4995.4, -992.496, 501.662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 26, -5006.11, -1016.34, 501.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 27, -5010.34, -1035.03, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 28, -5016.31, -1067.13, 501.743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 29, -5017.3, -1096.13, 501.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 30, -5014.16, -1111.45, 501.673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9583, 31, -5004.41, -1115.42, 501.673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 1, -4986.6, -963.481, 501.659, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.63717, 0, 0),
(9300, 2, -4997.78, -956.213, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 3, -5011.69, -939.202, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 4, -5011.28, -923.054, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 5, -4982.62, -898.723, 501.604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 6, -4979.97, -889.479, 501.626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 7, -4979.97, -889.479, 501.626, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.30383, 0, 0),
(9300, 8, -4981.97, -898.924, 501.601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 9, -5007.11, -919.845, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 10, -5013.24, -937.799, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9300, 11, -5000.37, -953.101, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, -4902.17, -895.577, 501.659, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.12251, 0, 0),
(32, 2, -4908.3, -879.565, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 3, -4921.32, -862.378, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 4, -4932.79, -858.55, 501.663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 5, -4963.47, -883.806, 501.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 6, -4973.36, -884.493, 501.622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 7, -4973.36, -884.493, 501.622, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.19912, 0, 0),
(32, 8, -4964.55, -881.769, 501.619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 9, -4940.62, -860.947, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 10, -4923.31, -864.123, 501.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 11, -4908.67, -880.635, 501.66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 1, -5045.77, -786.93, 495.213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 2, -5061.85, -752.707, 481.81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 3, -5097.77, -740.238, 468.657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 4, -5133.37, -741.218, 459.395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 5, -5166.31, -739.154, 450.904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 6, -5187.3, -733.224, 447.448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 7, -5203.36, -699.626, 438.401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 8, -5218.09, -666.434, 430.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 9, -5228.6, -633.119, 421.741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 10, -5237.81, -599.45, 413.697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 11, -5241.63, -566.617, 403.431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 12, -5243.02, -532.779, 391.099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 13, -5256.58, -498.865, 386.234, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95108, 0, 0),
(8264, 14, -5243.38, -533.154, 391.233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 15, -5242.36, -566.693, 403.372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 16, -5238.35, -599.817, 413.756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 17, -5229.09, -633.276, 421.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 18, -5218.85, -666.73, 430.022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 19, -5204.01, -699.496, 438.332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 20, -5188.98, -733.135, 447.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 21, -5166.57, -740.942, 450.802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 22, -5133.43, -742.411, 459.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 23, -5100.03, -742.159, 467.96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 24, -5066.89, -749.795, 479.032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 25, -5054.69, -766.578, 488.909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 26, -5050.71, -799.88, 495.213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 27, -5050.17, -811.264, 495.252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 28, -5045.45, -815.564, 495.252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 29, -5050.71, -810.209, 495.252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8264, 30, -5050.71, -810.209, 495.252, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72984, 0, 0),
(9370, 1, -4942.37, -973.067, 501.552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 2, -4922.72, -954.752, 501.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 3, -4896.28, -936.781, 501.492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 4, -4872, -926.028, 501.515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 5, -4872, -926.028, 501.515, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59538, 0, 0),
(9370, 6, -4905.08, -941.83, 501.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 7, -4929.3, -961.502, 501.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 8, -4958.95, -997.889, 501.481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9370, 9, -4958.95, -997.889, 501.481, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.977384, 0, 0),
(9604, 1, -4767.07, -1009.13, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 2, -4759.09, -994.437, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 3, -4746.5, -986.728, 501.532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 4, -4727.25, -986.336, 501.472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 5, -4709.64, -986.935, 501.645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 6, -4696.71, -982.79, 501.696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 7, -4686.29, -974.548, 501.655, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.669095, 0, 0),
(9604, 8, -4701.53, -986.745, 501.671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 9, -4718.94, -986.955, 501.504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 10, -4743.44, -985.075, 501.433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 11, -4759.75, -995.001, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 12, -4765.6, -1007.7, 501.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9604, 13, -4771.83, -1021.21, 502.212, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.2805, 0, 0),
(53597, 1, -4621.84, -979.981, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 2, -4632.92, -958.165, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 3, -4645.34, -941.041, 501.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 4, -4660.01, -925.555, 501.657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 5, -4687.63, -903.888, 501.672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 6, -4703.02, -913.822, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 7, -4707.87, -930.553, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 8, -4697.94, -943.916, 501.67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 9, -4687.49, -966.483, 501.683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 10, -4672.09, -983.1, 501.684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 11, -4654.32, -995.633, 501.639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53597, 12, -4635.4, -998.03, 501.653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 1, -4708.46, -1253.66, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 2, -4698.78, -1235.55, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 3, -4685.85, -1223.88, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 4, -4669.44, -1218.95, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 5, -4655.98, -1205.7, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 6, -4667.16, -1192.65, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 7, -4679.89, -1193.85, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 8, -4695.92, -1199.87, 501.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 9, -4712.36, -1205.44, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 10, -4720.56, -1213.53, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 11, -4733.09, -1230.5, 501.656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 12, -4738.72, -1248.32, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 13, -4732.38, -1261.15, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9676, 14, -4721.19, -1265.53, 501.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 1, -4783.11, -1030.22, 502.209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 2, -4764.9, -1039.78, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 3, -4746.89, -1056.77, 502.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 4, -4734.42, -1080.38, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 5, -4732.4, -1105.07, 502.219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 6, -4738.65, -1131.43, 502.209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 7, -4747.61, -1146.23, 502.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 8, -4760.85, -1144.42, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 9, -4770.22, -1134.05, 499.982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 10, -4785.5, -1120.53, 498.806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 11, -4792.58, -1112.71, 498.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 12, -4792.65, -1105.18, 498.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 13, -4803.73, -1091.77, 499.438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 14, -4813.4, -1079, 502.219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 15, -4812.58, -1064.78, 502.198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 16, -4810.21, -1046.02, 502.197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 17, -4809.49, -1036.15, 502.205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9415, 18, -4800.31, -1026.91, 502.206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 1, -4873.17, -1107.08, 502.199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 2, -4866.71, -1125.4, 502.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 3, -4855.07, -1143.8, 502.194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 4, -4836.42, -1159.58, 502.193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 5, -4814.89, -1167.75, 502.205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 6, -4790.18, -1167.8, 502.226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 7, -4765.06, -1160.06, 502.187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 8, -4763.54, -1152.73, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 9, -4778.48, -1131.89, 498.808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 10, -4795, -1115.89, 498.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 11, -4804.1, -1112.75, 498.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 12, -4807.45, -1107.7, 498.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 13, -4808.89, -1101.97, 498.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 14, -4822.94, -1086.68, 502.216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 15, -4833.82, -1085.09, 502.204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 16, -4856.7, -1084.21, 502.192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 17, -4866.9, -1084.16, 502.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9626, 18, -4874.19, -1090.36, 502.214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1686303', '16863', '6', '0', '100', '0', '0', '0', '0', '0', '11', '37689', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Deranged Helboar - Cast Tell dog I just died! on Death');
UPDATE creature SET position_x = 1017.95, position_y = -2224.33, position_z = 93.08, orientation = 4.70, MovementType = 2, spawndist = 5 WHERE guid = 52959;
UPDATE creature SET position_x = 1017.95, position_y = -2224.33, position_z = 93.08, orientation = 4.70, MovementType = 0, spawndist = 0 WHERE guid = 52960;
DELETE FROM creature_movement WHERE id = 52959;
UPDATE creature_template SET MovementType = 2 WHERE entry = 14908;
DELETE FROM creature_movement_template WHERE entry = 14908;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(14908,1,1022.235779,-2235.107910,93.311417,0,0,0,0,0,0,0,0,0,0,5.050608,0,0),
(14908,2,1023.366699,-2238.182373,92.374435,0,0,0,0,0,0,0,0,0,0,4.901490,0,0),
(14908,3,1024.204590,-2243.961182,92.469681,0,0,0,0,0,0,0,0,0,0,3.932313,0,0),
(14908,4,1022.052673,-2244.862549,92.338455,0,0,0,0,0,0,0,0,0,0,2.761287,0,0),
(14908,5,1020.207947,-2242.918213,92.232147,8000,1490801,0,0,0,0,0,0,0,0,1.911485,0,0), 
(14908,6,1034.187012,-2250.560059,92.865570,6000,1490802,0,0,0,0,0,0,0,0,5.877740,0,0),
(14908,7,1033.848511,-2258.611084,93.633789,0,0,0,0,0,0,0,0,0,0,5.175600,0,0),
(14908,8,1037.684692,-2262.024658,93.814468,0,0,0,0,0,0,0,0,0,0,5.099416,0,0),
(14908,9,1036.964111,-2269.702637,93.755440,0,0,0,0,0,0,0,0,0,0,5.317762,0,0),
(14908,10,1042.000977,-2273.459717,93.693169,5000,1490807,0,0,0,0,0,0,0,0,5.027948,0,0),
(14908,11,1042.695801,-2275.516846,93.578140,0,0,0,0,0,0,0,0,0,0,5.481912,0,0),
(14908,12,1046.523682,-2274.459717,93.604500,0,0,0,0,0,0,0,0,0,0,0.547255,0,0),
(14908,13,1050.259277,-2270.443359,93.498596,0,0,0,0,0,0,0,0,0,0,1.132377,0,0),
(14908,14,1049.739624,-2266.861816,93.347488,0,0,0,0,0,0,0,0,0,0,2.032443,0,0),
(14908,15,1048.046997,-2263.529297,93.224899,0,0,0,0,0,0,0,0,0,0,2.443207,0,0),
(14908,16,1041.046753,-2258.765625,93.452538,0,0,0,0,0,0,0,0,0,0,2.118837,0,0),
(14908,17,1039.138672,-2253.676270,92.961128,6000,1490808,0,0,0,0,0,0,0,0,1.470883,0,0),
(14908,18,1032.798584,-2253.547119,93.363281,0,0,0,0,0,0,0,0,0,0,3.619733,0,0),
(14908,19,1025.832764,-2258.538330,93.164093,0,0,0,0,0,0,0,0,0,0,4.158517,0,0),
(14908,20,1021.936951,-2266.235352,92.830612,0,0,0,0,0,0,0,0,0,0,4.826887,0,0),
(14908,21,1022.811462,-2272.140137,92.661667,0,0,0,0,0,0,0,0,0,0,5.267497,0,0),
(14908,22,1027.020386,-2277.889648,92.670853,0,0,0,0,0,0,0,0,0,0,5.707319,0,0),
(14908,23,1036.561890,-2280.122803,93.119659,0,0,0,0,0,0,0,0,0,0,0.098003,0,0),
(14908,24,1046.664185,-2275.731445,93.535553,0,0,0,0,0,0,0,0,0,0,0.818999,0,0),
(14908,25,1049.609863,-2269.771484,93.550903,0,0,0,0,0,0,0,0,0,0,1.455172,0,0),
(14908,26,1045.756592,-2261.030762,93.252167,0,0,0,0,0,0,0,0,0,0,2.531954,0,0),
(14908,27,1038.298706,-2254.306641,93.103928,6000,1490803,0,0,0,0,0,0,0,0,1.990029,0,0),
(14908,28,1028.886841,-2245.043701,92.417068,4000,1490804,0,0,0,0,0,0,0,0,2.057572,0,0),
(14908,29,1030.948975,-2242.987793,92.263474,0,0,0,0,0,0,0,0,0,0,0.737318,0,0),
(14908,30,1030.990967,-2246.370117,92.489189,0,0,0,0,0,0,0,0,0,0,4.676095,0,0),
(14908,31,1026.534058,-2244.682861,92.417534,5000,1490805,0,0,0,0,0,0,0,0,1.920917,0,0),
(14908,32,1023.985229,-2246.925537,92.415733,0,0,0,0,0,0,0,0,0,0,3.545906,0,0),
(14908,33,1022.480835,-2246.017822,92.334770,0,0,0,0,0,0,0,0,0,0,2.334821,0,0),
(14908,34,1020.937195,-2242.871338,92.286667,0,0,0,0,0,0,0,0,0,0,2.005739,0,0),
(14908,35,1022.749268,-2244.529053,92.396469,0,0,0,0,0,0,0,0,0,0,5.986138,0,0),
(14908,36,1024.250366,-2241.753418,92.434258,0,0,0,0,0,0,0,0,0,0,1.313017,0,0),
(14908,37,1023.625366,-2237.151495557,92.379318,0,0,0,0,0,0,0,0,0,0,1.831380,0,0),
(14908,38,1019.266907,-2227.937500,93.207352,0,0,0,0,0,0,0,0,0,0,2.381159,0,0),
(14908,39,1014.191467,-2225.346436,93.037804,5000,1490809,0,0,0,0,0,0,0,0,2.842187,0,0),
(14908,40,1017.351685,-2224.140381,93.069107,180000,1490806,0,0,0,0,0,0,0,0,5.143410,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1490801 AND 1490809; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490801,1,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490801,4,0,0,0,0,0,0,2000001405,0,0,0,0,0,0,0,''),
(1490801,7,0,0,0,0,0,0,2000001406,0,0,0,0,0,0,0,''),
(1490802,4,0,0,0,0,0,0,2000001407,0,0,0,0,0,0,0,''),
(1490802,5,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490803,1,0,0,0,0,0,0,2000001410,0,0,0,0,0,0,0,''),
(1490803,2,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490803,6,0,0,0,0,0,0,2000001411,0,0,0,0,0,0,0,''),
(1490804,0,20,0,0,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1490804,1,25,1,0,14909,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(1490804,2,3,0,0,14909,50,7,0,0,0,0,1021.28,-2233.42,93.33,5.05,'force buddy to move'),
(1490804,6,0,0,0,14909,50,7,2000001412,0,0,0,0,0,0,0,'force buddy to: say text'),
(1490804,9,0,0,0,0,0,0,2000001414,0,0,0,0,0,0,0,''),
(1490804,10,25,0,0,14909,50,7,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490804,12,3,0,0,14909,50,7,0,0,0,0,1013.24,-2221.47,92.9837,2.50,'force buddy to move'),
(1490804,17,3,0,0,14909,50,7,0,0,0,0,1017.95,-2224.33,93.08,4.70,'force buddy to move'),
(1490804,20,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490805,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490806,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490806,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490806,2,20,1,5,14909,50,7,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490806,180,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1490807,4,0,0,0,0,0,0,2000001408,0,0,0,0,0,0,0,''),
(1490808,5,0,0,0,0,0,0,2000001409,0,0,0,0,0,0,0,''),
(1490809,4,0,0,0,0,0,0,2000001413,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001405 AND 2000001414;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000001405,'I am going to practice and become a warrior like my father!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001406,'Now to find an unsuspecting Harpy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001407,'There\'s one! For the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001408,'Take that you mangy Harpy! Hyaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001409,'You can\'t get away from a warrior of the Horde! Take that! And that!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001410,'Now go back home where you belong!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001411,'Aaahhh... Another glorious victory for The Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001412,'Mogg, get inside. It is not safe out there while your father is gone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001413,'When is pappa comming back from the fights in Warsong? It has been so long...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001414,'Yes right away momma!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
UPDATE creature_template SET UnitFlags = UnitFlags | 512 WHERE entry = 1200;
UPDATE creature SET spawntimesecs = 240 WHERE guid = 3238;
UPDATE creature SET spawntimesecs = 180 WHERE guid =92167;
DELETE FROM creature_linking WHERE guid IN (57881,57883,57697,122772);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(122772, 92415, 144),
(57881, 92415, 144),
(57883, 92415, 144),
(57697, 92415, 144);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(33931, 3396, 1, 1, 1, 0, 0, -1167.06, -2042.27, 92.2584, 0.481288, 300, 0, 0, 449, 0, 0, 2);
UPDATE creature_template SET MovementType = 2 WHERE entry = 3396;
DELETE FROM creature_movement_template WHERE entry = 3396;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(3396,1,-1145.94,-2025.81,91.8127,0,0,0,0,0,0,0,0,0,0,0.535909,0,0),
(3396,2,-1109.87,-1999.72,86.8538,0,0,0,0,0,0,0,0,0,0,0.681207,0,0),
(3396,3,-1068.51,-1962.03,89.5984,0,0,0,0,0,0,0,0,0,0,0.783309,0,0),
(3396,4,-1050.84,-1946.6,92.1747,0,0,0,0,0,0,0,0,0,0,0.696915,0,0),
(3396,5,-1028.03,-1936.14,90.9833,0,0,0,0,0,0,0,0,0,0,0.147922,0,0),
(3396,6,-1000.62,-1947.3,91.8085,0,0,0,0,0,0,0,0,0,0,5.83578,0,0),
(3396,7,-989.498,-1965.68,91.4196,0,0,0,0,0,0,0,0,0,0,5.82007,0,0),
(3396,8,-975.014,-1989.78,90.3225,0,0,0,0,0,0,0,0,0,0,5.58052,0,0),
(3396,9,-947.048,-2017.7,85.9028,0,0,0,0,0,0,0,0,0,0,6.01485,0,0),
(3396,10,-913.754,-2023.23,84.7262,0,0,0,0,0,0,0,0,0,0,5.92295,0,0),
(3396,11,-896.969,-2035.67,81.834,0,0,0,0,0,0,0,0,0,0,5.23573,0,0),
(3396,12,-888.286,-2053.13,81.0782,10000,0,0,0,0,0,0,0,0,0,4.9687,0,0),
(3396,13,-881.169,-2066.39,82.8913,0,0,0,0,0,0,0,0,0,0,4.49276,0,0),
(3396,14,-896.265,-2085.67,86.5982,0,0,0,0,0,0,0,0,0,0,3.74663,0,0),
(3396,15,-919.527,-2102.03,86.1471,0,0,0,0,0,0,0,0,0,0,3.56128,0,0),
(3396,16,-938.943,-2103.84,85.2055,0,0,0,0,0,0,0,0,0,0,3.27697,0,0),
(3396,17,-977.091,-2112.99,82.8457,0,0,0,0,0,0,0,0,0,0,3.62647,0,0),
(3396,18,-996.166,-2129.23,84.339,0,0,0,0,0,0,0,0,0,0,4.14876,0,0),
(3396,19,-1028.04,-2167.41,84.444,0,0,0,0,0,0,0,0,0,0,4.02231,0,0),
(3396,20,-1052.2,-2223.07,84.7852,0,0,0,0,0,0,0,0,0,0,4.21473,0,0),
(3396,21,-1061.31,-2265.33,88.5924,0,0,0,0,0,0,0,0,0,0,4.13776,0,0),
(3396,22,-1079.04,-2292.94,91.0261,0,0,0,0,0,0,0,0,0,0,3.3288,0,0),
(3396,23,-1117.46,-2298.19,90.3452,0,0,0,0,0,0,0,0,0,0,2.68164,0,0),
(3396,24,-1137.66,-2278.07,86.5678,0,0,0,0,0,0,0,0,0,0,1.97006,0,0),
(3396,25,-1155.54,-2237.66,85.6437,0,0,0,0,0,0,0,0,0,0,1.86796,0,0),
(3396,26,-1191.45,-2177.87,90.7451,0,0,0,0,0,0,0,0,0,0,2.20961,0,0),
(3396,27,-1217.34,-2140.72,92.6515,0,0,0,0,0,0,0,0,0,0,2.0761,0,0),
(3396,28,-1228.96,-2114.76,92.2165,0,0,0,0,0,0,0,0,0,0,1.41793,0,0),
(3396,29,-1218.87,-2087.08,91.4139,0,0,0,0,0,0,0,0,0,0,1.11634,0,0),
(3396,30,-1202.37,-2062.52,93.2409,0,0,0,0,0,0,0,0,0,0,0.729139,0,0),
(3396,31,-1166.88,-2042.01,92.1803,0,0,0,0,0,0,0,0,0,0,0.552424,0,0);
INSERT IGNORE INTO `reference_loot_template` VALUES ('32754', '32753', '0', '1', '1', '1', '0');
UPDATE `creature_template` SET `GossipMenuId` = 10060 WHERE `Entry` =31306;
DELETE FROM `gossip_menu` WHERE `entry`=10060;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (10060, 13978);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10060;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (10060, 0, 0, 'Let\'s kill this... thing... and get this over with.', 1, 1, -1, 0, 0, 0, '');
UPDATE `gossip_menu_option` SET `option_text` = 'I am embarassed to say it, Nork, but my deserter has gone missing.' WHERE `menu_id` =9184 AND `id` =0;
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123831,21303,552,3,1,0,0,197.795,-86.5381,-10.1018,5.90384,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (80814,21304,552,3,1,0,0,197.795,-86.5381,-10.1018,5.90384,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123828,21303,552,3,1,0,0,206.3423,-98.27836,-10.02623,2.6529,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123842,21304,552,3,1,0,0,206.3423,-98.27836,-10.02623,2.6529,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123829,21303,552,3,1,0,0,213.6261,-161.4238,-10.0346,2.740167,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123841,21304,552,3,1,0,0,213.6261,-161.4238,-10.0346,2.740167,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123830,21303,552,3,1,0,0,273.4377,-64.06999,22.45336,22.45336,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123840,21304,552,3,1,0,0,273.4377,-64.06999,22.45336,22.45336,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123834,21303,552,3,1,0,0,270.8191,-45.47938,22.4534,4.468043,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123839,21304,552,3,1,0,0,270.8191,-45.47938,22.4534,4.468043,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123837,21303,552,3,1,0,0,226.1842,-162.0961,-10.03523,0.3490658,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123838,21304,552,3,1,0,0,226.1842,-162.0961,-10.03523,0.3490658,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123836,21303,552,3,1,0,0,245.9822,-194.6173,-10.02174,0.8726646,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (125697,21304,552,3,1,0,0,245.9822,-194.6173,-10.02174,0.8726646,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123833,21303,552,3,1,0,0,285.4156,127.1274,22.29513,4.694936,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (125641,21304,552,3,1,0,0,285.4156,127.1274,22.29513,4.694936,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123835,21303,552,3,1,0,0,253.6892,139.8683,22.41207,2.303835,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (125421,21304,552,3,1,0,0,253.6892,139.8683,22.41207,2.303835,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123832,21303,552,3,1,0,0,253.9511,155.0008,22.38065,4.939282,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (125111,21304,552,3,1,0,0,253.9511,155.0008,22.38065,4.939282,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123896,21303,552,3,1,0,0,298.8479,151.7484,22.31051,5.707227,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124678,21304,552,3,1,0,0,298.8479,151.7484,22.31051,5.707227,7200,0,0,20283,0,0,0); 
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123897,21303,552,3,1,0,0,306.976,141.112,22.2286,3.0285,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124677,21304,552,3,1,0,0,306.976,141.112,22.2286,3.0285,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (123898,21303,552,3,1,0,0,272.5006,-40.19271,22.50897,2.9147,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124676,21304,552,3,1,0,0,272.5006,-40.19271,22.50897,2.9147,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124193,21303,552,3,1,0,0,232.7542,-198.1254,-10.02295,5.61996,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124675,21304,552,3,1,0,0,232.7542,-198.1254,-10.02295,5.61996,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124194,21303,552,3,1,0,0,262.5602,-65.59807,22.45336,1.500983,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124471,21304,552,3,1,0,0,262.5602,-65.59807,22.45336,1.500983,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124195,21303,552,3,1,0,0,312.9286,-7.190621,22.5245,4.031711,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124470,21304,552,3,1,0,0,312.9286,-7.190621,22.5245,4.031711,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124328,21303,552,3,1,0,0,311.1194,-5.503693,22.5245,1.570796,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124469,21304,552,3,1,0,0,311.1194,-5.503693,22.5245,1.570796,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124329,21303,552,3,1,0,0,293.8853,70.93681,22.52617,1.553343,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124468,21304,552,3,1,0,0,293.8853,70.93681,22.52617,1.553343,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124384,21303,552,3,1,0,0,291.632,70.58091,22.52693,2.007129,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124467,21304,552,3,1,0,0,291.632,70.58091,22.52693,2.007129,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124435,21303,552,3,1,0,0,397.0705,25.33308,48.29603,0.5235988,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124466,21304,552,3,1,0,0,397.0705,25.33308,48.29603,0.5235988,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124462,21303,552,3,1,0,0,392.0042,18.38568,48.29601,1.48353,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124465,21304,552,3,1,0,0,392.0042,18.38568,48.29601,1.48353,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124463,21303,552,3,1,0,0,257.3438,155.5679,22.33209,4.712389,7200,0,0,20283,0,0,0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (124464,21304,552,3,1,0,0,257.3438,155.5679,22.33209,4.712389,7200,0,0,20283,0,0,0);
DELETE FROM pool_template WHERE entry BETWEEN 14647 AND 14669;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(14647,16,'Arcatraz - Warder/Defender Corpses - Master Pool'),
(14648,1,'Arcatraz - Warder/Defender Corpses - Pool 1'),
(14649,1,'Arcatraz - Warder/Defender Corpses - Pool 2'),
(14650,1,'Arcatraz - Warder/Defender Corpses - Pool 3'),
(14651,1,'Arcatraz - Warder/Defender Corpses - Pool 4'),
(14652,1,'Arcatraz - Warder/Defender Corpses - Pool 5'),
(14653,1,'Arcatraz - Warder/Defender Corpses - Pool 6'),
(14654,1,'Arcatraz - Warder/Defender Corpses - Pool 7'),
(14655,1,'Arcatraz - Warder/Defender Corpses - Pool 8'),
(14656,1,'Arcatraz - Warder/Defender Corpses - Pool 9'),
(14657,1,'Arcatraz - Warder/Defender Corpses - Pool 10'),
(14658,1,'Arcatraz - Warder/Defender Corpses - Pool 11'),
(14659,1,'Arcatraz - Warder/Defender Corpses - Pool 12'),
(14660,1,'Arcatraz - Warder/Defender Corpses - Pool 13'),
(14661,1,'Arcatraz - Warder/Defender Corpses - Pool 14'),
(14662,1,'Arcatraz - Warder/Defender Corpses - Pool 15'),
(14663,1,'Arcatraz - Warder/Defender Corpses - Pool 16'),
(14664,1,'Arcatraz - Warder/Defender Corpses - Pool 17'),
(14665,1,'Arcatraz - Warder/Defender Corpses - Pool 18'),
(14666,1,'Arcatraz - Warder/Defender Corpses - Pool 19'),
(14667,1,'Arcatraz - Warder/Defender Corpses - Pool 20'),
(14668,1,'Arcatraz - Warder/Defender Corpses - Pool 21'),
(14669,1,'Arcatraz - Warder/Defender Corpses - Pool 22');
DELETE FROM pool_creature WHERE pool_entry BETWEEN 14648 AND 14669;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(123831,14648,0,'Arcatraz - Defender Corpse - Pool 1'),
(80814,14648,0,'Arcatraz - Warder Corpse - Pool 1'),
(123828,14649,0,'Arcatraz - Defender Corpse - Pool 2'),
(123842,14649,0,'Arcatraz - Warder Corpse - Pool 2'),
(123829,14650,0,'Arcatraz - Defender Corpse - Pool 3'),
(123841,14650,0,'Arcatraz - Warder Corpse - Pool 3'),
(123830,14651,0,'Arcatraz - Defender Corpse - Pool 4'),
(123840,14651,0,'Arcatraz - Warder Corpse - Pool 4'),
(123834,14652,0,'Arcatraz - Defender Corpse - Pool 5'),
(123839,14652,0,'Arcatraz - Warder Corpse - Pool 5'),
(123837,14653,0,'Arcatraz - Defender Corpse - Pool 6'),
(123838,14653,0,'Arcatraz - Warder Corpse - Pool 6'),
(123836,14654,0,'Arcatraz - Defender Corpse - Pool 7'),
(125697,14654,0,'Arcatraz - Warder Corpse - Pool 7'),
(123833,14655,0,'Arcatraz - Defender Corpse - Pool 8'),
(125641,14655,0,'Arcatraz - Warder Corpse - Pool 8'),
(123835,14656,0,'Arcatraz - Defender Corpse - Pool 9'),
(125421,14656,0,'Arcatraz - Warder Corpse - Pool 9'),
(123832,14657,0,'Arcatraz - Defender Corpse - Pool 10'),
(125111,14657,0,'Arcatraz - Warder Corpse - Pool 10'),
(123896,14658,0,'Arcatraz - Defender Corpse - Pool 11'),
(124678,14658,0,'Arcatraz - Warder Corpse - Pool 11'),
(123897,14659,0,'Arcatraz - Defender Corpse - Pool 12'),
(124677,14659,0,'Arcatraz - Warder Corpse - Pool 12'),
(123898,14660,0,'Arcatraz - Defender Corpse - Pool 13'),
(124676,14660,0,'Arcatraz - Warder Corpse - Pool 13'),
(124193,14661,0,'Arcatraz - Defender Corpse - Pool 14'),
(124675,14661,0,'Arcatraz - Warder Corpse - Pool 14'),
(124194,14662,0,'Arcatraz - Defender Corpse - Pool 15'),
(124471,14662,0,'Arcatraz - Warder Corpse - Pool 15'),
(124195,14663,0,'Arcatraz - Defender Corpse - Pool 16'),
(124470,14663,0,'Arcatraz - Warder Corpse - Pool 16'),
(124328,14664,0,'Arcatraz - Defender Corpse - Pool 17'),
(124469,14664,0,'Arcatraz - Warder Corpse - Pool 17'),
(124329,14665,0,'Arcatraz - Defender Corpse - Pool 18'),
(124468,14665,0,'Arcatraz - Warder Corpse - Pool 18'),
(124384,14666,0,'Arcatraz - Defender Corpse - Pool 19'),
(124467,14666,0,'Arcatraz - Warder Corpse - Pool 19'),
(124435,14667,0,'Arcatraz - Defender Corpse - Pool 20'),
(124466,14667,0,'Arcatraz - Warder Corpse - Pool 20'),
(124462,14668,0,'Arcatraz - Defender Corpse - Pool 21'),
(124465,14668,0,'Arcatraz - Warder Corpse - Pool 21'),
(124463,14669,0,'Arcatraz - Defender Corpse - Pool 22'),
(124464,14669,0,'Arcatraz - Warder Corpse - Pool 22');
DELETE FROM pool_pool WHERE pool_id BETWEEN 14648 AND 14669;
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES 
(14648,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 1'),
(14649,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 2'),
(14650,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 3'),
(14651,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 4'),
(14652,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 5'),
(14653,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 6'),
(14654,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 7'),
(14655,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 8'),
(14656,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 9'),
(14657,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 10'),
(14658,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 11'),
(14659,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 12'),
(14660,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 13'),
(14661,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 14'),
(14662,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 15'),
(14663,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 16'),
(14664,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 17'),
(14665,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 18'),
(14666,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 19'),
(14667,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 20'),
(14668,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 21'),
(14669,14647,0,'Arcatraz - Warder/Defender Corpses - Pool 22');
DELETE FROM creature WHERE guid IN (92231,80821,80820,126617);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(126617,20868,552,3,1,0,0,254.9104,-125.0874,-10.12324,2.890443,7200,10,0,39123,12620,0,1),
(80820,20868,552,3,1,0,0,266.335,-187.128,-10.1051,4.02795,7200,10,0,39123,12620,0,1), 
(80821,20867,552,3,1,0,0,266.335,-187.128,-10.1051,4.02795,7200,10,0,45409,0,0,1),
(92231,20867,552,3,1,0,0,215.3317,-140.6983,-10.11088,5.292313,7200,10,0,45409,0,0,1),
(126478,20868,552,3,1,0,0,244.258,-156.479,-10.104,4.38315,7200,10,0,39123,12620,0,1),
(126137,20867,552,3,1,0,0,244.258,-156.479,-10.104,4.38315,7200,10,0,45409,0,0,1);
DELETE FROM pool_template WHERE entry IN (14670,14671);
INSERT INTO pool_template (entry, max_limit, description) VALUES (14670,1,'Arcatraz - Entropic Eye/Death Watcher - Pool 1');
INSERT INTO pool_template (entry, max_limit, description) VALUES (14671,1,'Arcatraz - Entropic Eye/Death Watcher - Pool 2');
DELETE FROM pool_creature WHERE pool_entry IN (14670,14671);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(80820,14670,0,'Arcatraz - Entropic Eye - Pool 1'),
(80821,14670,0,'Arcatraz - Death Watcher - Pool 1'),
(126478,14671,0,'Arcatraz - Entropic Eye - Pool 2'),
(126137,14671,0,'Arcatraz - Death Watcher - Pool 2');
DELETE FROM `creature_ai_scripts` WHERE `id` = 2902351;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2902251;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2902151;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2902451;
DELETE FROM `creature_ai_texts` WHERE `entry` = -50004;
DELETE FROM `creature_ai_texts` WHERE `entry` = -50003;
DELETE FROM `creature_ai_texts` WHERE `entry` = -50002;
DELETE FROM `creature_ai_texts` WHERE `entry` = -50001;
UPDATE creature_template SET AIName = '' WHERE Entry in (29021,29022,29023,29024);

# Fix
DELETE FROM `creature_ai_scripts` WHERE `id`=2574403;
DELETE FROM `creature_ai_scripts` WHERE `id`=2574404;
DELETE FROM `creature_ai_scripts` WHERE `id`=153803;
REPLACE INTO `npc_vendor` VALUES ('24291', '12037', '1', '7200', '0', '0');
REPLACE INTO `npc_vendor` VALUES ('50248', '39489', '3', '9000', '0', '0');
REPLACE INTO `npc_vendor` VALUES ('49703', '39489', '3', '9000', '0', '0');
DELETE FROM `dbscripts_on_creature_movement` WHERE id= 279;
DELETE FROM `dbscripts_on_creature_movement` WHERE id= 280;
DELETE FROM `dbscripts_on_creature_movement` WHERE id= 831801;
DELETE FROM `dbscripts_on_creature_movement` WHERE id= 831802;
DELETE FROM `dbscripts_on_quest_end` WHERE datalong= 35875;


# NeatElves_Final_UP_AI_Scripts
UPDATE creature_ai_scripts SET action1_type = '22', action1_param1 = '1' WHERE COMMENT LIKE '%Set Phase 1%' AND action1_type = '23';
UPDATE creature_ai_scripts SET action2_type = '22', action2_param1 = '1' WHERE COMMENT LIKE '%Set Phase 1%' AND action2_type = '23';
UPDATE creature_ai_scripts SET action3_type = '22', action3_param1 = '1' WHERE COMMENT LIKE '%Set Phase 1%' AND action3_type = '23';
UPDATE creature_ai_scripts SET action1_type = '22', action1_param1 = '2' WHERE COMMENT LIKE '%Set Phase 2%' AND action1_type = '23';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '15', event_param2 = '0', event_param3 = '1000', event_param4 = '1000' WHERE event_type='3' AND event_param1='15' AND event_param2='0' AND event_param3='0' AND event_param4='0';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '25', event_param2 = '80', event_param3 = '1000', event_param4 = '1000' WHERE event_type='9' AND event_param1='35' AND event_param2='80' AND event_param3='0' AND event_param4='0';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '5', event_param2 = '15', event_param3 = '1000', event_param4 = '1000' WHERE event_type='9' AND event_param1='5' AND event_param2='15' AND event_param3='0' AND event_param4='0';
UPDATE creature_ai_scripts SET event_flags = '1', event_param1 = '0', event_param2 = '5', event_param3 = '1000', event_param4 = '1000' WHERE event_type='9' AND event_param1='0' AND event_param2='5' AND event_param3='0' AND event_param4='0';

DELETE
`creature_addon`
FROM
`creature_addon`, `creature`
WHERE
`creature`.`id`=45280
AND `creature_addon`.`guid`=`creature`.`guid`;

# Gossip_FIX
UPDATE `gossip_menu_option` SET `action_menu_id` = '-1' WHERE `action_menu_id` =0 AND `action_script_id` >0;

# NPC_ADDON_FIX
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry1`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`b2_0_sheath`,
`creature_template_addon`.`b2_1_pvp_state`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`moveflags`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`DifficultyEntry1`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry2`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`b2_0_sheath`,
`creature_template_addon`.`b2_1_pvp_state`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`moveflags`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`DifficultyEntry2`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry3`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`b2_0_sheath`,
`creature_template_addon`.`b2_1_pvp_state`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`moveflags`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`DifficultyEntry3`>0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`UnitFlags2`=`creature_template`.`UnitFlags2`,
`copy`.`npcflags`=`creature_template`.`npcflags`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`FactionAlliance`=`creature_template`.`FactionAlliance`,
`copy`.`FactionHorde`=`creature_template`.`FactionHorde`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`creature_template`.`MechanicImmuneMask`
WHERE
`copy`.`entry`=`creature_template`.`DifficultyEntry1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`UnitFlags2`=`creature_template`.`UnitFlags2`,
`copy`.`npcflags`=`creature_template`.`npcflags`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`FactionAlliance`=`creature_template`.`FactionAlliance`,
`copy`.`FactionHorde`=`creature_template`.`FactionHorde`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`creature_template`.`MechanicImmuneMask`
WHERE
`copy`.`entry`=`creature_template`.`DifficultyEntry2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`UnitFlags2`=`creature_template`.`UnitFlags2`,
`copy`.`npcflags`=`creature_template`.`npcflags`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`FactionAlliance`=`creature_template`.`FactionAlliance`,
`copy`.`FactionHorde`=`creature_template`.`FactionHorde`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`creature_template`.`MechanicImmuneMask`
WHERE
`copy`.`entry`=`creature_template`.`DifficultyEntry3`;

# Final_FIX
UPDATE `creature` SET equipment_id=0 WHERE equipment_id=1;
UPDATE `creature` SET `phaseMask` = 65535 WHERE guid in (select (guid) from game_event_creature);
UPDATE `gameobject` SET `phaseMask` = 65535 WHERE guid in (select (guid) from game_event_gameobject);
# INSERT IGNORE INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) SELECT entry, spell1, spell2, spell3, spell4 FROM creature_template WHERE spell1!=0 OR spell2!=0 OR spell3!=0 OR spell4!=0;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET UnitFlags=UnitFlags&~2048 WHERE UnitFlags&2048=2048;
UPDATE creature_template SET UnitFlags=UnitFlags&~524288 WHERE UnitFlags&524288=524288;
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth,creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;
UPDATE `creature` SET `spawndist` = 5 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE guid in (select distinct(id) from creature_movement);
# UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE id in (select distinct(entry) from creature_movement_template);
# UPDATE `creature` LEFT JOIN (`creature_movement`) ON (`creature_movement`.`id`=`creature`.`guid`) LEFT JOIN (`creature_movement_template`) ON (`creature_movement_template`.`entry`=`creature`.`id`) SET `creature`.`spawndist`=5, `creature`.`MovementType`=1 WHERE `creature`.`MovementType`=2 AND (`creature_movement`.`id` IS NULL AND `creature_movement_template`.`entry` IS NULL);
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflags`=`npcflags`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflags`=`npcflags`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
# DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET npcflags = npcflags|1 WHERE `GossipMenuId` > 0;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE SpecialFlags=4;

UPDATE db_version SET `cache_id`= '728';
UPDATE db_version SET `version`= 'YTDB_0.16.9_R728_cMaNGOS4_R12991_SD2_R3065_ACID_R320_RuDB_R64';
