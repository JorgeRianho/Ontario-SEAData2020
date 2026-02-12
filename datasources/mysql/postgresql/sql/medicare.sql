-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS drugs_main;
CREATE TABLE drugs_main (
	drugs varchar(254) PRIMARY KEY,
	label text,
	drugType text,
	medicareId text
);
COPY drugs_main FROM '/data/prohde/lslod/tsv/medicare/drugs_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_name;
CREATE TABLE drugs_name (
	drugs varchar(254),
	name varchar(2048),
	CONSTRAINT fk_drugs_name FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_name FROM '/data/prohde/lslod/tsv/medicare/drugs_name.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_sameAs;
CREATE TABLE drugs_sameAs (
	drugs varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_sameAs FROM '/data/prohde/lslod/tsv/medicare/drugs_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
