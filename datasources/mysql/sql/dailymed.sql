CREATE DATABASE IF NOT EXISTS `dailymed` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `dailymed`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `drugs_main`;
CREATE TABLE `drugs_main` (
	drugs varchar(254) PRIMARY KEY,
	label text,
	activeIngredient text,
	activeMoiety text,
	adverseReaction text,
	boxedWarning text,
	clinicalPharmacology text,
	contraindication text,
	description text,
	dosage text,
	fullName text,
	genericDrug text,
	genericMedicine text,
	indication text,
	name text,
	overdosage text,
	precaution text,
	representedOrganization text,
	routeOfAdministration text,
	supply text,
	warning text,
	supplementalPatientMaterial text
);
LOCK TABLES `drugs_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/drugs_main.tsv' INTO TABLE `drugs_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ingredients_main`;
CREATE TABLE `ingredients_main` (
	ingredients varchar(254) PRIMARY KEY,
	label text,
	sameAs text
);
LOCK TABLES `ingredients_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/ingredients_main.tsv' INTO TABLE `ingredients_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `organization_main`;
CREATE TABLE `organization_main` (
	organization varchar(254) PRIMARY KEY
);
LOCK TABLES `organization_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/organization_main.tsv' INTO TABLE `organization_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_inactiveIngredient`;
CREATE TABLE `drugs_inactiveIngredient` (
	drugs varchar(254),
	inactiveIngredient varchar(2048),
	CONSTRAINT fk_drugs_inactiveIngredient FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_inactiveIngredient` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/drugs_inactiveIngredient.tsv' INTO TABLE `drugs_inactiveIngredient` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_possibleDiseaseTarget`;
CREATE TABLE `drugs_possibleDiseaseTarget` (
	drugs varchar(254),
	possibleDiseaseTarget varchar(2048),
	CONSTRAINT fk_drugs_possibleDiseaseTarget FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_possibleDiseaseTarget` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/drugs_possibleDiseaseTarget.tsv' INTO TABLE `drugs_possibleDiseaseTarget` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_sameAs`;
CREATE TABLE `drugs_sameAs` (
	drugs varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/drugs_sameAs.tsv' INTO TABLE `drugs_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
CREATE INDEX drugs_sameAs ON drugs_sameAs(sameAs(1000));

DROP TABLE IF EXISTS `drugs_sideEffect`;
CREATE TABLE `drugs_sideEffect` (
	drugs varchar(254),
	sideEffect varchar(2048),
	CONSTRAINT fk_drugs_sideEffect FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_sideEffect` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/drugs_sideEffect.tsv' INTO TABLE `drugs_sideEffect` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `organization_label`;
CREATE TABLE `organization_label` (
	organization varchar(254),
	label varchar(2048),
	CONSTRAINT fk_organization_label FOREIGN KEY(organization) REFERENCES `organization_main`(organization)
);
LOCK TABLES `organization_label` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/organization_label.tsv' INTO TABLE `organization_label` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `organization_producesDrug`;
CREATE TABLE `organization_producesDrug` (
	organization varchar(254),
	producesDrug varchar(2048),
	CONSTRAINT fk_organization_producesDrug FOREIGN KEY(organization) REFERENCES `organization_main`(organization)
);
LOCK TABLES `organization_producesDrug` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/organization_producesDrug.tsv' INTO TABLE `organization_producesDrug` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `organization_sameAs`;
CREATE TABLE `organization_sameAs` (
	organization varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_organization_sameAs FOREIGN KEY(organization) REFERENCES `organization_main`(organization)
);
LOCK TABLES `organization_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/dailymed/organization_sameAs.tsv' INTO TABLE `organization_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
