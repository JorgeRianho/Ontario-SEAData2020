CREATE DATABASE IF NOT EXISTS `linkedct` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `linkedct`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `agency_main`;
CREATE TABLE `agency_main` (
	agency varchar(1000) PRIMARY KEY,
	label text,
	agency_id text,
	agency_name text
);
LOCK TABLES `agency_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/agency_main.tsv' INTO TABLE `agency_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `collaborator_agency_main`;
CREATE TABLE `collaborator_agency_main` (
	collaborator_agency varchar(1000) PRIMARY KEY,
	label text,
	collaborator_agency_name text,
	collaborator_agency_id text
);
LOCK TABLES `collaborator_agency_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/collaborator_agency_main.tsv' INTO TABLE `collaborator_agency_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `condition_main`;
CREATE TABLE `condition_main` (
	`condition` varchar(1000) PRIMARY KEY,
	label text,
	condition_id text,
	condition_name text
);
LOCK TABLES `condition_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/condition_main.tsv' INTO TABLE `condition_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `intervention_main`;
CREATE TABLE `intervention_main` (
	intervention varchar(1000) PRIMARY KEY,
	label text,
	intervention_id text,
	intervention_name text,
	intervention_type text,
	description text
);
LOCK TABLES `intervention_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/intervention_main.tsv' INTO TABLE `intervention_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `location_main`;
CREATE TABLE `location_main` (
	location varchar(1000) PRIMARY KEY,
	label text,
	facility_address_zip text,
	location_id text,
	facility_name text,
	facility_address_country text,
	facility_address_city text,
	facility_address_state text
);
LOCK TABLES `location_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/location_main.tsv' INTO TABLE `location_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `overall_official_main`;
CREATE TABLE `overall_official_main` (
	overall_official varchar(1000) PRIMARY KEY,
	label text,
	last_name text,
	overall_official_id text,
	affiliation text
);
LOCK TABLES `overall_official_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/overall_official_main.tsv' INTO TABLE `overall_official_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `oversight_main`;
CREATE TABLE `oversight_main` (
	oversight varchar(1000) PRIMARY KEY,
	label text,
	oversight_oversight_info_authority text,
	oversight_id text
);
LOCK TABLES `oversight_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/oversight_main.tsv' INTO TABLE `oversight_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `primary_outcomes_main`;
CREATE TABLE `primary_outcomes_main` (
	primary_outcomes varchar(1000) PRIMARY KEY,
	label text,
	primary_outcomes_id text,
	measure text,
	safety_issue text,
	time_frame text
);
LOCK TABLES `primary_outcomes_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/primary_outcomes_main.tsv' INTO TABLE `primary_outcomes_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `reference_main`;
CREATE TABLE `reference_main` (
	reference varchar(1000) PRIMARY KEY,
	label text,
	sameAs text,
	page text,
	PMid text,
	reference_id text,
	citation text
);
LOCK TABLES `reference_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/reference_main.tsv' INTO TABLE `reference_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `results_reference_main`;
CREATE TABLE `results_reference_main` (
	results_reference varchar(1000) PRIMARY KEY,
	label text,
	sameAs text,
	page text,
	PMid text,
	citation text,
	results_reference_id text
);
LOCK TABLES `results_reference_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/results_reference_main.tsv' INTO TABLE `results_reference_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `secondary_outcomes_main`;
CREATE TABLE `secondary_outcomes_main` (
	secondary_outcomes varchar(1000) PRIMARY KEY,
	label text,
	safety_issue text,
	time_frame text,
	measure text,
	secondary_outcomes_id text
);
LOCK TABLES `secondary_outcomes_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/secondary_outcomes_main.tsv' INTO TABLE `secondary_outcomes_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trial_arm_group_main`;
CREATE TABLE `trial_arm_group_main` (
	trial_arm_group varchar(1000) PRIMARY KEY,
	label text,
	arm_group_type text,
	arm_group_label text,
	arm_group_id text,
	description text
);
LOCK TABLES `trial_arm_group_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trial_arm_group_main.tsv' INTO TABLE `trial_arm_group_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_main`;
CREATE TABLE `trials_main` (
	trials varchar(1000) PRIMARY KEY,
	label text,
	page text,
	lead_sponsor_agency text,
	eligibility_minimum_age text,
	brief_title text,
	nct_id text,
	number_of_arms text,
	number_of_groups text,
	id text,
	download_date text,
	enrollment text,
	firstreceived_date text,
	eligibility_healthy_volunteers text,
	overall_status text,
	summary text,
	end_date text,
	official_title text,
	source text,
	verification_date text,
	eligibility_gender text,
	org_study_id text,
	criteria text,
	study_design text,
	start_date text,
	study_type text,
	phase text,
	description text,
	lastchanged_date text,
	eligibility_maximum_age text,
	primary_completion_date text,
	overall_contact_last_name text,
	overall_contact_phone text,
	has_dmc text,
	overall_contact_email text,
	acronym text,
	why_stopped text,
	eligibility_study_pop text,
	biospec text,
	biospec_retention text,
	eligibility_sampling_method text,
	overall_contact_phone_ext text
);
LOCK TABLES `trials_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_main.tsv' INTO TABLE `trials_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `condition_sameAs`;
CREATE TABLE `condition_sameAs` (
	`condition` varchar(128),
	sameAs varchar(2944),
	CONSTRAINT pk_condition_sameAs PRIMARY KEY(`condition`,sameAs),
	CONSTRAINT fk_condition_sameAs FOREIGN KEY(`condition`) REFERENCES `condition_main`(`condition`)
);
LOCK TABLES `condition_sameAs` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/condition_sameAs.tsv' INTO TABLE `condition_sameAs` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `condition_seeAlso`;
CREATE TABLE `condition_seeAlso` (
	`condition` varchar(128),
	seeAlso varchar(2944),
	CONSTRAINT pk_condition_seeAlso PRIMARY KEY(`condition`,seeAlso),
	CONSTRAINT fk_condition_seeAlso FOREIGN KEY(`condition`) REFERENCES `condition_main`(`condition`)
);
LOCK TABLES `condition_seeAlso` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/condition_seeAlso.tsv' INTO TABLE `condition_seeAlso` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `intervention_seeAlso`;
CREATE TABLE `intervention_seeAlso` (
	intervention varchar(128),
	seeAlso varchar(2944),
	CONSTRAINT pk_intervention_seeAlso PRIMARY KEY(intervention,seeAlso),
	CONSTRAINT fk_intervention_seeAlso FOREIGN KEY(intervention) REFERENCES `intervention_main`(intervention)
);
LOCK TABLES `intervention_seeAlso` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/intervention_seeAlso.tsv' INTO TABLE `intervention_seeAlso` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
CREATE INDEX intervention_seeAlso ON intervention_seeAlso(seeAlso(1000));

DROP TABLE IF EXISTS `location_based_near`;
CREATE TABLE `location_based_near` (
	location varchar(128),
	based_near varchar(2944),
	CONSTRAINT pk_location_based_near PRIMARY KEY(location,based_near),
	CONSTRAINT fk_location_based_near FOREIGN KEY(location) REFERENCES `location_main`(location)
);
LOCK TABLES `location_based_near` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/location_based_near.tsv' INTO TABLE `location_based_near` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_arm_group`;
CREATE TABLE `trials_arm_group` (
	trials varchar(128),
	arm_group varchar(2944),
	CONSTRAINT pk_trials_arm_group PRIMARY KEY(trials,arm_group),
	CONSTRAINT fk_trials_arm_group FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_arm_group` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_arm_group.tsv' INTO TABLE `trials_arm_group` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_collaborator_agency`;
CREATE TABLE `trials_collaborator_agency` (
	trials varchar(128),
	collaborator_agency varchar(2944),
	CONSTRAINT pk_trials_collaborator_agency PRIMARY KEY(trials,collaborator_agency),
	CONSTRAINT fk_trials_collaborator_agency FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_collaborator_agency` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_collaborator_agency.tsv' INTO TABLE `trials_collaborator_agency` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_condition`;
CREATE TABLE `trials_condition` (
	trials varchar(128),
	`condition` varchar(2944),
	CONSTRAINT pk_trials_condition PRIMARY KEY(trials,`condition`),
	CONSTRAINT fk_trials_condition FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_condition` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_condition.tsv' INTO TABLE `trials_condition` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_intervention`;
CREATE TABLE `trials_intervention` (
	trials varchar(128),
	intervention varchar(2944),
	CONSTRAINT pk_trials_intervention PRIMARY KEY(trials,intervention),
	CONSTRAINT fk_trials_intervention FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_intervention` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_intervention.tsv' INTO TABLE `trials_intervention` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_location`;
CREATE TABLE `trials_location` (
	trials varchar(128),
	location varchar(2944),
	CONSTRAINT pk_trials_location PRIMARY KEY(trials,location),
	CONSTRAINT fk_trials_location FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_location.tsv' INTO TABLE `trials_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_nct_alias`;
CREATE TABLE `trials_nct_alias` (
	trials varchar(128),
	nct_alias varchar(2944),
	CONSTRAINT pk_trials_nct_alias PRIMARY KEY(trials,nct_alias),
	CONSTRAINT fk_trials_nct_alias FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_nct_alias` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_nct_alias.tsv' INTO TABLE `trials_nct_alias` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_overall_official`;
CREATE TABLE `trials_overall_official` (
	trials varchar(128),
	overall_official varchar(2944),
	CONSTRAINT pk_trials_overall_official PRIMARY KEY(trials,overall_official),
	CONSTRAINT fk_trials_overall_official FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_overall_official` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_overall_official.tsv' INTO TABLE `trials_overall_official` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_oversight`;
CREATE TABLE `trials_oversight` (
	trials varchar(128),
	oversight varchar(2944),
	CONSTRAINT pk_trials_oversight PRIMARY KEY(trials,oversight),
	CONSTRAINT fk_trials_oversight FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_oversight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_oversight.tsv' INTO TABLE `trials_oversight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_primary_outcomes`;
CREATE TABLE `trials_primary_outcomes` (
	trials varchar(128),
	primary_outcomes varchar(2944),
	CONSTRAINT pk_trials_primary_outcomes PRIMARY KEY(trials,primary_outcomes),
	CONSTRAINT fk_trials_primary_outcomes FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_primary_outcomes` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_primary_outcomes.tsv' INTO TABLE `trials_primary_outcomes` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_reference`;
CREATE TABLE `trials_reference` (
	trials varchar(128),
	reference varchar(2944),
	CONSTRAINT pk_trials_reference PRIMARY KEY(trials,reference),
	CONSTRAINT fk_trials_reference FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_reference` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_reference.tsv' INTO TABLE `trials_reference` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_results_reference`;
CREATE TABLE `trials_results_reference` (
	trials varchar(128),
	results_reference varchar(2944),
	CONSTRAINT pk_trials_results_reference PRIMARY KEY(trials,results_reference),
	CONSTRAINT fk_trials_results_reference FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_results_reference` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_results_reference.tsv' INTO TABLE `trials_results_reference` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_secondary_id`;
CREATE TABLE `trials_secondary_id` (
	trials varchar(128),
	secondary_id varchar(2944),
	CONSTRAINT pk_trials_secondary_id PRIMARY KEY(trials,secondary_id),
	CONSTRAINT fk_trials_secondary_id FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_secondary_id` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_secondary_id.tsv' INTO TABLE `trials_secondary_id` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trials_secondary_outcomes`;
CREATE TABLE `trials_secondary_outcomes` (
	trials varchar(128),
	secondary_outcomes varchar(2944),
	CONSTRAINT pk_trials_secondary_outcomes PRIMARY KEY(trials,secondary_outcomes),
	CONSTRAINT fk_trials_secondary_outcomes FOREIGN KEY(trials) REFERENCES `trials_main`(trials)
);
LOCK TABLES `trials_secondary_outcomes` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/linkedct/trials_secondary_outcomes.tsv' INTO TABLE `trials_secondary_outcomes` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;