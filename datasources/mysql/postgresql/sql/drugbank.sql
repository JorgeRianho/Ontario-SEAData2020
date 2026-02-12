-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS drug_interactions_main;
CREATE TABLE drug_interactions_main (
	drug_interactions varchar(254) PRIMARY KEY,
	label text,
	interactionDrug1 text,
	interactionDrug2 text
);
COPY drug_interactions_main FROM '/data/prohde/lslod/tsv/drugbank/drug_interactions_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_main;
CREATE TABLE drugs_main (
	drugs varchar(254) PRIMARY KEY,
	label text,
	predictedWaterSolubility text,
	updateDate text,
	casRegistryNumber text,
	structure text,
	chemicalIupacName text,
	indication text,
	chemicalFormula text,
	keggCompoundId text,
	inchiKey text,
	massSpecFile text,
	predictedLogpHydrophobicity text,
	proteinBinding text,
	pubchemCompoundId text,
	mechanismOfAction text,
	molecularWeightAverage text,
	limsDrugId text,
	pharmgkbId text,
	description text,
	contraindicationInsert text,
	pharmacology text,
	smilesStringCanonical text,
	smilesStringIsomeric text,
	creationDate text,
	primaryAccessionNo text,
	biotransformation text,
	genericName text,
	molecularWeightMono text,
	rxlistLink text,
	pubchemSubstanceId text,
	state text,
	interactionInsert text,
	predictedLogs text,
	inchiIdentifier text,
	fdaLabelFiles text,
	keggDrugId text,
	experimentalLogpHydrophobicity text,
	synthesisReference text,
	dpdDrugIdNumber text,
	experimentalWaterSolubility text,
	msdsFiles text,
	halfLife text,
	pdbHomologyId text,
	meltingPoint text,
	absorption text,
	pdrhealthLink text,
	patientInformationInsert text,
	experimentalCaco2Permeability text,
	toxicity text,
	reference text,
	swissprotId text,
	genbankId text,
	swissprotName text,
	pdbExperimentalId text,
	pkaIsoelectricPoint text,
	chemicalStructure text,
	swissprotPage text,
	hetId text,
	experimentalLogs text,
	chebiId text
);
CREATE INDEX drugs_main_keggcompoundid ON drugs_main(keggCompoundId(1000));
CREATE INDEX drugs_main_pubchemcompoundid ON drugs_main(pubchemCompoundId(1000));
CREATE INDEX drugs_main_limsdrugid ON drugs_main(limsDrugId(1000));
CREATE INDEX drugs_main_primaryaccessionno ON drugs_main(primaryAccessionNo(1000));
CREATE INDEX drugs_main_genericname ON drugs_main(genericName(1000));
CREATE INDEX drugs_main_pubchemsubstanceid ON drugs_main(pubchemSubstanceId(1000));
CREATE INDEX drugs_main_pharmgkbid ON drugs_main(pharmgkbId(1000));
CREATE INDEX drugs_main_keggdrugid ON drugs_main(keggDrugId(1000));
CREATE INDEX drugs_main_dpddrugidnumber ON drugs_main(dpdDrugIdNumber(1000));
CREATE INDEX drugs_main_casregistrynumber ON drugs_main(casRegistryNumber(1000));
CREATE INDEX drugs_main_chemicalformula ON drugs_main(chemicalFormula(1000));
COPY drugs_main FROM '/data/prohde/lslod/tsv/drugbank/drugs_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS enzymes_main;
CREATE TABLE enzymes_main (
	enzymes varchar(254) PRIMARY KEY,
	label text,
	geneName text,
	name text,
	proteinSequence text,
	swissprotId text,
	swissprotPage text
);
COPY enzymes_main FROM '/data/prohde/lslod/tsv/drugbank/enzymes_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS references_main;
CREATE TABLE references_main (
	references varchar(254) PRIMARY KEY,
	label text,
	sameAs text,
	page text
);
COPY references_main FROM '/data/prohde/lslod/tsv/drugbank/references_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_main;
CREATE TABLE targets_main (
	targets varchar(254) PRIMARY KEY,
	label text,
	bio2rdfSymbol text,
	chromosomeLocation text,
	essentiality text,
	genatlasId text,
	genbankIdGene text,
	genbankIdGenePage text,
	genbankIdProtein text,
	genbankIdProteinPage text,
	geneName text,
	geneSequence text,
	genecardId text,
	generalFunction text,
	hgncId text,
	hgncIdPage text,
	hprdId text,
	locus text,
	molecularWeight text,
	name text,
	numberOfResidues text,
	pathway text,
	pdbId text,
	pdbIdPage text,
	proteinSequence text,
	reaction text,
	signal text,
	specificFunction text,
	swissprotId text,
	swissprotName text,
	swissprotPage text,
	theoreticalPi text
);
COPY targets_main FROM '/data/prohde/lslod/tsv/drugbank/targets_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drug_interactions_text;
CREATE TABLE drug_interactions_text (
	drug_interactions varchar(254),
	text varchar(2048),
	CONSTRAINT fk_drug_interactions_text FOREIGN KEY(drug_interactions) REFERENCES drug_interactions_main(drug_interactions)
);
COPY drug_interactions_text FROM '/data/prohde/lslod/tsv/drugbank/drug_interactions_text.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_affectedOrganism;
CREATE TABLE drugs_affectedOrganism (
	drugs varchar(254),
	affectedOrganism varchar(2048),
	CONSTRAINT fk_drugs_affectedOrganism FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_affectedOrganism FROM '/data/prohde/lslod/tsv/drugbank/drugs_affectedOrganism.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_ahfsCode;
CREATE TABLE drugs_ahfsCode (
	drugs varchar(254),
	ahfsCode varchar(2048),
	CONSTRAINT fk_drugs_ahfsCode FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_ahfsCode FROM '/data/prohde/lslod/tsv/drugbank/drugs_ahfsCode.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_atcCode;
CREATE TABLE drugs_atcCode (
	drugs varchar(254),
	atcCode varchar(2048),
	CONSTRAINT fk_drugs_atcCode FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_atcCode FROM '/data/prohde/lslod/tsv/drugbank/drugs_atcCode.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_brandMixture;
CREATE TABLE drugs_brandMixture (
	drugs varchar(254),
	brandMixture varchar(2048),
	CONSTRAINT fk_drugs_brandMixture FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_brandMixture FROM '/data/prohde/lslod/tsv/drugbank/drugs_brandMixture.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_brandName;
CREATE TABLE drugs_brandName (
	drugs varchar(254),
	brandName varchar(2048),
	CONSTRAINT fk_drugs_brandName FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_brandName FROM '/data/prohde/lslod/tsv/drugbank/drugs_brandName.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_brandedDrug;
CREATE TABLE drugs_brandedDrug (
	drugs varchar(254),
	brandedDrug varchar(2048),
	CONSTRAINT fk_drugs_brandedDrug FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_brandedDrug FROM '/data/prohde/lslod/tsv/drugbank/drugs_brandedDrug.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX brandeddrug ON drugs_brandedDrug(brandedDrug(1000));

DROP TABLE IF EXISTS drugs_dosageForm;
CREATE TABLE drugs_dosageForm (
	drugs varchar(254),
	dosageForm varchar(2048),
	CONSTRAINT fk_drugs_dosageForm FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_dosageForm FROM '/data/prohde/lslod/tsv/drugbank/drugs_dosageForm.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_drugCategory;
CREATE TABLE drugs_drugCategory (
	drugs varchar(254),
	drugCategory varchar(2048),
	CONSTRAINT fk_drugs_drugCategory FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_drugCategory FROM '/data/prohde/lslod/tsv/drugbank/drugs_drugCategory.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_drugType;
CREATE TABLE drugs_drugType (
	drugs varchar(254),
	drugType varchar(2048),
	CONSTRAINT fk_drugs_drugType FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_drugType FROM '/data/prohde/lslod/tsv/drugbank/drugs_drugType.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_enzyme;
CREATE TABLE drugs_enzyme (
	drugs varchar(254),
	enzyme varchar(2048),
	CONSTRAINT fk_drugs_enzyme FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_enzyme FROM '/data/prohde/lslod/tsv/drugbank/drugs_enzyme.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_foodInteraction;
CREATE TABLE drugs_foodInteraction (
	drugs varchar(254),
	foodInteraction varchar(2048),
	CONSTRAINT fk_drugs_foodInteraction FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_foodInteraction FROM '/data/prohde/lslod/tsv/drugbank/drugs_foodInteraction.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_page;
CREATE TABLE drugs_page (
	drugs varchar(254),
	page varchar(2048),
	CONSTRAINT fk_drugs_page FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_page FROM '/data/prohde/lslod/tsv/drugbank/drugs_page.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_possibleDiseaseTarget;
CREATE TABLE drugs_possibleDiseaseTarget (
	drugs varchar(254),
	possibleDiseaseTarget varchar(2048),
	CONSTRAINT fk_drugs_possibleDiseaseTarget FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_possibleDiseaseTarget FROM '/data/prohde/lslod/tsv/drugbank/drugs_possibleDiseaseTarget.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX drugs_possibleDiseaseTarget ON drugs_possibleDiseaseTarget(possibleDiseaseTarget(1000));
CREATE INDEX drugs_possibleDiseaseTarget_drugs ON drugs_possibleDiseaseTarget(drugs);

DROP TABLE IF EXISTS drugs_sameAs;
CREATE TABLE drugs_sameAs (
	drugs varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_drugs_sameAs FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_sameAs FROM '/data/prohde/lslod/tsv/drugbank/drugs_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX drugs_sameAs ON drugs_sameAs(sameAs(1000));

DROP TABLE IF EXISTS drugs_secondaryAccessionNumber;
CREATE TABLE drugs_secondaryAccessionNumber (
	drugs varchar(254),
	secondaryAccessionNumber varchar(2048),
	CONSTRAINT fk_drugs_secondaryAccessionNumber FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_secondaryAccessionNumber FROM '/data/prohde/lslod/tsv/drugbank/drugs_secondaryAccessionNumber.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_synonym;
CREATE TABLE drugs_synonym (
	drugs varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_drugs_synonym FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_synonym FROM '/data/prohde/lslod/tsv/drugbank/drugs_synonym.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS drugs_target;
CREATE TABLE drugs_target (
	drugs varchar(254),
	target varchar(2048),
	CONSTRAINT fk_drugs_target FOREIGN KEY(drugs) REFERENCES drugs_main(drugs)
);
COPY drugs_target FROM '/data/prohde/lslod/tsv/drugbank/drugs_target.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_cellularLocation;
CREATE TABLE targets_cellularLocation (
	targets varchar(254),
	cellularLocation varchar(2048),
	CONSTRAINT fk_targets_cellularLocation FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_cellularLocation FROM '/data/prohde/lslod/tsv/drugbank/targets_cellularLocation.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_drugReference;
CREATE TABLE targets_drugReference (
	targets varchar(254),
	drugReference varchar(2048),
	CONSTRAINT fk_targets_drugReference FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_drugReference FROM '/data/prohde/lslod/tsv/drugbank/targets_drugReference.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_generalReference;
CREATE TABLE targets_generalReference (
	targets varchar(254),
	generalReference varchar(2048),
	CONSTRAINT fk_targets_generalReference FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_generalReference FROM '/data/prohde/lslod/tsv/drugbank/targets_generalReference.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_goClassificationComponent;
CREATE TABLE targets_goClassificationComponent (
	targets varchar(254),
	goClassificationComponent varchar(2048),
	CONSTRAINT fk_targets_goClassificationComponent FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_goClassificationComponent FROM '/data/prohde/lslod/tsv/drugbank/targets_goClassificationComponent.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_goClassificationFunction;
CREATE TABLE targets_goClassificationFunction (
	targets varchar(254),
	goClassificationFunction varchar(2048),
	CONSTRAINT fk_targets_goClassificationFunction FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_goClassificationFunction FROM '/data/prohde/lslod/tsv/drugbank/targets_goClassificationFunction.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_goClassificationProcess;
CREATE TABLE targets_goClassificationProcess (
	targets varchar(254),
	goClassificationProcess varchar(2048),
	CONSTRAINT fk_targets_goClassificationProcess FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_goClassificationProcess FROM '/data/prohde/lslod/tsv/drugbank/targets_goClassificationProcess.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_pfamDomainFunction;
CREATE TABLE targets_pfamDomainFunction (
	targets varchar(254),
	pfamDomainFunction varchar(2048),
	CONSTRAINT fk_targets_pfamDomainFunction FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_pfamDomainFunction FROM '/data/prohde/lslod/tsv/drugbank/targets_pfamDomainFunction.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_pfamDomainFunctionPage;
CREATE TABLE targets_pfamDomainFunctionPage (
	targets varchar(254),
	pfamDomainFunctionPage varchar(2048),
	CONSTRAINT fk_targets_pfamDomainFunctionPage FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_pfamDomainFunctionPage FROM '/data/prohde/lslod/tsv/drugbank/targets_pfamDomainFunctionPage.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_sameAs;
CREATE TABLE targets_sameAs (
	targets varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_targets_sameAs FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_sameAs FROM '/data/prohde/lslod/tsv/drugbank/targets_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_synonym;
CREATE TABLE targets_synonym (
	targets varchar(254),
	synonym varchar(2048),
	CONSTRAINT fk_targets_synonym FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_synonym FROM '/data/prohde/lslod/tsv/drugbank/targets_synonym.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS targets_transmembraneRegions;
CREATE TABLE targets_transmembraneRegions (
	targets varchar(254),
	transmembraneRegions varchar(2048),
	CONSTRAINT fk_targets_transmembraneRegions FOREIGN KEY(targets) REFERENCES targets_main(targets)
);
COPY targets_transmembraneRegions FROM '/data/prohde/lslod/tsv/drugbank/targets_transmembraneRegions.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
