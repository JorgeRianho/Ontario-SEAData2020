-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS diseases_main;
CREATE TABLE diseases_main (
	diseases varchar(254) PRIMARY KEY,
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
COPY diseases_main FROM '/data/prohde/lslod/tsv/diseasome/diseases_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX disease_name ON diseases_main(name(1000));

DROP TABLE IF EXISTS genes_main;
CREATE TABLE genes_main (
	genes varchar(254) PRIMARY KEY,
	label text,
	bio2rdfSymbol text,
	geneId text,
	hgncId text,
	hgncIdPage text
);
COPY genes_main FROM '/data/prohde/lslod/tsv/diseasome/genes_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS diseases_associatedGene;
CREATE TABLE diseases_associatedGene (
	diseases varchar(254),
	associatedGene varchar(2048),
	CONSTRAINT fk_diseases_associatedGene FOREIGN KEY(diseases) REFERENCES diseases_main(diseases)
);
COPY diseases_associatedGene FROM '/data/prohde/lslod/tsv/diseasome/diseases_associatedGene.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX associatedgene ON diseases_associatedGene(associatedGene(1000));

DROP TABLE IF EXISTS diseases_possibleDrug;
CREATE TABLE diseases_possibleDrug (
	diseases varchar(254),
	possibleDrug varchar(2048),
	CONSTRAINT fk_diseases_possibleDrug FOREIGN KEY(diseases) REFERENCES diseases_main(diseases)
);
COPY diseases_possibleDrug FROM '/data/prohde/lslod/tsv/diseasome/diseases_possibleDrug.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS diseases_sameAs;
CREATE TABLE diseases_sameAs (
	diseases varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_diseases_sameAs FOREIGN KEY(diseases) REFERENCES diseases_main(diseases)
);
COPY diseases_sameAs FROM '/data/prohde/lslod/tsv/diseasome/diseases_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS genes_sameAs;
CREATE TABLE genes_sameAs (
	genes varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_genes_sameAs FOREIGN KEY(genes) REFERENCES genes_main(genes)
);
COPY genes_sameAs FROM '/data/prohde/lslod/tsv/diseasome/genes_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
