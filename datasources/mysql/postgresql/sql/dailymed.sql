-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS drugs_main;
CREATE TABLE drugs_main (
	drugs varchar(254) PRIMARY KEY,
	label text,
	activeIngredient text,
	activeMoiety text,
	adverseReaction text,
	boxedWarning text,
	clinicalPharmacology text,
	contraindication text,
	description text,
	dosage text,
	fullName text,
	genericDrug text,
	genericMedicine text,
	indication text,
	name text,
	overdosage text,
	precaution text,
	representedOrganization text,
	routeOfAdministration text,
	supply text,
	warning text,
	supplementalPatientMaterial text
);
COPY drugs_main FROM '/data/prohde/lslod/tsv/dailymed/drugs_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS ingredients_main;
CREATE TABLE ingredients_main (
	ingredients varchar(254) PRIMARY KEY,
	label text,
	sameAs text
);
COPY ingredients_main FROM '/data/prohde/lslod/tsv/dailymed/ingredients_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS organization_main;
CREATE TABLE organization_main (
	organization varchar(254) PRIMARY KEY
);
COPY organization_main FROM '/data/prohde/lslod/tsv/dailymed/organization_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_inactiveIngredient;
CREATE TABLE drugs_inactiveIngredient (
	drugs varchar(254),
	inactiveIngredient varchar(2048),
	CONSTRAINT fk_drugs_inactiveIngredient FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_inactiveIngredient FROM '/data/prohde/lslod/tsv/dailymed/drugs_inactiveIngredient.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_possibleDiseaseTarget;
CREATE TABLE drugs_possibleDiseaseTarget (
	drugs varchar(254),
	possibleDiseaseTarget varchar(2048),
	CONSTRAINT fk_drugs_possibleDiseaseTarget FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_possibleDiseaseTarget FROM '/data/prohde/lslod/tsv/dailymed/drugs_possibleDiseaseTarget.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_sameAs;
CREATE TABLE drugs_sameAs (
	drugs varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_sameAs FROM '/data/prohde/lslod/tsv/dailymed/drugs_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX drugs_sameAs ON drugs_sameAs(sameAs(1000));

DROP TABLE IF EXISTS drugs_sideEffect;
CREATE TABLE drugs_sideEffect (
	drugs varchar(254),
	sideEffect varchar(2048),
	CONSTRAINT fk_drugs_sideEffect FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_sideEffect FROM '/data/prohde/lslod/tsv/dailymed/drugs_sideEffect.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS organization_label;
CREATE TABLE organization_label (
	organization varchar(254),
	label varchar(2048),
	CONSTRAINT fk_organization_label FOREIGN KEY(organization) REFERENCES organization_main(organization)
);
COPY organization_label FROM '/data/prohde/lslod/tsv/dailymed/organization_label.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS organization_producesDrug;
CREATE TABLE organization_producesDrug (
	organization varchar(254),
	producesDrug varchar(2048),
	CONSTRAINT fk_organization_producesDrug FOREIGN KEY(organization) REFERENCES organization_main(organization)
);
COPY organization_producesDrug FROM '/data/prohde/lslod/tsv/dailymed/organization_producesDrug.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS organization_sameAs;
CREATE TABLE organization_sameAs (
	organization varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_organization_sameAs FOREIGN KEY(organization) REFERENCES organization_main(organization)
);
COPY organization_sameAs FROM '/data/prohde/lslod/tsv/dailymed/organization_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
