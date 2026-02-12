-- Auto-generated from mysql/sql.
-- Target: PostgreSQL



DROP TABLE IF EXISTS agency_main;
CREATE TABLE agency_main (
	agency varchar(254) PRIMARY KEY,
	label text,
	agency_id text,
	agency_name text
);
COPY agency_main FROM '/data/prohde/lslod/tsv/linkedct/agency_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS collaborator_agency_main;
CREATE TABLE collaborator_agency_main (
	collaborator_agency varchar(254) PRIMARY KEY,
	label text,
	collaborator_agency_name text,
	collaborator_agency_id text
);
COPY collaborator_agency_main FROM '/data/prohde/lslod/tsv/linkedct/collaborator_agency_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS condition_main;
CREATE TABLE condition_main (
	condition varchar(254) PRIMARY KEY,
	label text,
	condition_id text,
	condition_name text
);
COPY condition_main FROM '/data/prohde/lslod/tsv/linkedct/condition_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS intervention_main;
CREATE TABLE intervention_main (
	intervention varchar(254) PRIMARY KEY,
	label text,
	intervention_id text,
	intervention_name text,
	intervention_type text,
	description text
);
COPY intervention_main FROM '/data/prohde/lslod/tsv/linkedct/intervention_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS location_main;
CREATE TABLE location_main (
	location varchar(254) PRIMARY KEY,
	label text,
	facility_address_zip text,
	location_id text,
	facility_name text,
	facility_address_country text,
	facility_address_city text,
	facility_address_state text
);
COPY location_main FROM '/data/prohde/lslod/tsv/linkedct/location_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS overall_official_main;
CREATE TABLE overall_official_main (
	overall_official varchar(254) PRIMARY KEY,
	label text,
	last_name text,
	overall_official_id text,
	affiliation text
);
COPY overall_official_main FROM '/data/prohde/lslod/tsv/linkedct/overall_official_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS oversight_main;
CREATE TABLE oversight_main (
	oversight varchar(254) PRIMARY KEY,
	label text,
	oversight_oversight_info_authority text,
	oversight_id text
);
COPY oversight_main FROM '/data/prohde/lslod/tsv/linkedct/oversight_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS primary_outcomes_main;
CREATE TABLE primary_outcomes_main (
	primary_outcomes varchar(254) PRIMARY KEY,
	label text,
	primary_outcomes_id text,
	measure text,
	safety_issue text,
	time_frame text
);
COPY primary_outcomes_main FROM '/data/prohde/lslod/tsv/linkedct/primary_outcomes_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS reference_main;
CREATE TABLE reference_main (
	reference varchar(254) PRIMARY KEY,
	label text,
	sameAs text,
	page text,
	PMid text,
	reference_id text,
	citation text
);
COPY reference_main FROM '/data/prohde/lslod/tsv/linkedct/reference_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS results_reference_main;
CREATE TABLE results_reference_main (
	results_reference varchar(254) PRIMARY KEY,
	label text,
	sameAs text,
	page text,
	PMid text,
	citation text,
	results_reference_id text
);
COPY results_reference_main FROM '/data/prohde/lslod/tsv/linkedct/results_reference_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS secondary_outcomes_main;
CREATE TABLE secondary_outcomes_main (
	secondary_outcomes varchar(254) PRIMARY KEY,
	label text,
	safety_issue text,
	time_frame text,
	measure text,
	secondary_outcomes_id text
);
COPY secondary_outcomes_main FROM '/data/prohde/lslod/tsv/linkedct/secondary_outcomes_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trial_arm_group_main;
CREATE TABLE trial_arm_group_main (
	trial_arm_group varchar(254) PRIMARY KEY,
	label text,
	arm_group_type text,
	arm_group_label text,
	arm_group_id text,
	description text
);
COPY trial_arm_group_main FROM '/data/prohde/lslod/tsv/linkedct/trial_arm_group_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_main;
CREATE TABLE trials_main (
	trials varchar(254) PRIMARY KEY,
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
COPY trials_main FROM '/data/prohde/lslod/tsv/linkedct/trials_main.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS condition_sameAs;
CREATE TABLE condition_sameAs (
	condition varchar(254),
	sameAs varchar(2048),
	CONSTRAINT fk_condition_sameAs FOREIGN KEY(condition) REFERENCES condition_main(condition)
);
COPY condition_sameAs FROM '/data/prohde/lslod/tsv/linkedct/condition_sameAs.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS condition_seeAlso;
CREATE TABLE condition_seeAlso (
	condition varchar(254),
	seeAlso varchar(2048),
	CONSTRAINT fk_condition_seeAlso FOREIGN KEY(condition) REFERENCES condition_main(condition)
);
COPY condition_seeAlso FROM '/data/prohde/lslod/tsv/linkedct/condition_seeAlso.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS intervention_seeAlso;
CREATE TABLE intervention_seeAlso (
	intervention varchar(254),
	seeAlso varchar(2048),
	CONSTRAINT fk_intervention_seeAlso FOREIGN KEY(intervention) REFERENCES intervention_main(intervention)
);
COPY intervention_seeAlso FROM '/data/prohde/lslod/tsv/linkedct/intervention_seeAlso.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
CREATE INDEX intervention_seeAlso ON intervention_seeAlso(seeAlso(1000));

DROP TABLE IF EXISTS location_based_near;
CREATE TABLE location_based_near (
	location varchar(254),
	based_near varchar(2048),
	CONSTRAINT fk_location_based_near FOREIGN KEY(location) REFERENCES location_main(location)
);
COPY location_based_near FROM '/data/prohde/lslod/tsv/linkedct/location_based_near.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_arm_group;
CREATE TABLE trials_arm_group (
	trials varchar(254),
	arm_group varchar(2048),
	CONSTRAINT fk_trials_arm_group FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_arm_group FROM '/data/prohde/lslod/tsv/linkedct/trials_arm_group.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_collaborator_agency;
CREATE TABLE trials_collaborator_agency (
	trials varchar(254),
	collaborator_agency varchar(2048),
	CONSTRAINT fk_trials_collaborator_agency FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_collaborator_agency FROM '/data/prohde/lslod/tsv/linkedct/trials_collaborator_agency.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_condition;
CREATE TABLE trials_condition (
	trials varchar(254),
	condition varchar(2048),
	CONSTRAINT fk_trials_condition FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_condition FROM '/data/prohde/lslod/tsv/linkedct/trials_condition.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_intervention;
CREATE TABLE trials_intervention (
	trials varchar(254),
	intervention varchar(2048),
	CONSTRAINT fk_trials_intervention FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_intervention FROM '/data/prohde/lslod/tsv/linkedct/trials_intervention.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_location;
CREATE TABLE trials_location (
	trials varchar(254),
	location varchar(2048),
	CONSTRAINT fk_trials_location FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_location FROM '/data/prohde/lslod/tsv/linkedct/trials_location.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_nct_alias;
CREATE TABLE trials_nct_alias (
	trials varchar(254),
	nct_alias varchar(2048),
	CONSTRAINT fk_trials_nct_alias FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_nct_alias FROM '/data/prohde/lslod/tsv/linkedct/trials_nct_alias.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_overall_official;
CREATE TABLE trials_overall_official (
	trials varchar(254),
	overall_official varchar(2048),
	CONSTRAINT fk_trials_overall_official FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_overall_official FROM '/data/prohde/lslod/tsv/linkedct/trials_overall_official.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_oversight;
CREATE TABLE trials_oversight (
	trials varchar(254),
	oversight varchar(2048),
	CONSTRAINT fk_trials_oversight FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_oversight FROM '/data/prohde/lslod/tsv/linkedct/trials_oversight.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_primary_outcomes;
CREATE TABLE trials_primary_outcomes (
	trials varchar(254),
	primary_outcomes varchar(2048),
	CONSTRAINT fk_trials_primary_outcomes FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_primary_outcomes FROM '/data/prohde/lslod/tsv/linkedct/trials_primary_outcomes.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_reference;
CREATE TABLE trials_reference (
	trials varchar(254),
	reference varchar(2048),
	CONSTRAINT fk_trials_reference FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_reference FROM '/data/prohde/lslod/tsv/linkedct/trials_reference.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_results_reference;
CREATE TABLE trials_results_reference (
	trials varchar(254),
	results_reference varchar(2048),
	CONSTRAINT fk_trials_results_reference FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_results_reference FROM '/data/prohde/lslod/tsv/linkedct/trials_results_reference.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_secondary_id;
CREATE TABLE trials_secondary_id (
	trials varchar(254),
	secondary_id varchar(2048),
	CONSTRAINT fk_trials_secondary_id FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_secondary_id FROM '/data/prohde/lslod/tsv/linkedct/trials_secondary_id.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);

DROP TABLE IF EXISTS trials_secondary_outcomes;
CREATE TABLE trials_secondary_outcomes (
	trials varchar(254),
	secondary_outcomes varchar(2048),
	CONSTRAINT fk_trials_secondary_outcomes FOREIGN KEY(trials) REFERENCES trials_main(trials)
);
COPY trials_secondary_outcomes FROM '/data/prohde/lslod/tsv/linkedct/trials_secondary_outcomes.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true);
