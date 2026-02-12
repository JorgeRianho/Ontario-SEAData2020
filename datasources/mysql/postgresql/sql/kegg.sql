-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS Compound_main;
CREATE TABLE Compound_main (
	Compound varchar(254) PRIMARY KEY,
	label text,
	sameAs text,
	identifier text,
	title text,
	formula text,
	mass text,
	url text,
	urlImage text
);
COPY Compound_main FROM '/data/prohde/lslod/tsv/kegg/Compound_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Drug_main;
CREATE TABLE Drug_main (
	Drug varchar(254) PRIMARY KEY,
	label text,
	sameAs text,
	identifier text,
	title text,
	formula text,
	mass text,
	url text,
	urlImage text
);
COPY Drug_main FROM '/data/prohde/lslod/tsv/kegg/Drug_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_main;
CREATE TABLE Enzyme_main (
	Enzyme varchar(254) PRIMARY KEY,
	label text,
	comment text,
	identifier text,
	title text,
	url text,
	systematicName text
);
COPY Enzyme_main FROM '/data/prohde/lslod/tsv/kegg/Enzyme_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Reaction_main;
CREATE TABLE Reaction_main (
	Reaction varchar(254) PRIMARY KEY,
	label text,
	comment text,
	sameAs text,
	identifier text,
	title text,
	url text,
	urlImage text,
	equation text
);
COPY Reaction_main FROM '/data/prohde/lslod/tsv/kegg/Reaction_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_synonym;
CREATE TABLE Compound_synonym (
	Compound varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_Compound_synonym FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_synonym FROM '/data/prohde/lslod/tsv/kegg/Compound_synonym.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_xRef;
CREATE TABLE Compound_xRef (
	Compound varchar(254),
	xRef varchar(2048),
	CONSTRAINT fk_Compound_xRef FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_xRef FROM '/data/prohde/lslod/tsv/kegg/Compound_xRef.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Drug_synonym;
CREATE TABLE Drug_synonym (
	Drug varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_Drug_synonym FOREIGN KEY(Drug) REFERENCES Drug_main(Drug)
);
COPY Drug_synonym FROM '/data/prohde/lslod/tsv/kegg/Drug_synonym.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Drug_xRef;
CREATE TABLE Drug_xRef (
	Drug varchar(254),
	xRef varchar(2048),
	CONSTRAINT fk_Drug_xRef FOREIGN KEY(Drug) REFERENCES Drug_main(Drug)
);
COPY Drug_xRef FROM '/data/prohde/lslod/tsv/kegg/Drug_xRef.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_isA;
CREATE TABLE Enzyme_isA (
	Enzyme varchar(254),
	isA varchar(2048),
	CONSTRAINT fk_Enzyme_isA FOREIGN KEY(Enzyme) REFERENCES Enzyme_main(Enzyme)
);
COPY Enzyme_isA FROM '/data/prohde/lslod/tsv/kegg/Enzyme_isA.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_synonym;
CREATE TABLE Enzyme_synonym (
	Enzyme varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_Enzyme_synonym FOREIGN KEY(Enzyme) REFERENCES Enzyme_main(Enzyme)
);
COPY Enzyme_synonym FROM '/data/prohde/lslod/tsv/kegg/Enzyme_synonym.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_xCofactor;
CREATE TABLE Enzyme_xCofactor (
	Enzyme varchar(254),
	xCofactor varchar(2048),
	CONSTRAINT fk_Enzyme_xCofactor FOREIGN KEY(Enzyme) REFERENCES Enzyme_main(Enzyme)
);
COPY Enzyme_xCofactor FROM '/data/prohde/lslod/tsv/kegg/Enzyme_xCofactor.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_xGene;
CREATE TABLE Enzyme_xGene (
	Enzyme varchar(254),
	xGene varchar(2048),
	CONSTRAINT fk_Enzyme_xGene FOREIGN KEY(Enzyme) REFERENCES Enzyme_main(Enzyme)
);
COPY Enzyme_xGene FROM '/data/prohde/lslod/tsv/kegg/Enzyme_xGene.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_xProduct;
CREATE TABLE Enzyme_xProduct (
	Enzyme varchar(254),
	xProduct varchar(2048),
	CONSTRAINT fk_Enzyme_xProduct FOREIGN KEY(Enzyme) REFERENCES Enzyme_main(Enzyme)
);
COPY Enzyme_xProduct FROM '/data/prohde/lslod/tsv/kegg/Enzyme_xProduct.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Enzyme_xSubstrate;
CREATE TABLE Enzyme_xSubstrate (
	Enzyme varchar(254),
	xSubstrate varchar(2048),
	CONSTRAINT fk_Enzyme_xSubstrate FOREIGN KEY(Enzyme) REFERENCES Enzyme_main(Enzyme)
);
COPY Enzyme_xSubstrate FROM '/data/prohde/lslod/tsv/kegg/Enzyme_xSubstrate.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Reaction_xEnzyme;
CREATE TABLE Reaction_xEnzyme (
	Reaction varchar(254),
	xEnzyme varchar(2048),
	CONSTRAINT fk_Reaction_xEnzyme FOREIGN KEY(Reaction) REFERENCES Reaction_main(Reaction)
);
COPY Reaction_xEnzyme FROM '/data/prohde/lslod/tsv/kegg/Reaction_xEnzyme.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Reaction_xPathway;
CREATE TABLE Reaction_xPathway (
	Reaction varchar(254),
	xPathway varchar(2048),
	CONSTRAINT fk_Reaction_xPathway FOREIGN KEY(Reaction) REFERENCES Reaction_main(Reaction)
);
COPY Reaction_xPathway FROM '/data/prohde/lslod/tsv/kegg/Reaction_xPathway.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Reaction_xProduct;
CREATE TABLE Reaction_xProduct (
	Reaction varchar(254),
	xProduct varchar(2048),
	CONSTRAINT fk_Reaction_xProduct FOREIGN KEY(Reaction) REFERENCES Reaction_main(Reaction)
);
COPY Reaction_xProduct FROM '/data/prohde/lslod/tsv/kegg/Reaction_xProduct.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Reaction_xSubstrate;
CREATE TABLE Reaction_xSubstrate (
	Reaction varchar(254),
	xSubstrate varchar(2048),
	CONSTRAINT fk_Reaction_xSubstrate FOREIGN KEY(Reaction) REFERENCES Reaction_main(Reaction)
);
COPY Reaction_xSubstrate FROM '/data/prohde/lslod/tsv/kegg/Reaction_xSubstrate.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
