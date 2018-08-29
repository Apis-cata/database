ALTER TABLE db_version CHANGE COLUMN required_12654_01_mangos_creature_template_power required_12670_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id=21883;
INSERT INTO spell_template VALUES
(21883, 0x00000180, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 101, 225,  76,  22,    0,   0,   0, 178904,  0,    0,     'Summon Healed Celebrian Vine');


# SD2_3025
UPDATE creature_template SET ScriptName='npc_squad_leader' WHERE entry IN (31737,31833);
UPDATE creature_template SET ScriptName='npc_infantry' WHERE entry IN (31701,31832);
UPDATE creature_template SET ScriptName='npc_father_kamaros' WHERE entry IN (31279,32800);
UPDATE creature_template SET ScriptName='npc_injured_miner' WHERE entry=29434;
UPDATE creature_template SET ScriptName='npc_harrison_jones' WHERE entry=26814;
UPDATE creature_template SET ScriptName='npc_apothecary_hanes' WHERE entry=23784;
UPDATE creature_template SET ScriptName='npc_taelan_fordring' WHERE entry=1842;
UPDATE creature_template SET ScriptName='npc_isillien' WHERE entry=1840;
UPDATE creature_template SET ScriptName='npc_tirion_fordring' WHERE entry=12126;
DELETE FROM scripted_areatrigger WHERE entry IN (4052);
INSERT INTO scripted_areatrigger VALUES
(4052,'at_temple_ahnqiraj');
UPDATE creature_template SET ScriptName='boss_tethyr' WHERE entry=23899;
UPDATE creature_template SET ScriptName='npc_shay_leafrunner' WHERE entry=7774;
DELETE FROM scripted_areatrigger WHERE entry IN (5710,5711,5712,5714,5715,5716);
INSERT INTO scripted_areatrigger VALUES
(5710, 'at_hot_on_the_trail'),
(5711, 'at_hot_on_the_trail'),
(5712, 'at_hot_on_the_trail'),
(5714, 'at_hot_on_the_trail'),
(5715, 'at_hot_on_the_trail'),
(5716, 'at_hot_on_the_trail');
UPDATE creature_template SET ScriptName='npc_saronite_mine_slave' WHERE entry=31397;
UPDATE creature_template SET ScriptName='npc_tipsy_mcmanus' WHERE entry=28566;
UPDATE creature_template SET ScriptName='npc_wants_fruit_credit' WHERE entry IN (28535,28536,28537);
UPDATE gameobject_template SET ScriptName='go_quest_still_at_it_credit' WHERE entry IN (190635,190636);
UPDATE creature_template SET ScriptName='boss_head_of_horseman' WHERE entry=23775;
UPDATE creature_template SET ScriptName='npc_scalawag_frog' WHERE entry=26503;
UPDATE creature_template SET ScriptName='npc_crystalline_ice_giant' WHERE entry=26809;
UPDATE creature_template SET ScriptName='npc_guardian_of_yogg' WHERE entry=33136;
UPDATE creature_template SET ScriptName='boss_yogg_saron' WHERE entry=33288;
UPDATE creature_template SET ScriptName='npc_captured_arkonarin' WHERE entry=11016;
UPDATE creature_template SET ScriptName='npc_arei' WHERE entry=9598;

