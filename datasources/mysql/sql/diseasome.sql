CREATE DATABASE IF NOT EXISTS `diseasome` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `diseasome`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `diseases_main`;
CREATE TABLE `diseases_main` (
	diseases varchar(1000) PRIMARY KEY,
	label text,
	chromosomalLocation text,
	class text,
	classDegree text,
	degree text,
	diseaseSubtypeOf text,
	name text,
	omim text,
	omimPage text,
	size text
);
LOCK TABLES `diseases_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/diseasome/diseases_main.tsv' INTO TABLE `diseases_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
CREATE INDEX disease_name ON `diseases_main`(name(1000));

DROP TABLE IF EXISTS `genes_main`;
CREATE TABLE `genes_main` (
	genes varchar(1000) PRIMARY KEY,
	label text,
	bio2rdfSymbol text,
	geneId text,
	hgncId text,
	hgncIdPage text
);
LOCK TABLES `genes_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/diseasome/genes_main.tsv' INTO TABLE `genes_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `diseases_associatedGene`;
CREATE TABLE `diseases_associatedGene` (
	diseases varchar(128),
	associatedGene varchar(2944),
	CONSTRAINT pk_diseases_associatedGene PRIMARY KEY(diseases,associatedGene),
	CONSTRAINT fk_diseases_associatedGene FOREIGN KEY(diseases) REFERENCES `diseases_main`(diseases)
);
LOCK TABLES `diseases_associatedGene` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/diseasome/diseases_associatedGene.tsv' INTO TABLE `diseases_associatedGene` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
CREATE INDEX associatedgene ON `diseases_associatedGene`(associatedGene(1000));

DROP TABLE IF EXISTS `diseases_possibleDrug`;
CREATE TABLE `diseases_possibleDrug` (
	diseases varchar(128),
	possibleDrug varchar(2944),
	CONSTRAINT pk_diseases_possibleDrug PRIMARY KEY(diseases,possibleDrug),
	CONSTRAINT fk_diseases_possibleDrug FOREIGN KEY(diseases) REFERENCES `diseases_main`(diseases)
);
LOCK TABLES `diseases_possibleDrug` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/diseasome/diseases_possibleDrug.tsv' INTO TABLE `diseases_possibleDrug` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `diseases_sameAs`;
CREATE TABLE `diseases_sameAs` (
	diseases varchar(128),
	sameAs varchar(2944),
	CONSTRAINT pk_diseases_sameAs PRIMARY KEY(diseases,sameAs),
	CONSTRAINT fk_diseases_sameAs FOREIGN KEY(diseases) REFERENCES `diseases_main`(diseases)
);
LOCK TABLES `diseases_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/diseasome/diseases_sameAs.tsv' INTO TABLE `diseases_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `genes_sameAs`;
CREATE TABLE `genes_sameAs` (
	genes varchar(128),
	sameAs varchar(2944),
	CONSTRAINT pk_genes_sameAs PRIMARY KEY(genes,sameAs),
	CONSTRAINT fk_genes_sameAs FOREIGN KEY(genes) REFERENCES `genes_main`(genes)
);
LOCK TABLES `genes_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/diseasome/genes_sameAs.tsv' INTO TABLE `genes_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
