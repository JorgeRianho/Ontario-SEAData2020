CREATE DATABASE IF NOT EXISTS `affymetrix` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `affymetrix`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `Probeset_main`;
CREATE TABLE `Probeset_main` (
	Probeset varchar(254) PRIMARY KEY,
	inDataset text,
	probe_set_id text,
	x_rgd text,
	x_mgi text
);
LOCK TABLES `Probeset_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_main.tsv' INTO TABLE `Probeset_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_alignments`;
CREATE TABLE `Probeset_alignments` (
	Probeset varchar(254),
	alignments varchar(2048),
	CONSTRAINT fk_Probeset_alignments FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_alignments` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_alignments.tsv' INTO TABLE `Probeset_alignments` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_annotation_date`;
CREATE TABLE `Probeset_annotation_date` (
	Probeset varchar(254),
	annotation_date varchar(2048),
	CONSTRAINT fk_Probeset_annotation_date FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_annotation_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_annotation_date.tsv' INTO TABLE `Probeset_annotation_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_annotation_description`;
CREATE TABLE `Probeset_annotation_description` (
	Probeset varchar(254),
	annotation_description varchar(2048),
	CONSTRAINT fk_Probeset_annotation_description FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_annotation_description` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_annotation_description.tsv' INTO TABLE `Probeset_annotation_description` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_annotation_notes`;
CREATE TABLE `Probeset_annotation_notes` (
	Probeset varchar(254),
	annotation_notes varchar(2048),
	CONSTRAINT fk_Probeset_annotation_notes FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_annotation_notes` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_annotation_notes.tsv' INTO TABLE `Probeset_annotation_notes` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_chromosomal_location`;
CREATE TABLE `Probeset_chromosomal_location` (
	Probeset varchar(254),
	chromosomal_location varchar(2048),
	CONSTRAINT fk_Probeset_chromosomal_location FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_chromosomal_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_chromosomal_location.tsv' INTO TABLE `Probeset_chromosomal_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_function`;
CREATE TABLE `Probeset_function` (
	Probeset varchar(254),
	`function` varchar(2048),
	CONSTRAINT fk_Probeset_function FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_function` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_function.tsv' INTO TABLE `Probeset_function` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_gene_title`;
CREATE TABLE `Probeset_gene_title` (
	Probeset varchar(254),
	gene_title varchar(2048),
	CONSTRAINT fk_Probeset_gene_title FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_gene_title` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_gene_title.tsv' INTO TABLE `Probeset_gene_title` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_genechip_array`;
CREATE TABLE `Probeset_genechip_array` (
	Probeset varchar(254),
	genechip_array varchar(2048),
	CONSTRAINT fk_Probeset_genechip_array FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_genechip_array` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_genechip_array.tsv' INTO TABLE `Probeset_genechip_array` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_genome_version`;
CREATE TABLE `Probeset_genome_version` (
	Probeset varchar(254),
	genome_version varchar(2048),
	CONSTRAINT fk_Probeset_genome_version FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_genome_version` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_genome_version.tsv' INTO TABLE `Probeset_genome_version` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_label`;
CREATE TABLE `Probeset_label` (
	Probeset varchar(254),
	label varchar(2048),
	CONSTRAINT fk_Probeset_label FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_label` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_label.tsv' INTO TABLE `Probeset_label` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_location`;
CREATE TABLE `Probeset_location` (
	Probeset varchar(254),
	location varchar(2048),
	CONSTRAINT fk_Probeset_location FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_location.tsv' INTO TABLE `Probeset_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_pathway`;
CREATE TABLE `Probeset_pathway` (
	Probeset varchar(254),
	pathway varchar(2048),
	CONSTRAINT fk_Probeset_pathway FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_pathway` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_pathway.tsv' INTO TABLE `Probeset_pathway` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_process`;
CREATE TABLE `Probeset_process` (
	Probeset varchar(254),
	process varchar(2048),
	CONSTRAINT fk_Probeset_process FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_process` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_process.tsv' INTO TABLE `Probeset_process` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_qtl`;
CREATE TABLE `Probeset_qtl` (
	Probeset varchar(254),
	qtl varchar(2048),
	CONSTRAINT fk_Probeset_qtl FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_qtl` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_qtl.tsv' INTO TABLE `Probeset_qtl` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_representative_public_id`;
CREATE TABLE `Probeset_representative_public_id` (
	Probeset varchar(254),
	representative_public_id varchar(2048),
	CONSTRAINT fk_Probeset_representative_public_id FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_representative_public_id` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_representative_public_id.tsv' INTO TABLE `Probeset_representative_public_id` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_sequence_source`;
CREATE TABLE `Probeset_sequence_source` (
	Probeset varchar(254),
	sequence_source varchar(2048),
	CONSTRAINT fk_Probeset_sequence_source FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_sequence_source` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_sequence_source.tsv' INTO TABLE `Probeset_sequence_source` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_sequence_type`;
CREATE TABLE `Probeset_sequence_type` (
	Probeset varchar(254),
	sequence_type varchar(2048),
	CONSTRAINT fk_Probeset_sequence_type FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_sequence_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_sequence_type.tsv' INTO TABLE `Probeset_sequence_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_species_scientific_name`;
CREATE TABLE `Probeset_species_scientific_name` (
	Probeset varchar(254),
	species_scientific_name varchar(2048),
	CONSTRAINT fk_Probeset_species_scientific_name FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_species_scientific_name` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_species_scientific_name.tsv' INTO TABLE `Probeset_species_scientific_name` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_target_description`;
CREATE TABLE `Probeset_target_description` (
	Probeset varchar(254),
	target_description varchar(2048),
	CONSTRAINT fk_Probeset_target_description FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_target_description` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_target_description.tsv' INTO TABLE `Probeset_target_description` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_trans_membrane`;
CREATE TABLE `Probeset_trans_membrane` (
	Probeset varchar(254),
	trans_membrane varchar(2048),
	CONSTRAINT fk_Probeset_trans_membrane FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_trans_membrane` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_trans_membrane.tsv' INTO TABLE `Probeset_trans_membrane` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_transcript`;
CREATE TABLE `Probeset_transcript` (
	Probeset varchar(254),
	transcript varchar(2048),
	CONSTRAINT fk_Probeset_transcript FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_transcript` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_transcript.tsv' INTO TABLE `Probeset_transcript` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_transcript_assignment`;
CREATE TABLE `Probeset_transcript_assignment` (
	Probeset varchar(254),
	transcript_assignment varchar(2048),
	CONSTRAINT fk_Probeset_transcript_assignment FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_transcript_assignment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_transcript_assignment.tsv' INTO TABLE `Probeset_transcript_assignment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_unigene_cluster_type`;
CREATE TABLE `Probeset_unigene_cluster_type` (
	Probeset varchar(254),
	unigene_cluster_type varchar(2048),
	CONSTRAINT fk_Probeset_unigene_cluster_type FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_unigene_cluster_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_unigene_cluster_type.tsv' INTO TABLE `Probeset_unigene_cluster_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_agi`;
CREATE TABLE `Probeset_x_agi` (
	Probeset varchar(254),
	x_agi varchar(2048),
	CONSTRAINT fk_Probeset_x_agi FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_agi` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_agi.tsv' INTO TABLE `Probeset_x_agi` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_ec`;
CREATE TABLE `Probeset_x_ec` (
	Probeset varchar(254),
	x_ec varchar(2048),
	CONSTRAINT fk_Probeset_x_ec FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_ec` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_ec.tsv' INTO TABLE `Probeset_x_ec` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_ensembl`;
CREATE TABLE `Probeset_x_ensembl` (
	Probeset varchar(254),
	x_ensembl varchar(2048),
	CONSTRAINT fk_Probeset_x_ensembl FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_ensembl` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_ensembl.tsv' INTO TABLE `Probeset_x_ensembl` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_flybase`;
CREATE TABLE `Probeset_x_flybase` (
	Probeset varchar(254),
	x_flybase varchar(2048),
	CONSTRAINT fk_Probeset_x_flybase FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_flybase` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_flybase.tsv' INTO TABLE `Probeset_x_flybase` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_geneid`;
CREATE TABLE `Probeset_x_geneid` (
	Probeset varchar(254),
	x_geneid varchar(2048),
	CONSTRAINT fk_Probeset_x_geneid FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_geneid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_geneid.tsv' INTO TABLE `Probeset_x_geneid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
CREATE INDEX xgeneid ON `Probeset_x_geneid`(x_geneid(1000));

DROP TABLE IF EXISTS `Probeset_x_interpro`;
CREATE TABLE `Probeset_x_interpro` (
	Probeset varchar(254),
	x_interpro varchar(2048),
	CONSTRAINT fk_Probeset_x_interpro FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_interpro` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_interpro.tsv' INTO TABLE `Probeset_x_interpro` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_omim`;
CREATE TABLE `Probeset_x_omim` (
	Probeset varchar(254),
	x_omim varchar(2048),
	CONSTRAINT fk_Probeset_x_omim FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_omim` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_omim.tsv' INTO TABLE `Probeset_x_omim` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_refseq`;
CREATE TABLE `Probeset_x_refseq` (
	Probeset varchar(254),
	x_refseq varchar(2048),
	CONSTRAINT fk_Probeset_x_refseq FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_refseq` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_refseq.tsv' INTO TABLE `Probeset_x_refseq` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_sgd`;
CREATE TABLE `Probeset_x_sgd` (
	Probeset varchar(254),
	x_sgd varchar(2048),
	CONSTRAINT fk_Probeset_x_sgd FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_sgd` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_sgd.tsv' INTO TABLE `Probeset_x_sgd` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_symbol`;
CREATE TABLE `Probeset_x_symbol` (
	Probeset varchar(254),
	x_symbol varchar(2048),
	CONSTRAINT fk_Probeset_x_symbol FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_symbol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_symbol.tsv' INTO TABLE `Probeset_x_symbol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_unigene`;
CREATE TABLE `Probeset_x_unigene` (
	Probeset varchar(254),
	x_unigene varchar(2048),
	CONSTRAINT fk_Probeset_x_unigene FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_unigene` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_unigene.tsv' INTO TABLE `Probeset_x_unigene` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_uniprot`;
CREATE TABLE `Probeset_x_uniprot` (
	Probeset varchar(254),
	x_uniprot varchar(2048),
	CONSTRAINT fk_Probeset_x_uniprot FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_uniprot` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_uniprot.tsv' INTO TABLE `Probeset_x_uniprot` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Probeset_x_wormbase`;
CREATE TABLE `Probeset_x_wormbase` (
	Probeset varchar(254),
	x_wormbase varchar(2048),
	CONSTRAINT fk_Probeset_x_wormbase FOREIGN KEY(Probeset) REFERENCES `Probeset_main`(Probeset)
);
LOCK TABLES `Probeset_x_wormbase` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/affymetrix/Probeset_x_wormbase.tsv' INTO TABLE `Probeset_x_wormbase` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
