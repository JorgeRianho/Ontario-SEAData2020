-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS Compound_main;
CREATE TABLE Compound_main (
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
COPY Compound_main FROM '/data/prohde/lslod/tsv/chebi/Compound_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_comment;
CREATE TABLE Compound_comment (
	Compound varchar(254),
	comment varchar(2048),
	CONSTRAINT fk_Compound_comment FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_comment FROM '/data/prohde/lslod/tsv/chebi/Compound_comment.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_formula;
CREATE TABLE Compound_formula (
	Compound varchar(254),
	formula varchar(2048),
	CONSTRAINT fk_Compound_formula FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_formula FROM '/data/prohde/lslod/tsv/chebi/Compound_formula.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_has_functional_parent;
CREATE TABLE Compound_has_functional_parent (
	Compound varchar(254),
	has_functional_parent varchar(2048),
	CONSTRAINT fk_Compound_has_functional_parent FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_has_functional_parent FROM '/data/prohde/lslod/tsv/chebi/Compound_has_functional_parent.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_has_parent_hydride;
CREATE TABLE Compound_has_parent_hydride (
	Compound varchar(254),
	has_parent_hydride varchar(2048),
	CONSTRAINT fk_Compound_has_parent_hydride FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_has_parent_hydride FROM '/data/prohde/lslod/tsv/chebi/Compound_has_parent_hydride.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_has_part;
CREATE TABLE Compound_has_part (
	Compound varchar(254),
	has_part varchar(2048),
	CONSTRAINT fk_Compound_has_part FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_has_part FROM '/data/prohde/lslod/tsv/chebi/Compound_has_part.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_has_role;
CREATE TABLE Compound_has_role (
	Compound varchar(254),
	has_role varchar(2048),
	CONSTRAINT fk_Compound_has_role FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_has_role FROM '/data/prohde/lslod/tsv/chebi/Compound_has_role.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_is_a;
CREATE TABLE Compound_is_a (
	Compound varchar(254),
	is_a varchar(2048),
	CONSTRAINT fk_Compound_is_a FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_is_a FROM '/data/prohde/lslod/tsv/chebi/Compound_is_a.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_is_conjugate_acid_of;
CREATE TABLE Compound_is_conjugate_acid_of (
	Compound varchar(254),
	is_conjugate_acid_of varchar(2048),
	CONSTRAINT fk_Compound_is_conjugate_acid_of FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_is_conjugate_acid_of FROM '/data/prohde/lslod/tsv/chebi/Compound_is_conjugate_acid_of.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_is_conjugate_base_of;
CREATE TABLE Compound_is_conjugate_base_of (
	Compound varchar(254),
	is_conjugate_base_of varchar(2048),
	CONSTRAINT fk_Compound_is_conjugate_base_of FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_is_conjugate_base_of FROM '/data/prohde/lslod/tsv/chebi/Compound_is_conjugate_base_of.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_is_substituent_group_from;
CREATE TABLE Compound_is_substituent_group_from (
	Compound varchar(254),
	is_substituent_group_from varchar(2048),
	CONSTRAINT fk_Compound_is_substituent_group_from FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_is_substituent_group_from FROM '/data/prohde/lslod/tsv/chebi/Compound_is_substituent_group_from.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_is_tautomer_of;
CREATE TABLE Compound_is_tautomer_of (
	Compound varchar(254),
	is_tautomer_of varchar(2048),
	CONSTRAINT fk_Compound_is_tautomer_of FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_is_tautomer_of FROM '/data/prohde/lslod/tsv/chebi/Compound_is_tautomer_of.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_iupacName;
CREATE TABLE Compound_iupacName (
	Compound varchar(254),
	iupacName varchar(2048),
	CONSTRAINT fk_Compound_iupacName FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_iupacName FROM '/data/prohde/lslod/tsv/chebi/Compound_iupacName.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_synonym;
CREATE TABLE Compound_synonym (
	Compound varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_Compound_synonym FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_synonym FROM '/data/prohde/lslod/tsv/chebi/Compound_synonym.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_xRef;
CREATE TABLE Compound_xRef (
	Compound varchar(254),
	xRef varchar(2048),
	CONSTRAINT fk_Compound_xRef FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_xRef FROM '/data/prohde/lslod/tsv/chebi/Compound_xRef.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS Compound_xReferencedBy;
CREATE TABLE Compound_xReferencedBy (
	Compound varchar(254),
	xReferencedBy varchar(2048),
	CONSTRAINT fk_Compound_xReferencedBy FOREIGN KEY(Compound) REFERENCES Compound_main(Compound)
);
COPY Compound_xReferencedBy FROM '/data/prohde/lslod/tsv/chebi/Compound_xReferencedBy.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
