
-- Note: Some North-African CS are kept for the European map inclucing North Africa...

DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_KUALA_LUMPUR'; 
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_SYDNEY';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_QUEBEC_CITY';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_KATHMANDU';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_HANOI';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_LHASA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_ALMATY';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_SINGAPORE';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_RIO_DE_JANEIRO';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CAPE_TOWN';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_CAHOKIA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_COLOMBO';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_HONG_KONG';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_JAKARTA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_LISBON';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_MANILA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_MARRAKECH';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_MOMBASA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_ZANZIBAR';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_SAMARKAND';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_CHEYENNE';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_SIOUX';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_IFE';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_ULUNDI';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_MOGADISHU';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_KINSHASA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_HARAPPA';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_MELBOURNE';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_KABUL';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_MBANZA_KONGO';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_BUENOS_AIRES';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_KYZYL';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_ORMUS';
DELETE FROM MinorCivilizations WHERE Type='MINOR_CIV_PANAMA_CITY';


-- Code's courtesy of lemmy101
CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM MinorCivilizations;
UPDATE MinorCivilizations SET ID =	( SELECT IDRemapper.id-1 FROM IDRemapper WHERE MinorCivilizations.Type = IDRemapper.Type);
DROP TABLE IDRemapper;
--