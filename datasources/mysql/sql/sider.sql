CREATE DATABASE IF NOT EXISTS `sider` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `sider`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `drugs_main`;
CREATE TABLE `drugs_main` (
	drugs varchar(1000) PRIMARY KEY,
	label text,
	siderDrugId text,
	stitchId text
);
LOCK TABLES `drugs_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/drugs_main.tsv' INTO TABLE `drugs_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `side_effects_main`;
CREATE TABLE `side_effects_main` (
	side_effects varchar(1000) PRIMARY KEY,
	label text,
	page text,
	sideEffectId text
);
LOCK TABLES `side_effects_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/side_effects_main.tsv' INTO TABLE `side_effects_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_drugName`;
CREATE TABLE `drugs_drugName` (
	drugs varchar(128),
	drugName varchar(2944),
	CONSTRAINT pk_drugs_drugName PRIMARY KEY(drugs,drugName),
	CONSTRAINT fk_drugs_drugName FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_drugName` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/drugs_drugName.tsv' INTO TABLE `drugs_drugName` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_page`;
CREATE TABLE `drugs_page` (
	drugs varchar(128),
	page varchar(2944),
	CONSTRAINT pk_drugs_page PRIMARY KEY(drugs,page),
	CONSTRAINT fk_drugs_page FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_page` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/drugs_page.tsv' INTO TABLE `drugs_page` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_sameAs`;
CREATE TABLE `drugs_sameAs` (
	drugs varchar(128),
	sameAs varchar(2944),
	CONSTRAINT pk_drugs_sameAs PRIMARY KEY(drugs,sameAs),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/drugs_sameAs.tsv' INTO TABLE `drugs_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_seeAlso`;
CREATE TABLE `drugs_seeAlso` (
	drugs varchar(128),
	seeAlso varchar(2944),
	CONSTRAINT pk_drugs_seeAlso PRIMARY KEY(drugs,seeAlso),
	CONSTRAINT fk_drugs_seeAlso FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_seeAlso` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/drugs_seeAlso.tsv' INTO TABLE `drugs_seeAlso` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_sideEffect`;
CREATE TABLE `drugs_sideEffect` (
	drugs varchar(128),
	sideEffect varchar(2944),
	CONSTRAINT pk_drugs_sideEffect PRIMARY KEY(drugs,sideEffect),
	CONSTRAINT fk_drugs_sideEffect FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_sideEffect` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/drugs_sideEffect.tsv' INTO TABLE `drugs_sideEffect` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `side_effects_sameAs`;
CREATE TABLE `side_effects_sameAs` (
	side_effects varchar(128),
	sameAs varchar(2944),
	CONSTRAINT pk_side_effects_sameAs PRIMARY KEY(side_effects,sameAs),
	CONSTRAINT fk_side_effects_sameAs FOREIGN KEY(side_effects) REFERENCES `side_effects_main`(side_effects)
);
LOCK TABLES `side_effects_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/side_effects_sameAs.tsv' INTO TABLE `side_effects_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `side_effects_sideEffectName`;
CREATE TABLE `side_effects_sideEffectName` (
	side_effects varchar(128),
	sideEffectName varchar(2944),
	CONSTRAINT pk_side_effects_sideEffectName PRIMARY KEY(side_effects,sideEffectName),
	CONSTRAINT fk_side_effects_sideEffectName FOREIGN KEY(side_effects) REFERENCES `side_effects_main`(side_effects)
);
LOCK TABLES `side_effects_sideEffectName` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/sider/side_effects_sideEffectName.tsv' INTO TABLE `side_effects_sideEffectName` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;