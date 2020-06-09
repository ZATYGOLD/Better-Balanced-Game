UPDATE District_CitizenYieldChanges SET YieldChange=3 WHERE YieldType='YIELD_SCIENCE' AND DistrictType="DISTRICT_OBSERVATORY";

UPDATE Feature_AdjacentYields SET YieldChange=1 WHERE FeatureType='FEATURE_PAITITI' AND YieldType='YIELD_GOLD';
UPDATE Feature_AdjacentYields SET YieldChange=1 WHERE FeatureType='FEATURE_PAITITI' AND YieldType='YIELD_CULTURE';
DELETE FROM Feature_AdjacentYields WHERE FeatureType='FEATURE_BERMUDA_TRIANGLE';


--DELETE FROM TraitModifiers WHERE ModifierId='TRAIT_EJERCITO_PATRIOTA_EXTRA_MOVEMENT';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_SIGHT' WHERE ModifierId='EJERCITO_PATRIOTA_EXTRA_MOVEMENT';
INSERT INTO ExcludedGreatPersonClasses (GreatPersonClassType, TraitType) VALUES
    ( 'GREAT_PERSON_CLASS_GENERAL', 'TRAIT_LEADER_CAMPANA_ADMIRABLE' );
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='LLANERO_ADJACENCY_STRENGTH' AND Name='Amount';
UPDATE Improvements SET PrereqCivic='CIVIC_FEUDALISM' WHERE ImprovementType='IMPROVEMENT_HACIENDA';
UPDATE Adjacency_YieldChanges SET PrereqTech='TECH_MASS_PRODUCTION' WHERE ID='Hacienda_MechanizedPlantationAdjacency' AND PrereqTech='TECH_REPLACEABLE_PARTS';
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_MERCANTILISM' WHERE ID='Hacienda_AdvancedHaciendaAdjacency' AND PrereqCivic='CIVIC_RAPID_DEPLOYMENT';
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_MERCANTILISM' WHERE ID='Plantation_AdvancedHaciendaAdjacency' AND PrereqCivic='CIVIC_RAPID_DEPLOYMENT';
UPDATE Adjacency_YieldChanges SET ObsoleteCivic='CIVIC_MERCANTILISM' WHERE ID='Hacienda_HaciendaAdjacency';
UPDATE Adjacency_YieldChanges SET ObsoleteCivic='CIVIC_MERCANTILISM' WHERE ID='Plantation_HaciendaAdjacency';
UPDATE Adjacency_YieldChanges SET ObsoleteTech='TECH_MASS_PRODUCTION' WHERE ID='Hacienda_PlantationAdjacency';


-- Mayan start biases: after coastals and tundra and desert; make flat land bias last resort; delete non-plantation lux biases; add banana bias
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_CITRUS';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_COFFEE';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_COCOA';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_COTTON';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_DYES';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_SILK';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_SPICES';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_SUGAR';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_TEA';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_TOBACCO';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_WINE';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_INCENSE';
UPDATE StartBiasResources SET Tier=3 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_OLIVES';
UPDATE StartBiasResources SET Tier=4 WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_BANANAS';
UPDATE StartBiasTerrains  SET Tier=5 WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_GRASS';
UPDATE StartBiasTerrains  SET Tier=5 WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_PLAINS';
DELETE FROM StartBiasResources WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_GYPSUM';
DELETE FROM StartBiasResources WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_JADE';
DELETE FROM StartBiasResources WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_MARBLE';
DELETE FROM StartBiasResources WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_MERCURY';
DELETE FROM StartBiasResources WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_SALT';
DELETE FROM StartBiasResources WHERE CivilizationType='CIVILIZATION_MAYA' AND ResourceType='RESOURCE_IVORY';