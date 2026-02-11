CREATE DATABASE IF NOT EXISTS `chebi` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `chebi`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `Compound_main`;
CREATE TABLE `Compound_main` (
	Compound varchar(254) PRIMARY KEY,
	label text,
	identifier text,
	modified text,
	title text,
	url text,
	Status text,
	image text,
	xSource text,
	is_enantiomer_of text,
	inchi text,
	smiles text,
	seeAlso text
);
LOCK TABLES `Compound_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_main.tsv' INTO TABLE `Compound_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_comment`;
CREATE TABLE `Compound_comment` (
	Compound varchar(254),
	comment varchar(2048),
	CONSTRAINT fk_Compound_comment FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_comment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_comment.tsv' INTO TABLE `Compound_comment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_formula`;
CREATE TABLE `Compound_formula` (
	Compound varchar(254),
	formula varchar(2048),
	CONSTRAINT fk_Compound_formula FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_formula` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_formula.tsv' INTO TABLE `Compound_formula` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_has_functional_parent`;
CREATE TABLE `Compound_has_functional_parent` (
	Compound varchar(254),
	has_functional_parent varchar(2048),
	CONSTRAINT fk_Compound_has_functional_parent FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_has_functional_parent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_has_functional_parent.tsv' INTO TABLE `Compound_has_functional_parent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_has_parent_hydride`;
CREATE TABLE `Compound_has_parent_hydride` (
	Compound varchar(254),
	has_parent_hydride varchar(2048),
	CONSTRAINT fk_Compound_has_parent_hydride FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_has_parent_hydride` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_has_parent_hydride.tsv' INTO TABLE `Compound_has_parent_hydride` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_has_part`;
CREATE TABLE `Compound_has_part` (
	Compound varchar(254),
	has_part varchar(2048),
	CONSTRAINT fk_Compound_has_part FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_has_part` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_has_part.tsv' INTO TABLE `Compound_has_part` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_has_role`;
CREATE TABLE `Compound_has_role` (
	Compound varchar(254),
	has_role varchar(2048),
	CONSTRAINT fk_Compound_has_role FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_has_role` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_has_role.tsv' INTO TABLE `Compound_has_role` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_is_a`;
CREATE TABLE `Compound_is_a` (
	Compound varchar(254),
	is_a varchar(2048),
	CONSTRAINT fk_Compound_is_a FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_is_a` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_is_a.tsv' INTO TABLE `Compound_is_a` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_is_conjugate_acid_of`;
CREATE TABLE `Compound_is_conjugate_acid_of` (
	Compound varchar(254),
	is_conjugate_acid_of varchar(2048),
	CONSTRAINT fk_Compound_is_conjugate_acid_of FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_is_conjugate_acid_of` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_is_conjugate_acid_of.tsv' INTO TABLE `Compound_is_conjugate_acid_of` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_is_conjugate_base_of`;
CREATE TABLE `Compound_is_conjugate_base_of` (
	Compound varchar(254),
	is_conjugate_base_of varchar(2048),
	CONSTRAINT fk_Compound_is_conjugate_base_of FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_is_conjugate_base_of` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_is_conjugate_base_of.tsv' INTO TABLE `Compound_is_conjugate_base_of` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_is_substituent_group_from`;
CREATE TABLE `Compound_is_substituent_group_from` (
	Compound varchar(254),
	is_substituent_group_from varchar(2048),
	CONSTRAINT fk_Compound_is_substituent_group_from FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_is_substituent_group_from` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_is_substituent_group_from.tsv' INTO TABLE `Compound_is_substituent_group_from` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_is_tautomer_of`;
CREATE TABLE `Compound_is_tautomer_of` (
	Compound varchar(254),
	is_tautomer_of varchar(2048),
	CONSTRAINT fk_Compound_is_tautomer_of FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_is_tautomer_of` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_is_tautomer_of.tsv' INTO TABLE `Compound_is_tautomer_of` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_iupacName`;
CREATE TABLE `Compound_iupacName` (
	Compound varchar(254),
	iupacName varchar(2048),
	CONSTRAINT fk_Compound_iupacName FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_iupacName` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_iupacName.tsv' INTO TABLE `Compound_iupacName` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_synonym`;
CREATE TABLE `Compound_synonym` (
	Compound varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_Compound_synonym FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_synonym` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_synonym.tsv' INTO TABLE `Compound_synonym` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_xRef`;
CREATE TABLE `Compound_xRef` (
	Compound varchar(254),
	xRef varchar(2048),
	CONSTRAINT fk_Compound_xRef FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_xRef` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_xRef.tsv' INTO TABLE `Compound_xRef` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compound_xReferencedBy`;
CREATE TABLE `Compound_xReferencedBy` (
	Compound varchar(254),
	xReferencedBy varchar(2048),
	CONSTRAINT fk_Compound_xReferencedBy FOREIGN KEY(Compound) REFERENCES `Compound_main`(Compound)
);
LOCK TABLES `Compound_xReferencedBy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/chebi/Compound_xReferencedBy.tsv' INTO TABLE `Compound_xReferencedBy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
