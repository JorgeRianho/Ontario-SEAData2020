CREATE DATABASE IF NOT EXISTS `medicare` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `medicare`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `drugs_main`;
CREATE TABLE `drugs_main` (
	drugs varchar(254) PRIMARY KEY,
	label text,
	drugType text,
	medicareId text
);
LOCK TABLES `drugs_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/medicare/drugs_main.tsv' INTO TABLE `drugs_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_name`;
CREATE TABLE `drugs_name` (
	drugs varchar(254),
	name varchar(2048),
	CONSTRAINT fk_drugs_name FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_name` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/medicare/drugs_name.tsv' INTO TABLE `drugs_name` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drugs_sameAs`;
CREATE TABLE `drugs_sameAs` (
	drugs varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES `drugs_main`(drugs)
);
LOCK TABLES `drugs_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/medicare/drugs_sameAs.tsv' INTO TABLE `drugs_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
