ALTER TABLE db_version CHANGE COLUMN required_c12868_01_mangos_spell_template required_c12947_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (11756,19394);
INSERT INTO spell_template VALUES
(11756, 0x00000180, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 101,   4,  76,  47,    0,  15,   0, 144064,  0,    0,     'Summon Gordunni chest (COBALT)'),
(19394, 0x00000180, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 101,   4,  76,  47,    0,  15,   0, 177681,  0,    0,     'Summon Gordunni chest (JUNK)');


# SD2_3065
UPDATE creature_template SET ScriptName='npc_darkness' WHERE entry=25879;
UPDATE creature_template SET ScriptName='npc_singularity' WHERE entry=25855;
UPDATE creature_template SET ScriptName='' WHERE entry=25782;
UPDATE creature_template SET ScriptName='npc_flame_breath_trigger' WHERE entry=28351;
UPDATE creature_template SET ScriptName='npc_dimensius' WHERE entry=19554;
UPDATE creature_template SET ScriptName='npc_glob_of_viscidus' WHERE entry=15667;
UPDATE creature_template SET ScriptName='npc_magister_aledis' WHERE entry=20159;
UPDATE creature_template SET ScriptName='npc_emily' WHERE entry=26588;
UPDATE creature_template SET ScriptName='npc_saronite_vapor' WHERE entry=33488;
UPDATE creature_template SET ScriptName='npc_arthas' WHERE entry=26499;
UPDATE creature_template SET ScriptName='npc_spell_dummy_crusader_strike' WHERE entry IN (28167,28169);
