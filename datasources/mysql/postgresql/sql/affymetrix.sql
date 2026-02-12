-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS Probeset_main;
CREATE TABLE Probeset_main (
	Probeset varchar(254) PRIMARY KEY,
	inDataset text,
	probe_set_id text,
	x_rgd text,
	x_mgi text
);
COPY Probeset_main FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_alignments;
CREATE TABLE Probeset_alignments (
	Probeset varchar(254),
	alignments varchar(2048),
	CONSTRAINT fk_Probeset_alignments FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_alignments FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_alignments.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_annotation_date;
CREATE TABLE Probeset_annotation_date (
	Probeset varchar(254),
	annotation_date varchar(2048),
	CONSTRAINT fk_Probeset_annotation_date FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_annotation_date FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_annotation_date.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_annotation_description;
CREATE TABLE Probeset_annotation_description (
	Probeset varchar(254),
	annotation_description varchar(2048),
	CONSTRAINT fk_Probeset_annotation_description FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_annotation_description FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_annotation_description.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_annotation_notes;
CREATE TABLE Probeset_annotation_notes (
	Probeset varchar(254),
	annotation_notes varchar(2048),
	CONSTRAINT fk_Probeset_annotation_notes FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_annotation_notes FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_annotation_notes.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_chromosomal_location;
CREATE TABLE Probeset_chromosomal_location (
	Probeset varchar(254),
	chromosomal_location varchar(2048),
	CONSTRAINT fk_Probeset_chromosomal_location FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_chromosomal_location FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_chromosomal_location.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_function;
CREATE TABLE Probeset_function (
	Probeset varchar(254),
	function varchar(2048),
	CONSTRAINT fk_Probeset_function FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_function FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_function.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_gene_title;
CREATE TABLE Probeset_gene_title (
	Probeset varchar(254),
	gene_title varchar(2048),
	CONSTRAINT fk_Probeset_gene_title FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_gene_title FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_gene_title.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_genechip_array;
CREATE TABLE Probeset_genechip_array (
	Probeset varchar(254),
	genechip_array varchar(2048),
	CONSTRAINT fk_Probeset_genechip_array FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_genechip_array FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_genechip_array.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_genome_version;
CREATE TABLE Probeset_genome_version (
	Probeset varchar(254),
	genome_version varchar(2048),
	CONSTRAINT fk_Probeset_genome_version FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_genome_version FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_genome_version.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_label;
CREATE TABLE Probeset_label (
	Probeset varchar(254),
	label varchar(2048),
	CONSTRAINT fk_Probeset_label FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_label FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_label.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_location;
CREATE TABLE Probeset_location (
	Probeset varchar(254),
	location varchar(2048),
	CONSTRAINT fk_Probeset_location FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_location FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_location.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_pathway;
CREATE TABLE Probeset_pathway (
	Probeset varchar(254),
	pathway varchar(2048),
	CONSTRAINT fk_Probeset_pathway FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_pathway FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_pathway.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_process;
CREATE TABLE Probeset_process (
	Probeset varchar(254),
	process varchar(2048),
	CONSTRAINT fk_Probeset_process FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_process FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_process.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_qtl;
CREATE TABLE Probeset_qtl (
	Probeset varchar(254),
	qtl varchar(2048),
	CONSTRAINT fk_Probeset_qtl FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_qtl FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_qtl.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_representative_public_id;
CREATE TABLE Probeset_representative_public_id (
	Probeset varchar(254),
	representative_public_id varchar(2048),
	CONSTRAINT fk_Probeset_representative_public_id FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_representative_public_id FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_representative_public_id.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_sequence_source;
CREATE TABLE Probeset_sequence_source (
	Probeset varchar(254),
	sequence_source varchar(2048),
	CONSTRAINT fk_Probeset_sequence_source FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_sequence_source FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_sequence_source.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_sequence_type;
CREATE TABLE Probeset_sequence_type (
	Probeset varchar(254),
	sequence_type varchar(2048),
	CONSTRAINT fk_Probeset_sequence_type FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_sequence_type FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_sequence_type.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_species_scientific_name;
CREATE TABLE Probeset_species_scientific_name (
	Probeset varchar(254),
	species_scientific_name varchar(2048),
	CONSTRAINT fk_Probeset_species_scientific_name FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_species_scientific_name FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_species_scientific_name.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_target_description;
CREATE TABLE Probeset_target_description (
	Probeset varchar(254),
	target_description varchar(2048),
	CONSTRAINT fk_Probeset_target_description FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_target_description FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_target_description.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_trans_membrane;
CREATE TABLE Probeset_trans_membrane (
	Probeset varchar(254),
	trans_membrane varchar(2048),
	CONSTRAINT fk_Probeset_trans_membrane FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_trans_membrane FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_trans_membrane.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_transcript;
CREATE TABLE Probeset_transcript (
	Probeset varchar(254),
	transcript varchar(2048),
	CONSTRAINT fk_Probeset_transcript FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_transcript FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_transcript.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_transcript_assignment;
CREATE TABLE Probeset_transcript_assignment (
	Probeset varchar(254),
	transcript_assignment varchar(2048),
	CONSTRAINT fk_Probeset_transcript_assignment FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_transcript_assignment FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_transcript_assignment.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_unigene_cluster_type;
CREATE TABLE Probeset_unigene_cluster_type (
	Probeset varchar(254),
	unigene_cluster_type varchar(2048),
	CONSTRAINT fk_Probeset_unigene_cluster_type FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_unigene_cluster_type FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_unigene_cluster_type.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_agi;
CREATE TABLE Probeset_x_agi (
	Probeset varchar(254),
	x_agi varchar(2048),
	CONSTRAINT fk_Probeset_x_agi FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_agi FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_agi.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_ec;
CREATE TABLE Probeset_x_ec (
	Probeset varchar(254),
	x_ec varchar(2048),
	CONSTRAINT fk_Probeset_x_ec FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_ec FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_ec.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_ensembl;
CREATE TABLE Probeset_x_ensembl (
	Probeset varchar(254),
	x_ensembl varchar(2048),
	CONSTRAINT fk_Probeset_x_ensembl FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_ensembl FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_ensembl.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_flybase;
CREATE TABLE Probeset_x_flybase (
	Probeset varchar(254),
	x_flybase varchar(2048),
	CONSTRAINT fk_Probeset_x_flybase FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_flybase FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_flybase.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_geneid;
CREATE TABLE Probeset_x_geneid (
	Probeset varchar(254),
	x_geneid varchar(2048),
	CONSTRAINT fk_Probeset_x_geneid FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_geneid FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_geneid.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX xgeneid ON Probeset_x_geneid(x_geneid(1000));

DROP TABLE IF EXISTS Probeset_x_interpro;
CREATE TABLE Probeset_x_interpro (
	Probeset varchar(254),
	x_interpro varchar(2048),
	CONSTRAINT fk_Probeset_x_interpro FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_interpro FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_interpro.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_omim;
CREATE TABLE Probeset_x_omim (
	Probeset varchar(254),
	x_omim varchar(2048),
	CONSTRAINT fk_Probeset_x_omim FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_omim FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_omim.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_refseq;
CREATE TABLE Probeset_x_refseq (
	Probeset varchar(254),
	x_refseq varchar(2048),
	CONSTRAINT fk_Probeset_x_refseq FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_refseq FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_refseq.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_sgd;
CREATE TABLE Probeset_x_sgd (
	Probeset varchar(254),
	x_sgd varchar(2048),
	CONSTRAINT fk_Probeset_x_sgd FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_sgd FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_sgd.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_symbol;
CREATE TABLE Probeset_x_symbol (
	Probeset varchar(254),
	x_symbol varchar(2048),
	CONSTRAINT fk_Probeset_x_symbol FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_symbol FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_symbol.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_unigene;
CREATE TABLE Probeset_x_unigene (
	Probeset varchar(254),
	x_unigene varchar(2048),
	CONSTRAINT fk_Probeset_x_unigene FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_unigene FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_unigene.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_uniprot;
CREATE TABLE Probeset_x_uniprot (
	Probeset varchar(254),
	x_uniprot varchar(2048),
	CONSTRAINT fk_Probeset_x_uniprot FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_uniprot FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_uniprot.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Probeset_x_wormbase;
CREATE TABLE Probeset_x_wormbase (
	Probeset varchar(254),
	x_wormbase varchar(2048),
	CONSTRAINT fk_Probeset_x_wormbase FOREIGN KEY(Probeset) REFERENCES Probeset_main(Probeset)
);
COPY Probeset_x_wormbase FROM '/data/prohde/lslod/tsv/affymetrix/Probeset_x_wormbase.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
