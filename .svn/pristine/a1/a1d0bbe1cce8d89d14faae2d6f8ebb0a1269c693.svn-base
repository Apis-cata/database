ALTER TABLE db_version CHANGE COLUMN required_c13058_01_mangos_spell_template required_c13077_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (68523,68620);
INSERT INTO spell_template VALUES
(68523, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Trial of the Crusader - Not One, But Two Jormungars'),
(68620, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Trial of the Crusader - Resilience Will Fix It');


# SD2_3144
UPDATE creature_template SET ScriptName='boss_crusader_death_knight' WHERE entry IN (34461,34458);
UPDATE creature_template SET ScriptName='boss_crusader_druid_balance' WHERE entry IN (34460,34451);
UPDATE creature_template SET ScriptName='boss_crusader_druid_resto' WHERE entry IN (34469,34459);
UPDATE creature_template SET ScriptName='boss_crusader_hunter' WHERE entry IN (34467,34448);
UPDATE creature_template SET ScriptName='boss_crusader_mage' WHERE entry IN (34468,34449);
UPDATE creature_template SET ScriptName='boss_crusader_paladin_holy' WHERE entry IN (34465,34445);
UPDATE creature_template SET ScriptName='boss_crusader_paladin_retri' WHERE entry IN (34471,34456);
UPDATE creature_template SET ScriptName='boss_crusader_priest_disc' WHERE entry IN (34466,34447);
UPDATE creature_template SET ScriptName='boss_crusader_priest_shadow' WHERE entry IN (34473,34441);
UPDATE creature_template SET ScriptName='boss_crusader_rogue' WHERE entry IN (34472,34454);
UPDATE creature_template SET ScriptName='boss_crusader_shaman_enha' WHERE entry IN (34463,34455);
UPDATE creature_template SET ScriptName='boss_crusader_shaman_resto' WHERE entry IN (34470,34444);
UPDATE creature_template SET ScriptName='boss_crusader_warlock' WHERE entry IN (34474,34450);
UPDATE creature_template SET ScriptName='boss_crusader_warrior' WHERE entry IN (34475,34453);
UPDATE creature_template SET ScriptName='npc_light_orb_collector' WHERE entry IN (21926,22333);
UPDATE creature_template SET ScriptName='' WHERE entry=28912;
UPDATE creature_template SET ScriptName='npc_scarlet_courier' WHERE entry=29076;
UPDATE creature_template SET ScriptName='npc_grand_admiral_westwind' WHERE entry=29621;
UPDATE creature_template SET ScriptName='npc_concentrated_bullet' WHERE entry IN (34628,34630);
UPDATE creature_template SET ScriptName='npc_valkyr_stalker' WHERE entry IN (34704,34720);
UPDATE instance_template SET ScriptName='instance_halls_of_reflection' WHERE map=668;
UPDATE creature_template SET ScriptName='npc_bone_spike' WHERE entry IN (36619,38711,38712);
UPDATE creature_template SET ScriptName='npc_coldflame' WHERE entry=36672;
