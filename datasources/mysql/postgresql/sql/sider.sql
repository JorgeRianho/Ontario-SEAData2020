-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS drugs_main;
CREATE TABLE drugs_main (
	drugs varchar(254) PRIMARY KEY,
	label text,
	siderDrugId text,
	stitchId text
);
COPY drugs_main FROM '/data/prohde/lslod/tsv/sider/drugs_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS side_effects_main;
CREATE TABLE side_effects_main (
	side_effects varchar(254) PRIMARY KEY,
	label text,
	page text,
	sideEffectId text
);
COPY side_effects_main FROM '/data/prohde/lslod/tsv/sider/side_effects_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_drugName;
CREATE TABLE drugs_drugName (
	drugs varchar(254),
	drugName varchar(2048),
	CONSTRAINT fk_drugs_drugName FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_drugName FROM '/data/prohde/lslod/tsv/sider/drugs_drugName.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_page;
CREATE TABLE drugs_page (
	drugs varchar(254),
	page varchar(2048),
	CONSTRAINT fk_drugs_page FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_page FROM '/data/prohde/lslod/tsv/sider/drugs_page.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_sameAs;
CREATE TABLE drugs_sameAs (
	drugs varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_sameAs FROM '/data/prohde/lslod/tsv/sider/drugs_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_seeAlso;
CREATE TABLE drugs_seeAlso (
	drugs varchar(254),
	seeAlso varchar(2048),
	CONSTRAINT fk_drugs_seeAlso FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_seeAlso FROM '/data/prohde/lslod/tsv/sider/drugs_seeAlso.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_sideEffect;
CREATE TABLE drugs_sideEffect (
	drugs varchar(254),
	sideEffect varchar(2048),
	CONSTRAINT fk_drugs_sideEffect FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_sideEffect FROM '/data/prohde/lslod/tsv/sider/drugs_sideEffect.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS side_effects_sameAs;
CREATE TABLE side_effects_sameAs (
	side_effects varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_side_effects_sameAs FOREIGN KEY(side_effects) REFERENCES side_effects_main(side_effects)
);
COPY side_effects_sameAs FROM '/data/prohde/lslod/tsv/sider/side_effects_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS side_effects_sideEffectName;
CREATE TABLE side_effects_sideEffectName (
	side_effects varchar(254),
	sideEffectName varchar(2048),
	CONSTRAINT fk_side_effects_sideEffectName FOREIGN KEY(side_effects) REFERENCES side_effects_main(side_effects)
);
COPY side_effects_sideEffectName FROM '/data/prohde/lslod/tsv/sider/side_effects_sideEffectName.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
