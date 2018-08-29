ALTER TABLE db_version CHANGE COLUMN required_12670_01_mangos_spell_template required_12748_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (11756,19394);
INSERT INTO spell_template VALUES
(11756, 0x00000180, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 101,   4,  76,  47,    0,  15,   0, 144064,  0,    0,     'Summon Gordunni chest (COBALT)'),
(19394, 0x00000180, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 101,   4,  76,  47,    0,  15,   0, 177681,  0,    0,     'Summon Gordunni chest (JUNK)');

ALTER TABLE db_version CHANGE COLUMN required_12748_01_mangos_spell_template required_12757_01_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (12319, 12971, 12972, 12973, 12974, 16256, 16281, 16282, 16283, 16284);
INSERT INTO spell_chain VALUES
/* Flurry triggered, Warrior */
(12319,0,12319,1,0),
(12971,12319,12319,2,0),
(12972,12971,12319,3,0),
(12973,12972,12319,4,0),
(12974,12973,12319,5,0),
/* Flurry triggered, Shaman */
(16256,0,16256,1,0),
(16281,16256,16256,2,0),
(16282,16281,16256,3,0),
(16283,16282,16256,4,0),
(16284,16283,16256,5,0);

ALTER TABLE db_version CHANGE COLUMN required_12757_01_spell_chain required_12759_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (12319, 12971, 12972, 12973, 12974, 16256, 16281, 16282, 16283, 16284);


# SD2_3071
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
UPDATE instance_template SET ScriptName='instance_trial_of_the_champion' WHERE map=650;
UPDATE creature_template SET ScriptName='npc_toc_herald' WHERE entry IN (35004, 35005);
DELETE FROM scripted_areatrigger WHERE entry=3587;
INSERT INTO scripted_areatrigger VALUES
(3587,'at_ancient_leaf');
UPDATE gameobject_template SET ScriptName='go_fathom_stone' WHERE entry=177964;
