CREATE DATABASE IF NOT EXISTS `tcga` /*!40100 DEFAULT CHARACTER SET latin1 DEFAULT COLLATE latin1_general_cs */;
USE `tcga`;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `aliquot_main`;
CREATE TABLE `aliquot_main` (
	aliquot varchar(254) PRIMARY KEY,
	amount text,
	bcr_aliquot_barcode text,
	bcr_aliquot_uuid text,
	bcr_sample_barcode text,
	biospecimen_barcode_bottom text,
	center_id text,
	concentration text,
	date_of_shipment text,
	is_derived_from_ffpe text,
	plate_column text,
	plate_id text,
	plate_row text,
	source_center text
);
LOCK TABLES `aliquot_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/aliquot_main.tsv' INTO TABLE `aliquot_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `analyte_main`;
CREATE TABLE `analyte_main` (
	analyte varchar(254) PRIMARY KEY,
	amount text,
	bcr_sample_barcode text,
	concentration text,
	is_derived_from_ffpe text,
	a260_a280_ratio text,
	analyte_type text,
	analyte_type_id text,
	bcr_analyte_barcode text,
	bcr_analyte_uuid text,
	gel_image_file text,
	normal_tumor_genotype_match text,
	pcr_amplification_successful text,
	ratio_28s_18s text,
	rinvalue text,
	spectrophotometer_method text,
	well_number text
);
LOCK TABLES `analyte_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/analyte_main.tsv' INTO TABLE `analyte_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_main`;
CREATE TABLE `biospecimen_cqcf_main` (
	biospecimen_cqcf varchar(254) PRIMARY KEY,
	country text,
	country1 text,
	ethnicity text,
	race text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type_other text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	normal_control_type text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	disease_acronym text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_patient_barcode text,
	days_to_drug_therapy_start text,
	drug_name text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text,
	days_to_consent text,
	history_of_prior_malignancy text,
	other_anatomic_site_normal_tissue text,
	tumor_type text,
	days_to_last_followup text,
	eastern_cancer_oncology_group text,
	karnofsky_performance_score text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	anatomic_neoplasm_subdivision_other text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	days_to_birth text,
	diagnosis text,
	dlco_predictive_percent text,
	egfr_mutation_performed text,
	egfr_mutation_result text,
	eml4_alk_translocation_method text,
	eml4_alk_translocation_performed text,
	eml4_alk_translocation_result text,
	extranodal_involvement text,
	kras_gene_analysis_performed text,
	kras_mutation_found text,
	kras_mutation_result text,
	location_in_lung_parenchyma text,
	number_pack_years_smoked text,
	pathologic_M text,
	pathologic_N text,
	pathologic_T text,
	pathologic_stage text,
	post_bronchodilator_fev1_fvc_percent text,
	post_bronchodilator_fev1_percent text,
	pre_bronchodilator_fev1_fvc_percent text,
	pre_bronchodilator_fev1_percent text,
	pulmonary_function_test_performed text,
	residual_tumor text,
	stopped_smoking_year text,
	system_version text,
	tissue_prospective_collection_indicator text,
	tissue_retrospective_collection_indicator text,
	tobacco_smoking_history text,
	year_of_initial_pathologic_diagnosis text,
	year_of_tobacco_smoking_onset text,
	additional_radiation_therapy text,
	new_neoplasm_event_type text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_new_tumor_event_after_initial_treatment text,
	progression_determined_by text,
	other_diagnosis text,
	tumor_focality text,
	new_tumor_event_melanoma_site text,
	pharmaceutical_tx_adjuvant text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text
);
LOCK TABLES `biospecimen_cqcf_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_main.tsv' INTO TABLE `biospecimen_cqcf_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_main`;
CREATE TABLE `clinical_cqcf_main` (
	clinical_cqcf varchar(254) PRIMARY KEY,
	country text,
	country1 text,
	ethnicity text,
	race text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type_other text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	normal_control_type text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_patient_barcode text,
	days_to_drug_therapy_start text,
	drug_name text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text,
	days_to_consent text,
	history_of_prior_malignancy text,
	other_anatomic_site_normal_tissue text,
	tumor_type text,
	days_to_last_followup text,
	eastern_cancer_oncology_group text,
	karnofsky_performance_score text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	anatomic_neoplasm_subdivision_other text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	days_to_birth text,
	diagnosis text,
	dlco_predictive_percent text,
	egfr_mutation_performed text,
	egfr_mutation_result text,
	eml4_alk_translocation_method text,
	eml4_alk_translocation_performed text,
	eml4_alk_translocation_result text,
	extranodal_involvement text,
	kras_gene_analysis_performed text,
	kras_mutation_found text,
	kras_mutation_result text,
	location_in_lung_parenchyma text,
	number_pack_years_smoked text,
	pathologic_M text,
	pathologic_N text,
	pathologic_T text,
	pathologic_stage text,
	post_bronchodilator_fev1_fvc_percent text,
	post_bronchodilator_fev1_percent text,
	pre_bronchodilator_fev1_fvc_percent text,
	pre_bronchodilator_fev1_percent text,
	pulmonary_function_test_performed text,
	residual_tumor text,
	stopped_smoking_year text,
	system_version text,
	tissue_prospective_collection_indicator text,
	tissue_retrospective_collection_indicator text,
	tobacco_smoking_history text,
	year_of_initial_pathologic_diagnosis text,
	year_of_tobacco_smoking_onset text,
	additional_radiation_therapy text,
	new_neoplasm_event_type text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_new_tumor_event_after_initial_treatment text,
	progression_determined_by text,
	other_diagnosis text,
	tumor_focality text,
	new_tumor_event_melanoma_site text,
	pharmaceutical_tx_adjuvant text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text
);
LOCK TABLES `clinical_cqcf_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_main.tsv' INTO TABLE `clinical_cqcf_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_main`;
CREATE TABLE `clinical_nte_main` (
	clinical_nte varchar(254) PRIMARY KEY,
	country text,
	ethnicity text,
	race text,
	consent_or_death_status text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type_other text,
	history_of_neoadjuvant_treatment text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	normal_control_type text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	histologic_diagnosis text,
	history_other_malignancy text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_patient_barcode text,
	bcr_followup_barcode text,
	days_to_consent text,
	history_of_prior_malignancy text,
	other_anatomic_site_normal_tissue text,
	tumor_type text,
	additional_radiation_therapy text,
	new_neoplasm_event_type text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_last_followup text,
	days_to_new_tumor_event_after_initial_treatment text,
	eastern_cancer_oncology_group text,
	karnofsky_performance_score text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	progression_determined_by text,
	anatomic_neoplasm_subdivision_other text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	days_to_birth text,
	diagnosis text,
	dlco_predictive_percent text,
	egfr_mutation_performed text,
	egfr_mutation_result text,
	eml4_alk_translocation_method text,
	eml4_alk_translocation_performed text,
	eml4_alk_translocation_result text,
	extranodal_involvement text,
	kras_gene_analysis_performed text,
	kras_mutation_found text,
	kras_mutation_result text,
	location_in_lung_parenchyma text,
	number_pack_years_smoked text,
	pathologic_M text,
	pathologic_N text,
	pathologic_T text,
	pathologic_stage text,
	post_bronchodilator_fev1_fvc_percent text,
	post_bronchodilator_fev1_percent text,
	pre_bronchodilator_fev1_fvc_percent text,
	pre_bronchodilator_fev1_percent text,
	pulmonary_function_test_performed text,
	residual_tumor text,
	stopped_smoking_year text,
	system_version text,
	tissue_prospective_collection_indicator text,
	tissue_retrospective_collection_indicator text,
	tobacco_smoking_history text,
	year_of_initial_pathologic_diagnosis text,
	year_of_tobacco_smoking_onset text,
	other_diagnosis text,
	tumor_focality text,
	new_tumor_event_melanoma_site text,
	pharmaceutical_tx_adjuvant text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text,
	days_to_drug_therapy_start text,
	drug_name text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text
);
LOCK TABLES `clinical_nte_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_main.tsv' INTO TABLE `clinical_nte_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_main`;
CREATE TABLE `clinical_omf_main` (
	clinical_omf varchar(254) PRIMARY KEY,
	country text,
	country1 text,
	ethnicity text,
	ethnicity1 text,
	race text,
	race1 text,
	consent_or_death_status text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type text,
	histological_type_other text,
	history_of_neoadjuvant_treatment text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	ncedna_dna_qm text,
	ncedna_dna_qty text,
	ncedna_dna_vol text,
	normal_control_type text,
	bcr_shipment_barcode text,
	tumor_necrosis_percent text,
	tumor_nuclei_percent text,
	tumor_weight text,
	days_to_death text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	histologic_diagnosis text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	days_to_drug_therapy_start text,
	drug_name text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_radiation_barcode text,
	bcr_patient_barcode text,
	anatomic_neoplasm_subdivision text,
	other_diagnosis text,
	tumor_focality text,
	new_tumor_event_melanoma_site text,
	pharmaceutical_tx_adjuvant text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	extranodal_involvement text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text
);
LOCK TABLES `clinical_omf_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_main.tsv' INTO TABLE `clinical_omf_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `copy_number_result_main`;
CREATE TABLE `copy_number_result_main` (
	copy_number_result varchar(254) PRIMARY KEY,
	chromosome text,
	seg_mean text,
	start text,
	stop text
);
LOCK TABLES `copy_number_result_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/copy_number_result_main.tsv' INTO TABLE `copy_number_result_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drug_main`;
CREATE TABLE `drug_main` (
	drug varchar(254) PRIMARY KEY,
	bcr_drug_barcode text,
	bcr_drug_uuid text,
	clinical_trial_drug_classification text,
	clinical_trial_indicator text,
	form_completion_date text,
	pharma_adjuvant_cycles_count text,
	pharma_type_other text,
	pharmaceutical_therapy_drug_name text,
	pharmaceutical_therapy_type text,
	pharmaceutical_tx_dose_units text,
	pharmaceutical_tx_ended_days_to text,
	pharmaceutical_tx_ongoing_indicator text,
	pharmaceutical_tx_started_days_to text,
	pharmaceutical_tx_total_dose_units text,
	prescribed_dose text,
	regimen_number text,
	route_of_administration text,
	therapy_regimen text,
	therapy_regimen_other text,
	total_dose text,
	treatment_best_response text,
	additional_radiation_therapy text,
	bcr_followup_barcode text,
	bcr_followup_uuid text,
	days_to_performance_status_follow_up_score text,
	death_days_to text,
	ecog_score text,
	followup_lost_to text,
	followup_reason text,
	karnofsky_score text,
	last_contact_days_to text,
	new_neoplasm_event_type text,
	new_tumor_event_dx_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_pharmaceutical_tx text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	patient_death_reason text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_at_tcga_followup text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	new_non_melanoma_event_histologic_type_text text,
	new_tumor_event_melanoma_count text,
	new_tumor_event_melanoma_location text,
	new_tumor_event_melanoma_site text,
	new_tumor_event_met_site text,
	new_tumor_event_met_site_other text,
	new_tumor_event_radiation_tx text,
	new_tumor_event_site text,
	new_tumor_event_surgery_days_to text,
	new_tumor_event_type text,
	pharmaceutical_tx_adjuvant text,
	subsequent_known_primaries text,
	bcr_radiation_barcode text,
	bcr_radiation_uuid text,
	course_number text,
	radiation_adjuvant_fractions_total text,
	radiation_adjuvant_units text,
	radiation_therapy_ended_days_to text,
	radiation_therapy_ongoing_indicator text,
	radiation_therapy_site text,
	radiation_therapy_started_days_to text,
	radiation_therapy_type text,
	radiation_total_dose text,
	radiation_type_other text,
	bcr_patient_barcode text,
	clinical_trail_drug_classification text,
	days_to_drug_therapy_end text,
	days_to_drug_therapy_start text,
	drug_name text,
	measure_of_response text,
	number_cycles text,
	prescribed_dose_units text,
	regimen_indication text,
	regimen_indication_notes text,
	therapy_ongoing text,
	therapy_type text,
	therapy_type_notes text,
	total_dose_units text,
	tx_on_clinical_trial text
);
LOCK TABLES `drug_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/drug_main.tsv' INTO TABLE `drug_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `expression_gene_lookup_main`;
CREATE TABLE `expression_gene_lookup_main` (
	expression_gene_lookup varchar(254) PRIMARY KEY,
	chromosome text,
	start text,
	stop text,
	Alt_Coord_Chromosome text,
	Alt_Coord_Start text,
	Alt_Coord_Stop text,
	Alt_Coord_Strand text,
	NCBI_Gene_Symbol text,
	NCBI_Replaced_Gene_Id text,
	NCBI_Replaced_Gene_Name text,
	Strand text
);
LOCK TABLES `expression_gene_lookup_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/expression_gene_lookup_main.tsv' INTO TABLE `expression_gene_lookup_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `expression_gene_result_main`;
CREATE TABLE `expression_gene_result_main` (
	expression_gene_result varchar(254) PRIMARY KEY,
	scaled_estimate text,
	chromosome text,
	start text,
	stop text
);
LOCK TABLES `expression_gene_result_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/expression_gene_result_main.tsv' INTO TABLE `expression_gene_result_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `expression_protein_result_main`;
CREATE TABLE `expression_protein_result_main` (
	expression_protein_result varchar(254) PRIMARY KEY,
	protein_expression_value text,
	chromosome text,
	start text,
	stop text
);
LOCK TABLES `expression_protein_result_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/expression_protein_result_main.tsv' INTO TABLE `expression_protein_result_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `follow_up_main`;
CREATE TABLE `follow_up_main` (
	follow_up varchar(254) PRIMARY KEY,
	bcr_drug_barcode text,
	bcr_drug_uuid text,
	clinical_trial_drug_classification text,
	clinical_trial_indicator text,
	form_completion_date text,
	pharma_adjuvant_cycles_count text,
	pharma_type_other text,
	pharmaceutical_therapy_drug_name text,
	pharmaceutical_therapy_type text,
	pharmaceutical_tx_dose_units text,
	pharmaceutical_tx_ended_days_to text,
	pharmaceutical_tx_ongoing_indicator text,
	pharmaceutical_tx_started_days_to text,
	pharmaceutical_tx_total_dose_units text,
	prescribed_dose text,
	regimen_number text,
	route_of_administration text,
	therapy_regimen text,
	therapy_regimen_other text,
	total_dose text,
	treatment_best_response text,
	additional_radiation_therapy text,
	bcr_followup_barcode text,
	bcr_followup_uuid text,
	days_to_performance_status_follow_up_score text,
	death_days_to text,
	ecog_score text,
	followup_lost_to text,
	followup_reason text,
	karnofsky_score text,
	last_contact_days_to text,
	new_neoplasm_event_type text,
	new_tumor_event_dx_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_pharmaceutical_tx text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	patient_death_reason text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_at_tcga_followup text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	new_non_melanoma_event_histologic_type_text text,
	new_tumor_event_melanoma_count text,
	new_tumor_event_melanoma_location text,
	new_tumor_event_melanoma_site text,
	new_tumor_event_met_site text,
	new_tumor_event_met_site_other text,
	new_tumor_event_radiation_tx text,
	new_tumor_event_site text,
	new_tumor_event_surgery_days_to text,
	new_tumor_event_type text,
	pharmaceutical_tx_adjuvant text,
	subsequent_known_primaries text,
	bcr_radiation_barcode text,
	bcr_radiation_uuid text,
	course_number text,
	radiation_adjuvant_fractions_total text,
	radiation_adjuvant_units text,
	radiation_therapy_ended_days_to text,
	radiation_therapy_ongoing_indicator text,
	radiation_therapy_site text,
	radiation_therapy_started_days_to text,
	radiation_therapy_type text,
	radiation_total_dose text,
	radiation_type_other text,
	bcr_patient_barcode text,
	days_to_death text,
	radiation_therapy text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_last_followup text,
	days_to_new_tumor_event_after_initial_treatment text,
	eastern_cancer_oncology_group text,
	followup_case_report_form_submission_reason text,
	followup_treatment_success text,
	karnofsky_performance_score text,
	lost_follow_up text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	progression_determined_by text
);
LOCK TABLES `follow_up_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/follow_up_main.tsv' INTO TABLE `follow_up_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `miRNA_result_main`;
CREATE TABLE `miRNA_result_main` (
	miRNA_result varchar(254) PRIMARY KEY,
	chromosome text,
	start text,
	stop text,
	reads_per_million_miRNA_mapped text
);
LOCK TABLES `miRNA_result_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/miRNA_result_main.tsv' INTO TABLE `miRNA_result_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_main`;
CREATE TABLE `normal_control_main` (
	normal_control varchar(254) PRIMARY KEY,
	country text,
	ethnicity text,
	race text,
	consent_or_death_status text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type_other text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	normal_control_type text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	disease_acronym text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_patient_barcode text,
	days_to_drug_therapy_start text,
	drug_name text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text,
	days_to_consent text,
	history_of_prior_malignancy text,
	other_anatomic_site_normal_tissue text,
	tumor_type text,
	days_to_last_followup text,
	eastern_cancer_oncology_group text,
	karnofsky_performance_score text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	anatomic_neoplasm_subdivision_other text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	days_to_birth text,
	diagnosis text,
	dlco_predictive_percent text,
	egfr_mutation_performed text,
	egfr_mutation_result text,
	eml4_alk_translocation_method text,
	eml4_alk_translocation_performed text,
	eml4_alk_translocation_result text,
	extranodal_involvement text,
	kras_gene_analysis_performed text,
	kras_mutation_found text,
	kras_mutation_result text,
	location_in_lung_parenchyma text,
	number_pack_years_smoked text,
	pathologic_M text,
	pathologic_N text,
	pathologic_T text,
	pathologic_stage text,
	post_bronchodilator_fev1_fvc_percent text,
	post_bronchodilator_fev1_percent text,
	pre_bronchodilator_fev1_fvc_percent text,
	pre_bronchodilator_fev1_percent text,
	pulmonary_function_test_performed text,
	residual_tumor text,
	stopped_smoking_year text,
	system_version text,
	tissue_prospective_collection_indicator text,
	tissue_retrospective_collection_indicator text,
	tobacco_smoking_history text,
	year_of_initial_pathologic_diagnosis text,
	year_of_tobacco_smoking_onset text,
	additional_radiation_therapy text,
	new_neoplasm_event_type text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_new_tumor_event_after_initial_treatment text,
	progression_determined_by text,
	other_diagnosis text,
	tumor_focality text,
	pharmaceutical_tx_adjuvant text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text,
	new_tumor_event_melanoma_site text
);
LOCK TABLES `normal_control_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_main.tsv' INTO TABLE `normal_control_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_main`;
CREATE TABLE `patient_main` (
	patient varchar(254) PRIMARY KEY,
	country text,
	country1 text,
	ethnicity text,
	race text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type_other text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	normal_control_type text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_patient_barcode text,
	days_to_drug_therapy_start text,
	drug_name text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text,
	days_to_consent text,
	history_of_prior_malignancy text,
	other_anatomic_site_normal_tissue text,
	tumor_type text,
	days_to_last_followup text,
	eastern_cancer_oncology_group text,
	karnofsky_performance_score text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	anatomic_neoplasm_subdivision_other text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	days_to_birth text,
	diagnosis text,
	dlco_predictive_percent text,
	egfr_mutation_performed text,
	egfr_mutation_result text,
	eml4_alk_translocation_method text,
	eml4_alk_translocation_performed text,
	eml4_alk_translocation_result text,
	extranodal_involvement text,
	kras_gene_analysis_performed text,
	kras_mutation_found text,
	kras_mutation_result text,
	location_in_lung_parenchyma text,
	number_pack_years_smoked text,
	pathologic_M text,
	pathologic_N text,
	pathologic_T text,
	pathologic_stage text,
	post_bronchodilator_fev1_fvc_percent text,
	post_bronchodilator_fev1_percent text,
	pre_bronchodilator_fev1_fvc_percent text,
	pre_bronchodilator_fev1_percent text,
	pulmonary_function_test_performed text,
	residual_tumor text,
	stopped_smoking_year text,
	system_version text,
	tissue_prospective_collection_indicator text,
	tissue_retrospective_collection_indicator text,
	tobacco_smoking_history text,
	year_of_initial_pathologic_diagnosis text,
	year_of_tobacco_smoking_onset text,
	additional_radiation_therapy text,
	new_neoplasm_event_type text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_new_tumor_event_after_initial_treatment text,
	progression_determined_by text,
	other_diagnosis text,
	tumor_focality text,
	new_tumor_event_melanoma_site text,
	pharmaceutical_tx_adjuvant text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text
);
LOCK TABLES `patient_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_main.tsv' INTO TABLE `patient_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `portion_main`;
CREATE TABLE `portion_main` (
	portion varchar(254) PRIMARY KEY,
	bcr_sample_barcode text,
	LCE text,
	bcr_portion_barcode text,
	bcr_portion_uuid text,
	date_of_creation text,
	is_ffpe text,
	portion_number text,
	weight text
);
LOCK TABLES `portion_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/portion_main.tsv' INTO TABLE `portion_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `protocol_main`;
CREATE TABLE `protocol_main` (
	protocol varchar(254) PRIMARY KEY,
	bcr_sample_barcode text,
	days_to_sample_procurement text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	bcr_sample_uuid text,
	vial_number text,
	is_ffpe text,
	protocol_file_name text,
	protocol_name text,
	NCNNCT_OthMethONSP text,
	current_weight text,
	days_to_collection text,
	freezing_method text,
	initial_weight text,
	intermediate_dimension text,
	longest_dimension text,
	oct_embedded text,
	pathology_report_uuid text,
	sample_type text,
	sample_type_id text,
	shortest_dimension text,
	time_between_clamping_and_freezing text,
	time_between_excision_and_freezing text
);
LOCK TABLES `protocol_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/protocol_main.tsv' INTO TABLE `protocol_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `radiation_main`;
CREATE TABLE `radiation_main` (
	radiation varchar(254) PRIMARY KEY,
	bcr_patient_barcode text,
	bcr_drug_barcode text,
	bcr_drug_uuid text,
	form_completion_date text,
	clinical_trial_indicator text,
	pharmaceutical_therapy_drug_name text,
	clinical_trial_drug_classification text,
	pharmaceutical_therapy_type text,
	pharmaceutical_tx_started_days_to text,
	pharmaceutical_tx_ongoing_indicator text,
	pharmaceutical_tx_ended_days_to text,
	treatment_best_response text,
	pharma_adjuvant_cycles_count text,
	pharma_type_other text,
	pharmaceutical_tx_dose_units text,
	pharmaceutical_tx_total_dose_units text,
	prescribed_dose text,
	regimen_number text,
	route_of_administration text,
	therapy_regimen text,
	therapy_regimen_other text,
	total_dose text,
	bcr_followup_barcode text,
	bcr_followup_uuid text,
	followup_reason text,
	followup_lost_to text,
	radiation_treatment_adjuvant text,
	treatment_outcome_first_course text,
	vital_status text,
	last_contact_days_to text,
	death_days_to text,
	tumor_status text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_dx_days_to text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_met text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_pharmaceutical_tx text,
	treatment_outcome_at_tcga_followup text,
	additional_radiation_therapy text,
	days_to_performance_status_follow_up_score text,
	ecog_score text,
	karnofsky_score text,
	new_neoplasm_event_type text,
	patient_death_reason text,
	performance_status_timing text,
	targeted_molecular_therapy text,
	pharmaceutical_tx_adjuvant text,
	subsequent_known_primaries text,
	new_tumor_event_surgery_days_to text,
	new_tumor_event_radiation_tx text,
	new_tumor_event_type text,
	new_tumor_event_met_site text,
	new_tumor_event_met_site_other text,
	new_tumor_event_melanoma_location text,
	new_tumor_event_melanoma_count text,
	new_tumor_event_melanoma_site text,
	new_tumor_event_site text,
	new_non_melanoma_event_histologic_type_text text,
	bcr_radiation_barcode text,
	bcr_radiation_uuid text,
	radiation_therapy_type text,
	radiation_therapy_site text,
	radiation_total_dose text,
	radiation_adjuvant_units text,
	radiation_adjuvant_fractions_total text,
	radiation_therapy_started_days_to text,
	radiation_therapy_ongoing_indicator text,
	radiation_therapy_ended_days_to text,
	course_number text,
	radiation_type_other text,
	measure_of_response text,
	regimen_indication text,
	regimen_indication_notes text,
	days_to_radiation_therapy_start text,
	radiation_type text,
	anatomic_treatment_site text,
	radiation_dosage text,
	units text,
	numfractions text,
	radiation_treatment_ongoing text,
	days_to_radiation_therapy_end text,
	radiation_type_notes text
);
LOCK TABLES `radiation_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/radiation_main.tsv' INTO TABLE `radiation_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sample_main`;
CREATE TABLE `sample_main` (
	sample varchar(254) PRIMARY KEY,
	bcr_sample_barcode text,
	days_to_sample_procurement text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	bcr_sample_uuid text,
	vial_number text,
	is_ffpe text,
	protocol_file_name text,
	protocol_name text,
	NCNNCT_OthMethONSP text,
	current_weight text,
	days_to_collection text,
	freezing_method text,
	initial_weight text,
	intermediate_dimension text,
	longest_dimension text,
	oct_embedded text,
	pathology_report_uuid text,
	sample_type text,
	sample_type_id text,
	shortest_dimension text,
	time_between_clamping_and_freezing text,
	time_between_excision_and_freezing text
);
LOCK TABLES `sample_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/sample_main.tsv' INTO TABLE `sample_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `shipment_main`;
CREATE TABLE `shipment_main` (
	shipment varchar(254) PRIMARY KEY,
	bcr_sample_barcode text,
	center_id text,
	plate_id text,
	is_ffpe text,
	portion_number text,
	bcr_shipment_portion_uuid text,
	shipment_portion_bcr_aliquot_barcode text,
	shipment_portion_day_of_shipment text,
	shipment_portion_month_of_shipment text,
	shipment_portion_year_of_shipment text
);
LOCK TABLES `shipment_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/shipment_main.tsv' INTO TABLE `shipment_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `slide_main`;
CREATE TABLE `slide_main` (
	slide varchar(254) PRIMARY KEY,
	bcr_sample_barcode text,
	is_derived_from_ffpe text,
	bcr_slide_barcode text,
	bcr_slide_uuid text,
	percent_lymphocyte_infiltration text,
	percent_monocyte_infiltration text,
	percent_necrosis text,
	percent_neutrophil_infiltration text,
	percent_normal_cells text,
	percent_stromal_cells text,
	percent_tumor_cells text,
	percent_tumor_nuclei text,
	section_location text
);
LOCK TABLES `slide_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/slide_main.tsv' INTO TABLE `slide_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `snp_result_main`;
CREATE TABLE `snp_result_main` (
	snp_result varchar(254) PRIMARY KEY,
	chromosome text,
	seg_mean text,
	start text,
	stop text
);
LOCK TABLES `snp_result_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/snp_result_main.tsv' INTO TABLE `snp_result_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_main`;
CREATE TABLE `tumor_sample_main` (
	tumor_sample varchar(254) PRIMARY KEY,
	country text,
	ethnicity text,
	race text,
	consent_or_death_status text,
	days_to_pathology_review text,
	days_to_sample_procurement text,
	digital_image_submitted text,
	histological_type_other text,
	method_of_sample_procurement text,
	other_method_of_sample_procurement text,
	other_vessel_used text,
	path_confirm_diagnosis_matching text,
	path_confirm_report_attached text,
	path_confirm_tumor_necrosis_metrics text,
	path_confirm_tumor_nuclei_metrics text,
	reason_path_confirm_diagnosis_not_matching text,
	sample_prescreened text,
	submitted_for_lce text,
	top_slide_submitted text,
	vessel_used text,
	normal_control_type text,
	diagnosis_subtype text,
	frozen_specimen_anatomic_site text,
	normal_control_proximity_to_tumor text,
	normal_control_site_other text,
	other_anatomic_site text,
	patient_consent_days_to text,
	patient_consent_status text,
	radiation_therapy text,
	tumor_sample_procurement_country text,
	tumor_sample_type text,
	death_days_to text,
	ecog_score text,
	karnofsky_score text,
	last_contact_days_to text,
	new_tumor_event_dx_indicator text,
	new_tumor_event_surgery_days_to_loco text,
	new_tumor_event_surgery_days_to_met text,
	new_tumor_event_surgery_met text,
	performance_status_timing text,
	radiation_treatment_adjuvant text,
	targeted_molecular_therapy text,
	treatment_outcome_first_course text,
	tumor_status text,
	vital_status text,
	age_at_initial_pathologic_diagnosis text,
	allergy_animals_insects_dx_age text,
	allergy_animals_insects_dx_indicator text,
	allergy_animals_insects_dx_type text,
	allergy_food_dx_age text,
	allergy_food_dx_indicator text,
	allergy_food_dx_type text,
	asthma_eczema_allergy_first_dx text,
	bcr_patient_uuid text,
	birth_days_to text,
	days_to_initial_pathologic_diagnosis text,
	disease_acronym text,
	family_history_brain_tumor text,
	family_history_cancer_indicator text,
	first_symptom_longest_duration text,
	gender text,
	histor_hay_fever text,
	history_asthma text,
	history_dust_mold_allergy text,
	history_eczema text,
	history_headaches text,
	history_ionizing_rt_to_head text,
	history_neoadjuvant_medication text,
	history_neoadjuvant_steroid_tx text,
	history_seizures text,
	icd_10 text,
	icd_o_3_histology text,
	icd_o_3_site text,
	idh1_mutation_found text,
	idh1_mutation_test_indicator text,
	idh1_mutation_test_method text,
	informed_consent_verified text,
	inherited_genetic_syndrome_indicator text,
	inherited_genetic_syndrome_specified text,
	initial_pathologic_dx_year text,
	laterality text,
	patient_id text,
	performance_status_days_to text,
	prospective_collection text,
	related_symptom_first_present text,
	retrospective_collection text,
	supratentorial_localization text,
	symp_changes_mental_status text,
	symp_changes_motor_movement text,
	symp_changes_sensory text,
	symp_changes_visual text,
	tissue_source_site text,
	tumor_grade text,
	tumor_site text,
	tumor_tissue_site text,
	bcr_patient_barcode text,
	days_to_drug_therapy_start text,
	drug_name text,
	days_to_other_malignancy_dx text,
	days_to_radiation_therapy_start text,
	days_to_surgical_resection text,
	drug_tx_extent text,
	drug_tx_indicator text,
	malignancy_type text,
	other_malignancy_histological_type_text text,
	rad_tx_to_site_of_primary_tumor text,
	radiation_tx_extent text,
	radiation_tx_indicator text,
	surgery_indicator text,
	surgery_type text,
	days_to_consent text,
	history_of_prior_malignancy text,
	other_anatomic_site_normal_tissue text,
	tumor_type text,
	days_to_last_followup text,
	eastern_cancer_oncology_group text,
	karnofsky_performance_score text,
	new_tumor_event_after_initial_treatment text,
	performance_status_scale_timing text,
	person_neoplasm_cancer_status text,
	primary_therapy_outcome_success text,
	anatomic_neoplasm_subdivision_other text,
	clinical_M text,
	clinical_N text,
	clinical_T text,
	clinical_stage text,
	days_to_birth text,
	diagnosis text,
	dlco_predictive_percent text,
	egfr_mutation_performed text,
	egfr_mutation_result text,
	eml4_alk_translocation_method text,
	eml4_alk_translocation_performed text,
	eml4_alk_translocation_result text,
	extranodal_involvement text,
	kras_gene_analysis_performed text,
	kras_mutation_found text,
	kras_mutation_result text,
	location_in_lung_parenchyma text,
	number_pack_years_smoked text,
	pathologic_M text,
	pathologic_N text,
	pathologic_T text,
	pathologic_stage text,
	post_bronchodilator_fev1_fvc_percent text,
	post_bronchodilator_fev1_percent text,
	pre_bronchodilator_fev1_fvc_percent text,
	pre_bronchodilator_fev1_percent text,
	pulmonary_function_test_performed text,
	residual_tumor text,
	stopped_smoking_year text,
	system_version text,
	tissue_prospective_collection_indicator text,
	tissue_retrospective_collection_indicator text,
	tobacco_smoking_history text,
	year_of_initial_pathologic_diagnosis text,
	year_of_tobacco_smoking_onset text,
	additional_radiation_therapy text,
	new_neoplasm_event_type text,
	additional_pharmaceutical_therapy text,
	additional_surgery_locoregional_procedure text,
	additional_surgery_metastatic_procedure text,
	days_to_additional_surgery_locoregional_procedure text,
	days_to_additional_surgery_metastatic_procedure text,
	days_to_new_tumor_event_after_initial_treatment text,
	progression_determined_by text,
	other_diagnosis text,
	tumor_focality text,
	pharmaceutical_tx_adjuvant text,
	age_at_diagnosis text,
	ajcc_metastasis_pathologic_pm text,
	ajcc_nodes_pathologic_pn text,
	ajcc_pathologic_tumor_stage text,
	ajcc_staging_edition text,
	ajcc_tumor_pathologic_pt text,
	breslow_thickness_at_diagnosis text,
	clark_level_at_diagnosis text,
	height_cm_at_diagnosis text,
	history_neoadjuvant_tx_type text,
	ifn_tx_90_days_prior_to_resection text,
	ldh_level text,
	metastatic_tumor_site text,
	new_tumor_event_prior_to_bcr_tumor text,
	primary_at_dx_count text,
	primary_melanoma_known_dx text,
	primary_melanoma_mitotic_rate text,
	primary_melanoma_skin_type text,
	primary_melanoma_tumor_ulceration text,
	primary_multiple_at_dx text,
	submitted_tumor_dx_days_to text,
	tumor_tissue_site_other text,
	weight_kg_at_diagnosis text,
	new_tumor_event_melanoma_site text
);
LOCK TABLES `tumor_sample_main` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_main.tsv' INTO TABLE `tumor_sample_main` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_anatomic_neoplasm_subdivision`;
CREATE TABLE `biospecimen_cqcf_anatomic_neoplasm_subdivision` (
	biospecimen_cqcf varchar(254),
	anatomic_neoplasm_subdivision varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_anatomic_neoplasm_subdivision FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_anatomic_neoplasm_subdivision` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_anatomic_neoplasm_subdivision.tsv' INTO TABLE `biospecimen_cqcf_anatomic_neoplasm_subdivision` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_aliquot_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_aliquot_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_aliquot_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_aliquot_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_analyte_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_analyte_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_analyte_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_analyte_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_drug_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_drug_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_drug_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_drug_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_followup_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_followup_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_followup_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_followup_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_followup_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_followup_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_followup_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_omf_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_omf_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_omf_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_omf_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_omf_uuid`;
CREATE TABLE `biospecimen_cqcf_bcr_omf_uuid` (
	biospecimen_cqcf varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_omf_uuid FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_omf_uuid.tsv' INTO TABLE `biospecimen_cqcf_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_radiation_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_radiation_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_radiation_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_radiation_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_radiation_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_radiation_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_radiation_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_sample_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_sample_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_sample_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_sample_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_sample_uuid`;
CREATE TABLE `biospecimen_cqcf_bcr_sample_uuid` (
	biospecimen_cqcf varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_sample_uuid FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_sample_uuid.tsv' INTO TABLE `biospecimen_cqcf_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_shipment_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_shipment_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_shipment_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_shipment_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_shipment_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_shipment_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_shipment_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_bcr_slide_barcode`;
CREATE TABLE `biospecimen_cqcf_bcr_slide_barcode` (
	biospecimen_cqcf varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_bcr_slide_barcode FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_bcr_slide_barcode.tsv' INTO TABLE `biospecimen_cqcf_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_consent_or_death_status`;
CREATE TABLE `biospecimen_cqcf_consent_or_death_status` (
	biospecimen_cqcf varchar(254),
	consent_or_death_status varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_consent_or_death_status FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_consent_or_death_status` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_consent_or_death_status.tsv' INTO TABLE `biospecimen_cqcf_consent_or_death_status` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_days_to_death`;
CREATE TABLE `biospecimen_cqcf_days_to_death` (
	biospecimen_cqcf varchar(254),
	days_to_death varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_days_to_death FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_days_to_death` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_days_to_death.tsv' INTO TABLE `biospecimen_cqcf_days_to_death` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_days_to_normal_sample_procurement`;
CREATE TABLE `biospecimen_cqcf_days_to_normal_sample_procurement` (
	biospecimen_cqcf varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_days_to_normal_sample_procurement FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_days_to_normal_sample_procurement.tsv' INTO TABLE `biospecimen_cqcf_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_ethnicity1`;
CREATE TABLE `biospecimen_cqcf_ethnicity1` (
	biospecimen_cqcf varchar(254),
	ethnicity1 varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_ethnicity1 FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_ethnicity1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_ethnicity1.tsv' INTO TABLE `biospecimen_cqcf_ethnicity1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_form_completion_date`;
CREATE TABLE `biospecimen_cqcf_form_completion_date` (
	biospecimen_cqcf varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_form_completion_date FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_form_completion_date.tsv' INTO TABLE `biospecimen_cqcf_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_histologic_diagnosis`;
CREATE TABLE `biospecimen_cqcf_histologic_diagnosis` (
	biospecimen_cqcf varchar(254),
	histologic_diagnosis varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_histologic_diagnosis FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_histologic_diagnosis` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_histologic_diagnosis.tsv' INTO TABLE `biospecimen_cqcf_histologic_diagnosis` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_histological_type`;
CREATE TABLE `biospecimen_cqcf_histological_type` (
	biospecimen_cqcf varchar(254),
	histological_type varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_histological_type FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_histological_type.tsv' INTO TABLE `biospecimen_cqcf_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_history_neoadjuvant_treatment`;
CREATE TABLE `biospecimen_cqcf_history_neoadjuvant_treatment` (
	biospecimen_cqcf varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_history_neoadjuvant_treatment FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_history_neoadjuvant_treatment.tsv' INTO TABLE `biospecimen_cqcf_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_history_of_neoadjuvant_treatment`;
CREATE TABLE `biospecimen_cqcf_history_of_neoadjuvant_treatment` (
	biospecimen_cqcf varchar(254),
	history_of_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_history_of_neoadjuvant_treatment FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_history_of_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_history_of_neoadjuvant_treatment.tsv' INTO TABLE `biospecimen_cqcf_history_of_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_history_other_malignancy`;
CREATE TABLE `biospecimen_cqcf_history_other_malignancy` (
	biospecimen_cqcf varchar(254),
	history_other_malignancy varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_history_other_malignancy FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_history_other_malignancy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_history_other_malignancy.tsv' INTO TABLE `biospecimen_cqcf_history_other_malignancy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_method_of_normal_sample_procurement`;
CREATE TABLE `biospecimen_cqcf_method_of_normal_sample_procurement` (
	biospecimen_cqcf varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_method_of_normal_sample_procurement FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_method_of_normal_sample_procurement.tsv' INTO TABLE `biospecimen_cqcf_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_ncedna_dna_conc`;
CREATE TABLE `biospecimen_cqcf_ncedna_dna_conc` (
	biospecimen_cqcf varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_ncedna_dna_conc FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_ncedna_dna_conc.tsv' INTO TABLE `biospecimen_cqcf_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_ncedna_dna_qm`;
CREATE TABLE `biospecimen_cqcf_ncedna_dna_qm` (
	biospecimen_cqcf varchar(254),
	ncedna_dna_qm varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_ncedna_dna_qm FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_ncedna_dna_qm` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_ncedna_dna_qm.tsv' INTO TABLE `biospecimen_cqcf_ncedna_dna_qm` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_ncedna_dna_qty`;
CREATE TABLE `biospecimen_cqcf_ncedna_dna_qty` (
	biospecimen_cqcf varchar(254),
	ncedna_dna_qty varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_ncedna_dna_qty FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_ncedna_dna_qty` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_ncedna_dna_qty.tsv' INTO TABLE `biospecimen_cqcf_ncedna_dna_qty` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_ncedna_dna_vol`;
CREATE TABLE `biospecimen_cqcf_ncedna_dna_vol` (
	biospecimen_cqcf varchar(254),
	ncedna_dna_vol varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_ncedna_dna_vol FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_ncedna_dna_vol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_ncedna_dna_vol.tsv' INTO TABLE `biospecimen_cqcf_ncedna_dna_vol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `biospecimen_cqcf_new_non_melanoma_event_histologic_type_text` (
	biospecimen_cqcf varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_non_melanoma_event_histologic_type_text FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `biospecimen_cqcf_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_dx_days_to`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_dx_days_to` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_dx_days_to FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_dx_days_to.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_melanoma_count`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_melanoma_count` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_melanoma_count FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_melanoma_count.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_melanoma_location`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_melanoma_location` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_melanoma_location FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_melanoma_location.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_met_site`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_met_site` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_met_site FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_met_site.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_met_site_other`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_met_site_other` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_met_site_other FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_met_site_other.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_pharmaceutical_tx` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_pharmaceutical_tx FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_radiation_tx`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_radiation_tx` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_radiation_tx FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_radiation_tx.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_site`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_site` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_site FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_site.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_surgery`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_surgery` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_surgery FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_surgery.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_surgery_days_to`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_surgery_days_to` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_surgery_days_to FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_surgery_days_to.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_new_tumor_event_type`;
CREATE TABLE `biospecimen_cqcf_new_tumor_event_type` (
	biospecimen_cqcf varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_new_tumor_event_type FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_new_tumor_event_type.tsv' INTO TABLE `biospecimen_cqcf_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_normal_tissue_anatomic_site`;
CREATE TABLE `biospecimen_cqcf_normal_tissue_anatomic_site` (
	biospecimen_cqcf varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_normal_tissue_anatomic_site FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_normal_tissue_anatomic_site.tsv' INTO TABLE `biospecimen_cqcf_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_normal_tissue_proximity`;
CREATE TABLE `biospecimen_cqcf_normal_tissue_proximity` (
	biospecimen_cqcf varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_normal_tissue_proximity FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_normal_tissue_proximity.tsv' INTO TABLE `biospecimen_cqcf_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_other_malignancy_anatomic_site`;
CREATE TABLE `biospecimen_cqcf_other_malignancy_anatomic_site` (
	biospecimen_cqcf varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_other_malignancy_anatomic_site FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_other_malignancy_anatomic_site.tsv' INTO TABLE `biospecimen_cqcf_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_other_malignancy_anatomic_site_text`;
CREATE TABLE `biospecimen_cqcf_other_malignancy_anatomic_site_text` (
	biospecimen_cqcf varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_other_malignancy_anatomic_site_text FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_other_malignancy_anatomic_site_text.tsv' INTO TABLE `biospecimen_cqcf_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_other_malignancy_histological_type`;
CREATE TABLE `biospecimen_cqcf_other_malignancy_histological_type` (
	biospecimen_cqcf varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_other_malignancy_histological_type FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_other_malignancy_histological_type.tsv' INTO TABLE `biospecimen_cqcf_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_other_malignancy_laterality`;
CREATE TABLE `biospecimen_cqcf_other_malignancy_laterality` (
	biospecimen_cqcf varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_other_malignancy_laterality FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_other_malignancy_laterality.tsv' INTO TABLE `biospecimen_cqcf_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_prior_dx`;
CREATE TABLE `biospecimen_cqcf_prior_dx` (
	biospecimen_cqcf varchar(254),
	prior_dx varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_prior_dx FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_prior_dx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_prior_dx.tsv' INTO TABLE `biospecimen_cqcf_prior_dx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_race1`;
CREATE TABLE `biospecimen_cqcf_race1` (
	biospecimen_cqcf varchar(254),
	race1 varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_race1 FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_race1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_race1.tsv' INTO TABLE `biospecimen_cqcf_race1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_result`;
CREATE TABLE `biospecimen_cqcf_result` (
	biospecimen_cqcf varchar(254),
	result varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_result FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_result.tsv' INTO TABLE `biospecimen_cqcf_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_submitted_tumor_site`;
CREATE TABLE `biospecimen_cqcf_submitted_tumor_site` (
	biospecimen_cqcf varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_submitted_tumor_site FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_submitted_tumor_site.tsv' INTO TABLE `biospecimen_cqcf_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_tumor_necrosis_percent`;
CREATE TABLE `biospecimen_cqcf_tumor_necrosis_percent` (
	biospecimen_cqcf varchar(254),
	tumor_necrosis_percent varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_tumor_necrosis_percent FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_tumor_necrosis_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_tumor_necrosis_percent.tsv' INTO TABLE `biospecimen_cqcf_tumor_necrosis_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_tumor_nuclei_percent`;
CREATE TABLE `biospecimen_cqcf_tumor_nuclei_percent` (
	biospecimen_cqcf varchar(254),
	tumor_nuclei_percent varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_tumor_nuclei_percent FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_tumor_nuclei_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_tumor_nuclei_percent.tsv' INTO TABLE `biospecimen_cqcf_tumor_nuclei_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_tumor_weight`;
CREATE TABLE `biospecimen_cqcf_tumor_weight` (
	biospecimen_cqcf varchar(254),
	tumor_weight varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_tumor_weight FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_tumor_weight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_tumor_weight.tsv' INTO TABLE `biospecimen_cqcf_tumor_weight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `biospecimen_cqcf_vial_number`;
CREATE TABLE `biospecimen_cqcf_vial_number` (
	biospecimen_cqcf varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_biospecimen_cqcf_vial_number FOREIGN KEY(biospecimen_cqcf) REFERENCES `biospecimen_cqcf_main`(biospecimen_cqcf)
);
LOCK TABLES `biospecimen_cqcf_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/biospecimen_cqcf_vial_number.tsv' INTO TABLE `biospecimen_cqcf_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_anatomic_neoplasm_subdivision`;
CREATE TABLE `clinical_cqcf_anatomic_neoplasm_subdivision` (
	clinical_cqcf varchar(254),
	anatomic_neoplasm_subdivision varchar(2048),
	CONSTRAINT fk_clinical_cqcf_anatomic_neoplasm_subdivision FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_anatomic_neoplasm_subdivision` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_anatomic_neoplasm_subdivision.tsv' INTO TABLE `clinical_cqcf_anatomic_neoplasm_subdivision` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_aliquot_barcode`;
CREATE TABLE `clinical_cqcf_bcr_aliquot_barcode` (
	clinical_cqcf varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_aliquot_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_aliquot_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_analyte_barcode`;
CREATE TABLE `clinical_cqcf_bcr_analyte_barcode` (
	clinical_cqcf varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_analyte_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_analyte_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_drug_barcode`;
CREATE TABLE `clinical_cqcf_bcr_drug_barcode` (
	clinical_cqcf varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_drug_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_drug_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_followup_barcode`;
CREATE TABLE `clinical_cqcf_bcr_followup_barcode` (
	clinical_cqcf varchar(254),
	bcr_followup_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_followup_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_followup_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_followup_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_followup_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_omf_barcode`;
CREATE TABLE `clinical_cqcf_bcr_omf_barcode` (
	clinical_cqcf varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_omf_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_omf_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_omf_uuid`;
CREATE TABLE `clinical_cqcf_bcr_omf_uuid` (
	clinical_cqcf varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_omf_uuid FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_omf_uuid.tsv' INTO TABLE `clinical_cqcf_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_radiation_barcode`;
CREATE TABLE `clinical_cqcf_bcr_radiation_barcode` (
	clinical_cqcf varchar(254),
	bcr_radiation_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_radiation_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_radiation_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_radiation_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_radiation_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_sample_barcode`;
CREATE TABLE `clinical_cqcf_bcr_sample_barcode` (
	clinical_cqcf varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_sample_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_sample_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_sample_uuid`;
CREATE TABLE `clinical_cqcf_bcr_sample_uuid` (
	clinical_cqcf varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_sample_uuid FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_sample_uuid.tsv' INTO TABLE `clinical_cqcf_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_shipment_barcode`;
CREATE TABLE `clinical_cqcf_bcr_shipment_barcode` (
	clinical_cqcf varchar(254),
	bcr_shipment_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_shipment_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_shipment_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_shipment_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_shipment_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_bcr_slide_barcode`;
CREATE TABLE `clinical_cqcf_bcr_slide_barcode` (
	clinical_cqcf varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_clinical_cqcf_bcr_slide_barcode FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_bcr_slide_barcode.tsv' INTO TABLE `clinical_cqcf_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_consent_or_death_status`;
CREATE TABLE `clinical_cqcf_consent_or_death_status` (
	clinical_cqcf varchar(254),
	consent_or_death_status varchar(2048),
	CONSTRAINT fk_clinical_cqcf_consent_or_death_status FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_consent_or_death_status` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_consent_or_death_status.tsv' INTO TABLE `clinical_cqcf_consent_or_death_status` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_days_to_death`;
CREATE TABLE `clinical_cqcf_days_to_death` (
	clinical_cqcf varchar(254),
	days_to_death varchar(2048),
	CONSTRAINT fk_clinical_cqcf_days_to_death FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_days_to_death` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_days_to_death.tsv' INTO TABLE `clinical_cqcf_days_to_death` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_days_to_normal_sample_procurement`;
CREATE TABLE `clinical_cqcf_days_to_normal_sample_procurement` (
	clinical_cqcf varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_clinical_cqcf_days_to_normal_sample_procurement FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_days_to_normal_sample_procurement.tsv' INTO TABLE `clinical_cqcf_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_disease_acronym`;
CREATE TABLE `clinical_cqcf_disease_acronym` (
	clinical_cqcf varchar(254),
	disease_acronym varchar(2048),
	CONSTRAINT fk_clinical_cqcf_disease_acronym FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_disease_acronym` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_disease_acronym.tsv' INTO TABLE `clinical_cqcf_disease_acronym` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_ethnicity1`;
CREATE TABLE `clinical_cqcf_ethnicity1` (
	clinical_cqcf varchar(254),
	ethnicity1 varchar(2048),
	CONSTRAINT fk_clinical_cqcf_ethnicity1 FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_ethnicity1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_ethnicity1.tsv' INTO TABLE `clinical_cqcf_ethnicity1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_form_completion_date`;
CREATE TABLE `clinical_cqcf_form_completion_date` (
	clinical_cqcf varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_clinical_cqcf_form_completion_date FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_form_completion_date.tsv' INTO TABLE `clinical_cqcf_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_histologic_diagnosis`;
CREATE TABLE `clinical_cqcf_histologic_diagnosis` (
	clinical_cqcf varchar(254),
	histologic_diagnosis varchar(2048),
	CONSTRAINT fk_clinical_cqcf_histologic_diagnosis FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_histologic_diagnosis` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_histologic_diagnosis.tsv' INTO TABLE `clinical_cqcf_histologic_diagnosis` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_histological_type`;
CREATE TABLE `clinical_cqcf_histological_type` (
	clinical_cqcf varchar(254),
	histological_type varchar(2048),
	CONSTRAINT fk_clinical_cqcf_histological_type FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_histological_type.tsv' INTO TABLE `clinical_cqcf_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_history_neoadjuvant_treatment`;
CREATE TABLE `clinical_cqcf_history_neoadjuvant_treatment` (
	clinical_cqcf varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_clinical_cqcf_history_neoadjuvant_treatment FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_history_neoadjuvant_treatment.tsv' INTO TABLE `clinical_cqcf_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_history_of_neoadjuvant_treatment`;
CREATE TABLE `clinical_cqcf_history_of_neoadjuvant_treatment` (
	clinical_cqcf varchar(254),
	history_of_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_clinical_cqcf_history_of_neoadjuvant_treatment FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_history_of_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_history_of_neoadjuvant_treatment.tsv' INTO TABLE `clinical_cqcf_history_of_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_history_other_malignancy`;
CREATE TABLE `clinical_cqcf_history_other_malignancy` (
	clinical_cqcf varchar(254),
	history_other_malignancy varchar(2048),
	CONSTRAINT fk_clinical_cqcf_history_other_malignancy FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_history_other_malignancy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_history_other_malignancy.tsv' INTO TABLE `clinical_cqcf_history_other_malignancy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_method_of_normal_sample_procurement`;
CREATE TABLE `clinical_cqcf_method_of_normal_sample_procurement` (
	clinical_cqcf varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_clinical_cqcf_method_of_normal_sample_procurement FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_method_of_normal_sample_procurement.tsv' INTO TABLE `clinical_cqcf_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_ncedna_dna_conc`;
CREATE TABLE `clinical_cqcf_ncedna_dna_conc` (
	clinical_cqcf varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_clinical_cqcf_ncedna_dna_conc FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_ncedna_dna_conc.tsv' INTO TABLE `clinical_cqcf_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_ncedna_dna_qm`;
CREATE TABLE `clinical_cqcf_ncedna_dna_qm` (
	clinical_cqcf varchar(254),
	ncedna_dna_qm varchar(2048),
	CONSTRAINT fk_clinical_cqcf_ncedna_dna_qm FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_ncedna_dna_qm` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_ncedna_dna_qm.tsv' INTO TABLE `clinical_cqcf_ncedna_dna_qm` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_ncedna_dna_qty`;
CREATE TABLE `clinical_cqcf_ncedna_dna_qty` (
	clinical_cqcf varchar(254),
	ncedna_dna_qty varchar(2048),
	CONSTRAINT fk_clinical_cqcf_ncedna_dna_qty FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_ncedna_dna_qty` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_ncedna_dna_qty.tsv' INTO TABLE `clinical_cqcf_ncedna_dna_qty` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_ncedna_dna_vol`;
CREATE TABLE `clinical_cqcf_ncedna_dna_vol` (
	clinical_cqcf varchar(254),
	ncedna_dna_vol varchar(2048),
	CONSTRAINT fk_clinical_cqcf_ncedna_dna_vol FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_ncedna_dna_vol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_ncedna_dna_vol.tsv' INTO TABLE `clinical_cqcf_ncedna_dna_vol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `clinical_cqcf_new_non_melanoma_event_histologic_type_text` (
	clinical_cqcf varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_non_melanoma_event_histologic_type_text FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `clinical_cqcf_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_dx_days_to`;
CREATE TABLE `clinical_cqcf_new_tumor_event_dx_days_to` (
	clinical_cqcf varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_dx_days_to FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_dx_days_to.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_melanoma_count`;
CREATE TABLE `clinical_cqcf_new_tumor_event_melanoma_count` (
	clinical_cqcf varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_melanoma_count FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_melanoma_count.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_melanoma_location`;
CREATE TABLE `clinical_cqcf_new_tumor_event_melanoma_location` (
	clinical_cqcf varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_melanoma_location FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_melanoma_location.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_met_site`;
CREATE TABLE `clinical_cqcf_new_tumor_event_met_site` (
	clinical_cqcf varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_met_site FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_met_site.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_met_site_other`;
CREATE TABLE `clinical_cqcf_new_tumor_event_met_site_other` (
	clinical_cqcf varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_met_site_other FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_met_site_other.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `clinical_cqcf_new_tumor_event_pharmaceutical_tx` (
	clinical_cqcf varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_pharmaceutical_tx FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_radiation_tx`;
CREATE TABLE `clinical_cqcf_new_tumor_event_radiation_tx` (
	clinical_cqcf varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_radiation_tx FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_radiation_tx.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_site`;
CREATE TABLE `clinical_cqcf_new_tumor_event_site` (
	clinical_cqcf varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_site FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_site.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_surgery`;
CREATE TABLE `clinical_cqcf_new_tumor_event_surgery` (
	clinical_cqcf varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_surgery FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_surgery.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_surgery_days_to`;
CREATE TABLE `clinical_cqcf_new_tumor_event_surgery_days_to` (
	clinical_cqcf varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_surgery_days_to FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_surgery_days_to.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_new_tumor_event_type`;
CREATE TABLE `clinical_cqcf_new_tumor_event_type` (
	clinical_cqcf varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_clinical_cqcf_new_tumor_event_type FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_new_tumor_event_type.tsv' INTO TABLE `clinical_cqcf_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_normal_tissue_anatomic_site`;
CREATE TABLE `clinical_cqcf_normal_tissue_anatomic_site` (
	clinical_cqcf varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_clinical_cqcf_normal_tissue_anatomic_site FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_normal_tissue_anatomic_site.tsv' INTO TABLE `clinical_cqcf_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_normal_tissue_proximity`;
CREATE TABLE `clinical_cqcf_normal_tissue_proximity` (
	clinical_cqcf varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_clinical_cqcf_normal_tissue_proximity FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_normal_tissue_proximity.tsv' INTO TABLE `clinical_cqcf_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_other_malignancy_anatomic_site`;
CREATE TABLE `clinical_cqcf_other_malignancy_anatomic_site` (
	clinical_cqcf varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_clinical_cqcf_other_malignancy_anatomic_site FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_other_malignancy_anatomic_site.tsv' INTO TABLE `clinical_cqcf_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_other_malignancy_anatomic_site_text`;
CREATE TABLE `clinical_cqcf_other_malignancy_anatomic_site_text` (
	clinical_cqcf varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_clinical_cqcf_other_malignancy_anatomic_site_text FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_other_malignancy_anatomic_site_text.tsv' INTO TABLE `clinical_cqcf_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_other_malignancy_histological_type`;
CREATE TABLE `clinical_cqcf_other_malignancy_histological_type` (
	clinical_cqcf varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_clinical_cqcf_other_malignancy_histological_type FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_other_malignancy_histological_type.tsv' INTO TABLE `clinical_cqcf_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_other_malignancy_laterality`;
CREATE TABLE `clinical_cqcf_other_malignancy_laterality` (
	clinical_cqcf varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_clinical_cqcf_other_malignancy_laterality FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_other_malignancy_laterality.tsv' INTO TABLE `clinical_cqcf_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_prior_dx`;
CREATE TABLE `clinical_cqcf_prior_dx` (
	clinical_cqcf varchar(254),
	prior_dx varchar(2048),
	CONSTRAINT fk_clinical_cqcf_prior_dx FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_prior_dx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_prior_dx.tsv' INTO TABLE `clinical_cqcf_prior_dx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_race1`;
CREATE TABLE `clinical_cqcf_race1` (
	clinical_cqcf varchar(254),
	race1 varchar(2048),
	CONSTRAINT fk_clinical_cqcf_race1 FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_race1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_race1.tsv' INTO TABLE `clinical_cqcf_race1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_result`;
CREATE TABLE `clinical_cqcf_result` (
	clinical_cqcf varchar(254),
	result varchar(2048),
	CONSTRAINT fk_clinical_cqcf_result FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_result.tsv' INTO TABLE `clinical_cqcf_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_submitted_tumor_site`;
CREATE TABLE `clinical_cqcf_submitted_tumor_site` (
	clinical_cqcf varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_clinical_cqcf_submitted_tumor_site FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_submitted_tumor_site.tsv' INTO TABLE `clinical_cqcf_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_tumor_necrosis_percent`;
CREATE TABLE `clinical_cqcf_tumor_necrosis_percent` (
	clinical_cqcf varchar(254),
	tumor_necrosis_percent varchar(2048),
	CONSTRAINT fk_clinical_cqcf_tumor_necrosis_percent FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_tumor_necrosis_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_tumor_necrosis_percent.tsv' INTO TABLE `clinical_cqcf_tumor_necrosis_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_tumor_nuclei_percent`;
CREATE TABLE `clinical_cqcf_tumor_nuclei_percent` (
	clinical_cqcf varchar(254),
	tumor_nuclei_percent varchar(2048),
	CONSTRAINT fk_clinical_cqcf_tumor_nuclei_percent FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_tumor_nuclei_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_tumor_nuclei_percent.tsv' INTO TABLE `clinical_cqcf_tumor_nuclei_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_tumor_weight`;
CREATE TABLE `clinical_cqcf_tumor_weight` (
	clinical_cqcf varchar(254),
	tumor_weight varchar(2048),
	CONSTRAINT fk_clinical_cqcf_tumor_weight FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_tumor_weight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_tumor_weight.tsv' INTO TABLE `clinical_cqcf_tumor_weight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_cqcf_vial_number`;
CREATE TABLE `clinical_cqcf_vial_number` (
	clinical_cqcf varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_clinical_cqcf_vial_number FOREIGN KEY(clinical_cqcf) REFERENCES `clinical_cqcf_main`(clinical_cqcf)
);
LOCK TABLES `clinical_cqcf_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_cqcf_vial_number.tsv' INTO TABLE `clinical_cqcf_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_anatomic_neoplasm_subdivision`;
CREATE TABLE `clinical_nte_anatomic_neoplasm_subdivision` (
	clinical_nte varchar(254),
	anatomic_neoplasm_subdivision varchar(2048),
	CONSTRAINT fk_clinical_nte_anatomic_neoplasm_subdivision FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_anatomic_neoplasm_subdivision` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_anatomic_neoplasm_subdivision.tsv' INTO TABLE `clinical_nte_anatomic_neoplasm_subdivision` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_aliquot_barcode`;
CREATE TABLE `clinical_nte_bcr_aliquot_barcode` (
	clinical_nte varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_aliquot_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_aliquot_barcode.tsv' INTO TABLE `clinical_nte_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_analyte_barcode`;
CREATE TABLE `clinical_nte_bcr_analyte_barcode` (
	clinical_nte varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_analyte_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_analyte_barcode.tsv' INTO TABLE `clinical_nte_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_drug_barcode`;
CREATE TABLE `clinical_nte_bcr_drug_barcode` (
	clinical_nte varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_drug_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_drug_barcode.tsv' INTO TABLE `clinical_nte_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_omf_barcode`;
CREATE TABLE `clinical_nte_bcr_omf_barcode` (
	clinical_nte varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_omf_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_omf_barcode.tsv' INTO TABLE `clinical_nte_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_omf_uuid`;
CREATE TABLE `clinical_nte_bcr_omf_uuid` (
	clinical_nte varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_omf_uuid FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_omf_uuid.tsv' INTO TABLE `clinical_nte_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_radiation_barcode`;
CREATE TABLE `clinical_nte_bcr_radiation_barcode` (
	clinical_nte varchar(254),
	bcr_radiation_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_radiation_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_radiation_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_radiation_barcode.tsv' INTO TABLE `clinical_nte_bcr_radiation_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_sample_barcode`;
CREATE TABLE `clinical_nte_bcr_sample_barcode` (
	clinical_nte varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_sample_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_sample_barcode.tsv' INTO TABLE `clinical_nte_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_sample_uuid`;
CREATE TABLE `clinical_nte_bcr_sample_uuid` (
	clinical_nte varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_sample_uuid FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_sample_uuid.tsv' INTO TABLE `clinical_nte_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_shipment_barcode`;
CREATE TABLE `clinical_nte_bcr_shipment_barcode` (
	clinical_nte varchar(254),
	bcr_shipment_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_shipment_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_shipment_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_shipment_barcode.tsv' INTO TABLE `clinical_nte_bcr_shipment_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_bcr_slide_barcode`;
CREATE TABLE `clinical_nte_bcr_slide_barcode` (
	clinical_nte varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_clinical_nte_bcr_slide_barcode FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_bcr_slide_barcode.tsv' INTO TABLE `clinical_nte_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_days_to_death`;
CREATE TABLE `clinical_nte_days_to_death` (
	clinical_nte varchar(254),
	days_to_death varchar(2048),
	CONSTRAINT fk_clinical_nte_days_to_death FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_days_to_death` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_days_to_death.tsv' INTO TABLE `clinical_nte_days_to_death` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_days_to_normal_sample_procurement`;
CREATE TABLE `clinical_nte_days_to_normal_sample_procurement` (
	clinical_nte varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_clinical_nte_days_to_normal_sample_procurement FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_days_to_normal_sample_procurement.tsv' INTO TABLE `clinical_nte_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_disease_acronym`;
CREATE TABLE `clinical_nte_disease_acronym` (
	clinical_nte varchar(254),
	disease_acronym varchar(2048),
	CONSTRAINT fk_clinical_nte_disease_acronym FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_disease_acronym` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_disease_acronym.tsv' INTO TABLE `clinical_nte_disease_acronym` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_ethnicity1`;
CREATE TABLE `clinical_nte_ethnicity1` (
	clinical_nte varchar(254),
	ethnicity1 varchar(2048),
	CONSTRAINT fk_clinical_nte_ethnicity1 FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_ethnicity1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_ethnicity1.tsv' INTO TABLE `clinical_nte_ethnicity1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_form_completion_date`;
CREATE TABLE `clinical_nte_form_completion_date` (
	clinical_nte varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_clinical_nte_form_completion_date FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_form_completion_date.tsv' INTO TABLE `clinical_nte_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_histological_type`;
CREATE TABLE `clinical_nte_histological_type` (
	clinical_nte varchar(254),
	histological_type varchar(2048),
	CONSTRAINT fk_clinical_nte_histological_type FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_histological_type.tsv' INTO TABLE `clinical_nte_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_history_neoadjuvant_treatment`;
CREATE TABLE `clinical_nte_history_neoadjuvant_treatment` (
	clinical_nte varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_clinical_nte_history_neoadjuvant_treatment FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_history_neoadjuvant_treatment.tsv' INTO TABLE `clinical_nte_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_method_of_normal_sample_procurement`;
CREATE TABLE `clinical_nte_method_of_normal_sample_procurement` (
	clinical_nte varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_clinical_nte_method_of_normal_sample_procurement FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_method_of_normal_sample_procurement.tsv' INTO TABLE `clinical_nte_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_ncedna_dna_conc`;
CREATE TABLE `clinical_nte_ncedna_dna_conc` (
	clinical_nte varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_clinical_nte_ncedna_dna_conc FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_ncedna_dna_conc.tsv' INTO TABLE `clinical_nte_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_ncedna_dna_qm`;
CREATE TABLE `clinical_nte_ncedna_dna_qm` (
	clinical_nte varchar(254),
	ncedna_dna_qm varchar(2048),
	CONSTRAINT fk_clinical_nte_ncedna_dna_qm FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_ncedna_dna_qm` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_ncedna_dna_qm.tsv' INTO TABLE `clinical_nte_ncedna_dna_qm` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_ncedna_dna_qty`;
CREATE TABLE `clinical_nte_ncedna_dna_qty` (
	clinical_nte varchar(254),
	ncedna_dna_qty varchar(2048),
	CONSTRAINT fk_clinical_nte_ncedna_dna_qty FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_ncedna_dna_qty` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_ncedna_dna_qty.tsv' INTO TABLE `clinical_nte_ncedna_dna_qty` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_ncedna_dna_vol`;
CREATE TABLE `clinical_nte_ncedna_dna_vol` (
	clinical_nte varchar(254),
	ncedna_dna_vol varchar(2048),
	CONSTRAINT fk_clinical_nte_ncedna_dna_vol FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_ncedna_dna_vol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_ncedna_dna_vol.tsv' INTO TABLE `clinical_nte_ncedna_dna_vol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `clinical_nte_new_non_melanoma_event_histologic_type_text` (
	clinical_nte varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_clinical_nte_new_non_melanoma_event_histologic_type_text FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `clinical_nte_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_dx_days_to`;
CREATE TABLE `clinical_nte_new_tumor_event_dx_days_to` (
	clinical_nte varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_dx_days_to FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_dx_days_to.tsv' INTO TABLE `clinical_nte_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_melanoma_count`;
CREATE TABLE `clinical_nte_new_tumor_event_melanoma_count` (
	clinical_nte varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_melanoma_count FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_melanoma_count.tsv' INTO TABLE `clinical_nte_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_melanoma_location`;
CREATE TABLE `clinical_nte_new_tumor_event_melanoma_location` (
	clinical_nte varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_melanoma_location FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_melanoma_location.tsv' INTO TABLE `clinical_nte_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_met_site`;
CREATE TABLE `clinical_nte_new_tumor_event_met_site` (
	clinical_nte varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_met_site FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_met_site.tsv' INTO TABLE `clinical_nte_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_met_site_other`;
CREATE TABLE `clinical_nte_new_tumor_event_met_site_other` (
	clinical_nte varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_met_site_other FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_met_site_other.tsv' INTO TABLE `clinical_nte_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `clinical_nte_new_tumor_event_pharmaceutical_tx` (
	clinical_nte varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_pharmaceutical_tx FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `clinical_nte_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_radiation_tx`;
CREATE TABLE `clinical_nte_new_tumor_event_radiation_tx` (
	clinical_nte varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_radiation_tx FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_radiation_tx.tsv' INTO TABLE `clinical_nte_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_site`;
CREATE TABLE `clinical_nte_new_tumor_event_site` (
	clinical_nte varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_site FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_site.tsv' INTO TABLE `clinical_nte_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_surgery`;
CREATE TABLE `clinical_nte_new_tumor_event_surgery` (
	clinical_nte varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_surgery FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_surgery.tsv' INTO TABLE `clinical_nte_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_surgery_days_to`;
CREATE TABLE `clinical_nte_new_tumor_event_surgery_days_to` (
	clinical_nte varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_surgery_days_to FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_surgery_days_to.tsv' INTO TABLE `clinical_nte_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_new_tumor_event_type`;
CREATE TABLE `clinical_nte_new_tumor_event_type` (
	clinical_nte varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_clinical_nte_new_tumor_event_type FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_new_tumor_event_type.tsv' INTO TABLE `clinical_nte_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_normal_tissue_anatomic_site`;
CREATE TABLE `clinical_nte_normal_tissue_anatomic_site` (
	clinical_nte varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_clinical_nte_normal_tissue_anatomic_site FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_normal_tissue_anatomic_site.tsv' INTO TABLE `clinical_nte_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_normal_tissue_proximity`;
CREATE TABLE `clinical_nte_normal_tissue_proximity` (
	clinical_nte varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_clinical_nte_normal_tissue_proximity FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_normal_tissue_proximity.tsv' INTO TABLE `clinical_nte_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_other_malignancy_anatomic_site`;
CREATE TABLE `clinical_nte_other_malignancy_anatomic_site` (
	clinical_nte varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_clinical_nte_other_malignancy_anatomic_site FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_other_malignancy_anatomic_site.tsv' INTO TABLE `clinical_nte_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_other_malignancy_anatomic_site_text`;
CREATE TABLE `clinical_nte_other_malignancy_anatomic_site_text` (
	clinical_nte varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_clinical_nte_other_malignancy_anatomic_site_text FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_other_malignancy_anatomic_site_text.tsv' INTO TABLE `clinical_nte_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_other_malignancy_histological_type`;
CREATE TABLE `clinical_nte_other_malignancy_histological_type` (
	clinical_nte varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_clinical_nte_other_malignancy_histological_type FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_other_malignancy_histological_type.tsv' INTO TABLE `clinical_nte_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_other_malignancy_laterality`;
CREATE TABLE `clinical_nte_other_malignancy_laterality` (
	clinical_nte varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_clinical_nte_other_malignancy_laterality FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_other_malignancy_laterality.tsv' INTO TABLE `clinical_nte_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_prior_dx`;
CREATE TABLE `clinical_nte_prior_dx` (
	clinical_nte varchar(254),
	prior_dx varchar(2048),
	CONSTRAINT fk_clinical_nte_prior_dx FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_prior_dx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_prior_dx.tsv' INTO TABLE `clinical_nte_prior_dx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_race1`;
CREATE TABLE `clinical_nte_race1` (
	clinical_nte varchar(254),
	race1 varchar(2048),
	CONSTRAINT fk_clinical_nte_race1 FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_race1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_race1.tsv' INTO TABLE `clinical_nte_race1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_result`;
CREATE TABLE `clinical_nte_result` (
	clinical_nte varchar(254),
	result varchar(2048),
	CONSTRAINT fk_clinical_nte_result FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_result.tsv' INTO TABLE `clinical_nte_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_submitted_tumor_site`;
CREATE TABLE `clinical_nte_submitted_tumor_site` (
	clinical_nte varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_clinical_nte_submitted_tumor_site FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_submitted_tumor_site.tsv' INTO TABLE `clinical_nte_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_tumor_necrosis_percent`;
CREATE TABLE `clinical_nte_tumor_necrosis_percent` (
	clinical_nte varchar(254),
	tumor_necrosis_percent varchar(2048),
	CONSTRAINT fk_clinical_nte_tumor_necrosis_percent FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_tumor_necrosis_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_tumor_necrosis_percent.tsv' INTO TABLE `clinical_nte_tumor_necrosis_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_tumor_nuclei_percent`;
CREATE TABLE `clinical_nte_tumor_nuclei_percent` (
	clinical_nte varchar(254),
	tumor_nuclei_percent varchar(2048),
	CONSTRAINT fk_clinical_nte_tumor_nuclei_percent FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_tumor_nuclei_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_tumor_nuclei_percent.tsv' INTO TABLE `clinical_nte_tumor_nuclei_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_tumor_weight`;
CREATE TABLE `clinical_nte_tumor_weight` (
	clinical_nte varchar(254),
	tumor_weight varchar(2048),
	CONSTRAINT fk_clinical_nte_tumor_weight FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_tumor_weight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_tumor_weight.tsv' INTO TABLE `clinical_nte_tumor_weight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_nte_vial_number`;
CREATE TABLE `clinical_nte_vial_number` (
	clinical_nte varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_clinical_nte_vial_number FOREIGN KEY(clinical_nte) REFERENCES `clinical_nte_main`(clinical_nte)
);
LOCK TABLES `clinical_nte_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_nte_vial_number.tsv' INTO TABLE `clinical_nte_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_aliquot_barcode`;
CREATE TABLE `clinical_omf_bcr_aliquot_barcode` (
	clinical_omf varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_aliquot_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_aliquot_barcode.tsv' INTO TABLE `clinical_omf_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_analyte_barcode`;
CREATE TABLE `clinical_omf_bcr_analyte_barcode` (
	clinical_omf varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_analyte_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_analyte_barcode.tsv' INTO TABLE `clinical_omf_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_drug_barcode`;
CREATE TABLE `clinical_omf_bcr_drug_barcode` (
	clinical_omf varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_drug_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_drug_barcode.tsv' INTO TABLE `clinical_omf_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_followup_barcode`;
CREATE TABLE `clinical_omf_bcr_followup_barcode` (
	clinical_omf varchar(254),
	bcr_followup_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_followup_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_followup_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_followup_barcode.tsv' INTO TABLE `clinical_omf_bcr_followup_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_omf_barcode`;
CREATE TABLE `clinical_omf_bcr_omf_barcode` (
	clinical_omf varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_omf_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_omf_barcode.tsv' INTO TABLE `clinical_omf_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_omf_uuid`;
CREATE TABLE `clinical_omf_bcr_omf_uuid` (
	clinical_omf varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_omf_uuid FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_omf_uuid.tsv' INTO TABLE `clinical_omf_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_sample_barcode`;
CREATE TABLE `clinical_omf_bcr_sample_barcode` (
	clinical_omf varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_sample_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_sample_barcode.tsv' INTO TABLE `clinical_omf_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_sample_uuid`;
CREATE TABLE `clinical_omf_bcr_sample_uuid` (
	clinical_omf varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_sample_uuid FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_sample_uuid.tsv' INTO TABLE `clinical_omf_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_bcr_slide_barcode`;
CREATE TABLE `clinical_omf_bcr_slide_barcode` (
	clinical_omf varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_clinical_omf_bcr_slide_barcode FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_bcr_slide_barcode.tsv' INTO TABLE `clinical_omf_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_days_to_normal_sample_procurement`;
CREATE TABLE `clinical_omf_days_to_normal_sample_procurement` (
	clinical_omf varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_clinical_omf_days_to_normal_sample_procurement FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_days_to_normal_sample_procurement.tsv' INTO TABLE `clinical_omf_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_disease_acronym`;
CREATE TABLE `clinical_omf_disease_acronym` (
	clinical_omf varchar(254),
	disease_acronym varchar(2048),
	CONSTRAINT fk_clinical_omf_disease_acronym FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_disease_acronym` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_disease_acronym.tsv' INTO TABLE `clinical_omf_disease_acronym` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_form_completion_date`;
CREATE TABLE `clinical_omf_form_completion_date` (
	clinical_omf varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_clinical_omf_form_completion_date FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_form_completion_date.tsv' INTO TABLE `clinical_omf_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_history_neoadjuvant_treatment`;
CREATE TABLE `clinical_omf_history_neoadjuvant_treatment` (
	clinical_omf varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_clinical_omf_history_neoadjuvant_treatment FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_history_neoadjuvant_treatment.tsv' INTO TABLE `clinical_omf_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_history_other_malignancy`;
CREATE TABLE `clinical_omf_history_other_malignancy` (
	clinical_omf varchar(254),
	history_other_malignancy varchar(2048),
	CONSTRAINT fk_clinical_omf_history_other_malignancy FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_history_other_malignancy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_history_other_malignancy.tsv' INTO TABLE `clinical_omf_history_other_malignancy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_method_of_normal_sample_procurement`;
CREATE TABLE `clinical_omf_method_of_normal_sample_procurement` (
	clinical_omf varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_clinical_omf_method_of_normal_sample_procurement FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_method_of_normal_sample_procurement.tsv' INTO TABLE `clinical_omf_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_ncedna_dna_conc`;
CREATE TABLE `clinical_omf_ncedna_dna_conc` (
	clinical_omf varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_clinical_omf_ncedna_dna_conc FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_ncedna_dna_conc.tsv' INTO TABLE `clinical_omf_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `clinical_omf_new_non_melanoma_event_histologic_type_text` (
	clinical_omf varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_clinical_omf_new_non_melanoma_event_histologic_type_text FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `clinical_omf_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_dx_days_to`;
CREATE TABLE `clinical_omf_new_tumor_event_dx_days_to` (
	clinical_omf varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_dx_days_to FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_dx_days_to.tsv' INTO TABLE `clinical_omf_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_melanoma_count`;
CREATE TABLE `clinical_omf_new_tumor_event_melanoma_count` (
	clinical_omf varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_melanoma_count FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_melanoma_count.tsv' INTO TABLE `clinical_omf_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_melanoma_location`;
CREATE TABLE `clinical_omf_new_tumor_event_melanoma_location` (
	clinical_omf varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_melanoma_location FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_melanoma_location.tsv' INTO TABLE `clinical_omf_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_met_site`;
CREATE TABLE `clinical_omf_new_tumor_event_met_site` (
	clinical_omf varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_met_site FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_met_site.tsv' INTO TABLE `clinical_omf_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_met_site_other`;
CREATE TABLE `clinical_omf_new_tumor_event_met_site_other` (
	clinical_omf varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_met_site_other FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_met_site_other.tsv' INTO TABLE `clinical_omf_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `clinical_omf_new_tumor_event_pharmaceutical_tx` (
	clinical_omf varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_pharmaceutical_tx FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `clinical_omf_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_radiation_tx`;
CREATE TABLE `clinical_omf_new_tumor_event_radiation_tx` (
	clinical_omf varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_radiation_tx FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_radiation_tx.tsv' INTO TABLE `clinical_omf_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_site`;
CREATE TABLE `clinical_omf_new_tumor_event_site` (
	clinical_omf varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_site FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_site.tsv' INTO TABLE `clinical_omf_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_surgery`;
CREATE TABLE `clinical_omf_new_tumor_event_surgery` (
	clinical_omf varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_surgery FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_surgery.tsv' INTO TABLE `clinical_omf_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_surgery_days_to`;
CREATE TABLE `clinical_omf_new_tumor_event_surgery_days_to` (
	clinical_omf varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_surgery_days_to FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_surgery_days_to.tsv' INTO TABLE `clinical_omf_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_new_tumor_event_type`;
CREATE TABLE `clinical_omf_new_tumor_event_type` (
	clinical_omf varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_clinical_omf_new_tumor_event_type FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_new_tumor_event_type.tsv' INTO TABLE `clinical_omf_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_normal_tissue_anatomic_site`;
CREATE TABLE `clinical_omf_normal_tissue_anatomic_site` (
	clinical_omf varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_clinical_omf_normal_tissue_anatomic_site FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_normal_tissue_anatomic_site.tsv' INTO TABLE `clinical_omf_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_normal_tissue_proximity`;
CREATE TABLE `clinical_omf_normal_tissue_proximity` (
	clinical_omf varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_clinical_omf_normal_tissue_proximity FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_normal_tissue_proximity.tsv' INTO TABLE `clinical_omf_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_other_malignancy_anatomic_site`;
CREATE TABLE `clinical_omf_other_malignancy_anatomic_site` (
	clinical_omf varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_clinical_omf_other_malignancy_anatomic_site FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_other_malignancy_anatomic_site.tsv' INTO TABLE `clinical_omf_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_other_malignancy_anatomic_site_text`;
CREATE TABLE `clinical_omf_other_malignancy_anatomic_site_text` (
	clinical_omf varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_clinical_omf_other_malignancy_anatomic_site_text FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_other_malignancy_anatomic_site_text.tsv' INTO TABLE `clinical_omf_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_other_malignancy_histological_type`;
CREATE TABLE `clinical_omf_other_malignancy_histological_type` (
	clinical_omf varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_clinical_omf_other_malignancy_histological_type FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_other_malignancy_histological_type.tsv' INTO TABLE `clinical_omf_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_other_malignancy_laterality`;
CREATE TABLE `clinical_omf_other_malignancy_laterality` (
	clinical_omf varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_clinical_omf_other_malignancy_laterality FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_other_malignancy_laterality.tsv' INTO TABLE `clinical_omf_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_result`;
CREATE TABLE `clinical_omf_result` (
	clinical_omf varchar(254),
	result varchar(2048),
	CONSTRAINT fk_clinical_omf_result FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_result.tsv' INTO TABLE `clinical_omf_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_submitted_tumor_site`;
CREATE TABLE `clinical_omf_submitted_tumor_site` (
	clinical_omf varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_clinical_omf_submitted_tumor_site FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_submitted_tumor_site.tsv' INTO TABLE `clinical_omf_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_omf_vial_number`;
CREATE TABLE `clinical_omf_vial_number` (
	clinical_omf varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_clinical_omf_vial_number FOREIGN KEY(clinical_omf) REFERENCES `clinical_omf_main`(clinical_omf)
);
LOCK TABLES `clinical_omf_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/clinical_omf_vial_number.tsv' INTO TABLE `clinical_omf_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `drug_new_tumor_event_surgery`;
CREATE TABLE `drug_new_tumor_event_surgery` (
	drug varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_drug_new_tumor_event_surgery FOREIGN KEY(drug) REFERENCES `drug_main`(drug)
);
LOCK TABLES `drug_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/drug_new_tumor_event_surgery.tsv' INTO TABLE `drug_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `follow_up_new_tumor_event_surgery`;
CREATE TABLE `follow_up_new_tumor_event_surgery` (
	follow_up varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_follow_up_new_tumor_event_surgery FOREIGN KEY(follow_up) REFERENCES `follow_up_main`(follow_up)
);
LOCK TABLES `follow_up_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/follow_up_new_tumor_event_surgery.tsv' INTO TABLE `follow_up_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_anatomic_neoplasm_subdivision`;
CREATE TABLE `normal_control_anatomic_neoplasm_subdivision` (
	normal_control varchar(254),
	anatomic_neoplasm_subdivision varchar(2048),
	CONSTRAINT fk_normal_control_anatomic_neoplasm_subdivision FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_anatomic_neoplasm_subdivision` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_anatomic_neoplasm_subdivision.tsv' INTO TABLE `normal_control_anatomic_neoplasm_subdivision` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_aliquot_barcode`;
CREATE TABLE `normal_control_bcr_aliquot_barcode` (
	normal_control varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_aliquot_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_aliquot_barcode.tsv' INTO TABLE `normal_control_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_analyte_barcode`;
CREATE TABLE `normal_control_bcr_analyte_barcode` (
	normal_control varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_analyte_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_analyte_barcode.tsv' INTO TABLE `normal_control_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_drug_barcode`;
CREATE TABLE `normal_control_bcr_drug_barcode` (
	normal_control varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_drug_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_drug_barcode.tsv' INTO TABLE `normal_control_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_followup_barcode`;
CREATE TABLE `normal_control_bcr_followup_barcode` (
	normal_control varchar(254),
	bcr_followup_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_followup_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_followup_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_followup_barcode.tsv' INTO TABLE `normal_control_bcr_followup_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_omf_barcode`;
CREATE TABLE `normal_control_bcr_omf_barcode` (
	normal_control varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_omf_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_omf_barcode.tsv' INTO TABLE `normal_control_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_omf_uuid`;
CREATE TABLE `normal_control_bcr_omf_uuid` (
	normal_control varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_normal_control_bcr_omf_uuid FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_omf_uuid.tsv' INTO TABLE `normal_control_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_radiation_barcode`;
CREATE TABLE `normal_control_bcr_radiation_barcode` (
	normal_control varchar(254),
	bcr_radiation_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_radiation_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_radiation_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_radiation_barcode.tsv' INTO TABLE `normal_control_bcr_radiation_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_sample_barcode`;
CREATE TABLE `normal_control_bcr_sample_barcode` (
	normal_control varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_sample_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_sample_barcode.tsv' INTO TABLE `normal_control_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_sample_uuid`;
CREATE TABLE `normal_control_bcr_sample_uuid` (
	normal_control varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_normal_control_bcr_sample_uuid FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_sample_uuid.tsv' INTO TABLE `normal_control_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_shipment_barcode`;
CREATE TABLE `normal_control_bcr_shipment_barcode` (
	normal_control varchar(254),
	bcr_shipment_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_shipment_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_shipment_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_shipment_barcode.tsv' INTO TABLE `normal_control_bcr_shipment_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_bcr_slide_barcode`;
CREATE TABLE `normal_control_bcr_slide_barcode` (
	normal_control varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_normal_control_bcr_slide_barcode FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_bcr_slide_barcode.tsv' INTO TABLE `normal_control_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_days_to_death`;
CREATE TABLE `normal_control_days_to_death` (
	normal_control varchar(254),
	days_to_death varchar(2048),
	CONSTRAINT fk_normal_control_days_to_death FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_days_to_death` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_days_to_death.tsv' INTO TABLE `normal_control_days_to_death` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_days_to_normal_sample_procurement`;
CREATE TABLE `normal_control_days_to_normal_sample_procurement` (
	normal_control varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_normal_control_days_to_normal_sample_procurement FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_days_to_normal_sample_procurement.tsv' INTO TABLE `normal_control_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_ethnicity1`;
CREATE TABLE `normal_control_ethnicity1` (
	normal_control varchar(254),
	ethnicity1 varchar(2048),
	CONSTRAINT fk_normal_control_ethnicity1 FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_ethnicity1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_ethnicity1.tsv' INTO TABLE `normal_control_ethnicity1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_form_completion_date`;
CREATE TABLE `normal_control_form_completion_date` (
	normal_control varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_normal_control_form_completion_date FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_form_completion_date.tsv' INTO TABLE `normal_control_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_histologic_diagnosis`;
CREATE TABLE `normal_control_histologic_diagnosis` (
	normal_control varchar(254),
	histologic_diagnosis varchar(2048),
	CONSTRAINT fk_normal_control_histologic_diagnosis FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_histologic_diagnosis` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_histologic_diagnosis.tsv' INTO TABLE `normal_control_histologic_diagnosis` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_histological_type`;
CREATE TABLE `normal_control_histological_type` (
	normal_control varchar(254),
	histological_type varchar(2048),
	CONSTRAINT fk_normal_control_histological_type FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_histological_type.tsv' INTO TABLE `normal_control_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_history_neoadjuvant_treatment`;
CREATE TABLE `normal_control_history_neoadjuvant_treatment` (
	normal_control varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_normal_control_history_neoadjuvant_treatment FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_history_neoadjuvant_treatment.tsv' INTO TABLE `normal_control_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_history_of_neoadjuvant_treatment`;
CREATE TABLE `normal_control_history_of_neoadjuvant_treatment` (
	normal_control varchar(254),
	history_of_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_normal_control_history_of_neoadjuvant_treatment FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_history_of_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_history_of_neoadjuvant_treatment.tsv' INTO TABLE `normal_control_history_of_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_history_other_malignancy`;
CREATE TABLE `normal_control_history_other_malignancy` (
	normal_control varchar(254),
	history_other_malignancy varchar(2048),
	CONSTRAINT fk_normal_control_history_other_malignancy FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_history_other_malignancy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_history_other_malignancy.tsv' INTO TABLE `normal_control_history_other_malignancy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_method_of_normal_sample_procurement`;
CREATE TABLE `normal_control_method_of_normal_sample_procurement` (
	normal_control varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_normal_control_method_of_normal_sample_procurement FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_method_of_normal_sample_procurement.tsv' INTO TABLE `normal_control_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_ncedna_dna_conc`;
CREATE TABLE `normal_control_ncedna_dna_conc` (
	normal_control varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_normal_control_ncedna_dna_conc FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_ncedna_dna_conc.tsv' INTO TABLE `normal_control_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_ncedna_dna_qm`;
CREATE TABLE `normal_control_ncedna_dna_qm` (
	normal_control varchar(254),
	ncedna_dna_qm varchar(2048),
	CONSTRAINT fk_normal_control_ncedna_dna_qm FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_ncedna_dna_qm` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_ncedna_dna_qm.tsv' INTO TABLE `normal_control_ncedna_dna_qm` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_ncedna_dna_qty`;
CREATE TABLE `normal_control_ncedna_dna_qty` (
	normal_control varchar(254),
	ncedna_dna_qty varchar(2048),
	CONSTRAINT fk_normal_control_ncedna_dna_qty FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_ncedna_dna_qty` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_ncedna_dna_qty.tsv' INTO TABLE `normal_control_ncedna_dna_qty` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_ncedna_dna_vol`;
CREATE TABLE `normal_control_ncedna_dna_vol` (
	normal_control varchar(254),
	ncedna_dna_vol varchar(2048),
	CONSTRAINT fk_normal_control_ncedna_dna_vol FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_ncedna_dna_vol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_ncedna_dna_vol.tsv' INTO TABLE `normal_control_ncedna_dna_vol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `normal_control_new_non_melanoma_event_histologic_type_text` (
	normal_control varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_normal_control_new_non_melanoma_event_histologic_type_text FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `normal_control_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_dx_days_to`;
CREATE TABLE `normal_control_new_tumor_event_dx_days_to` (
	normal_control varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_dx_days_to FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_dx_days_to.tsv' INTO TABLE `normal_control_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_melanoma_count`;
CREATE TABLE `normal_control_new_tumor_event_melanoma_count` (
	normal_control varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_melanoma_count FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_melanoma_count.tsv' INTO TABLE `normal_control_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_melanoma_location`;
CREATE TABLE `normal_control_new_tumor_event_melanoma_location` (
	normal_control varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_melanoma_location FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_melanoma_location.tsv' INTO TABLE `normal_control_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_met_site`;
CREATE TABLE `normal_control_new_tumor_event_met_site` (
	normal_control varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_met_site FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_met_site.tsv' INTO TABLE `normal_control_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_met_site_other`;
CREATE TABLE `normal_control_new_tumor_event_met_site_other` (
	normal_control varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_met_site_other FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_met_site_other.tsv' INTO TABLE `normal_control_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `normal_control_new_tumor_event_pharmaceutical_tx` (
	normal_control varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_pharmaceutical_tx FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `normal_control_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_radiation_tx`;
CREATE TABLE `normal_control_new_tumor_event_radiation_tx` (
	normal_control varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_radiation_tx FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_radiation_tx.tsv' INTO TABLE `normal_control_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_site`;
CREATE TABLE `normal_control_new_tumor_event_site` (
	normal_control varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_site FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_site.tsv' INTO TABLE `normal_control_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_surgery`;
CREATE TABLE `normal_control_new_tumor_event_surgery` (
	normal_control varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_surgery FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_surgery.tsv' INTO TABLE `normal_control_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_surgery_days_to`;
CREATE TABLE `normal_control_new_tumor_event_surgery_days_to` (
	normal_control varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_surgery_days_to FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_surgery_days_to.tsv' INTO TABLE `normal_control_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_new_tumor_event_type`;
CREATE TABLE `normal_control_new_tumor_event_type` (
	normal_control varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_normal_control_new_tumor_event_type FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_new_tumor_event_type.tsv' INTO TABLE `normal_control_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_normal_tissue_anatomic_site`;
CREATE TABLE `normal_control_normal_tissue_anatomic_site` (
	normal_control varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_normal_control_normal_tissue_anatomic_site FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_normal_tissue_anatomic_site.tsv' INTO TABLE `normal_control_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_normal_tissue_proximity`;
CREATE TABLE `normal_control_normal_tissue_proximity` (
	normal_control varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_normal_control_normal_tissue_proximity FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_normal_tissue_proximity.tsv' INTO TABLE `normal_control_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_other_malignancy_anatomic_site`;
CREATE TABLE `normal_control_other_malignancy_anatomic_site` (
	normal_control varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_normal_control_other_malignancy_anatomic_site FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_other_malignancy_anatomic_site.tsv' INTO TABLE `normal_control_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_other_malignancy_anatomic_site_text`;
CREATE TABLE `normal_control_other_malignancy_anatomic_site_text` (
	normal_control varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_normal_control_other_malignancy_anatomic_site_text FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_other_malignancy_anatomic_site_text.tsv' INTO TABLE `normal_control_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_other_malignancy_histological_type`;
CREATE TABLE `normal_control_other_malignancy_histological_type` (
	normal_control varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_normal_control_other_malignancy_histological_type FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_other_malignancy_histological_type.tsv' INTO TABLE `normal_control_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_other_malignancy_laterality`;
CREATE TABLE `normal_control_other_malignancy_laterality` (
	normal_control varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_normal_control_other_malignancy_laterality FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_other_malignancy_laterality.tsv' INTO TABLE `normal_control_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_prior_dx`;
CREATE TABLE `normal_control_prior_dx` (
	normal_control varchar(254),
	prior_dx varchar(2048),
	CONSTRAINT fk_normal_control_prior_dx FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_prior_dx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_prior_dx.tsv' INTO TABLE `normal_control_prior_dx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_race1`;
CREATE TABLE `normal_control_race1` (
	normal_control varchar(254),
	race1 varchar(2048),
	CONSTRAINT fk_normal_control_race1 FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_race1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_race1.tsv' INTO TABLE `normal_control_race1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_result`;
CREATE TABLE `normal_control_result` (
	normal_control varchar(254),
	result varchar(2048),
	CONSTRAINT fk_normal_control_result FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_result.tsv' INTO TABLE `normal_control_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_submitted_tumor_site`;
CREATE TABLE `normal_control_submitted_tumor_site` (
	normal_control varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_normal_control_submitted_tumor_site FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_submitted_tumor_site.tsv' INTO TABLE `normal_control_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_tumor_necrosis_percent`;
CREATE TABLE `normal_control_tumor_necrosis_percent` (
	normal_control varchar(254),
	tumor_necrosis_percent varchar(2048),
	CONSTRAINT fk_normal_control_tumor_necrosis_percent FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_tumor_necrosis_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_tumor_necrosis_percent.tsv' INTO TABLE `normal_control_tumor_necrosis_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_tumor_nuclei_percent`;
CREATE TABLE `normal_control_tumor_nuclei_percent` (
	normal_control varchar(254),
	tumor_nuclei_percent varchar(2048),
	CONSTRAINT fk_normal_control_tumor_nuclei_percent FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_tumor_nuclei_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_tumor_nuclei_percent.tsv' INTO TABLE `normal_control_tumor_nuclei_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_tumor_weight`;
CREATE TABLE `normal_control_tumor_weight` (
	normal_control varchar(254),
	tumor_weight varchar(2048),
	CONSTRAINT fk_normal_control_tumor_weight FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_tumor_weight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_tumor_weight.tsv' INTO TABLE `normal_control_tumor_weight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `normal_control_vial_number`;
CREATE TABLE `normal_control_vial_number` (
	normal_control varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_normal_control_vial_number FOREIGN KEY(normal_control) REFERENCES `normal_control_main`(normal_control)
);
LOCK TABLES `normal_control_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/normal_control_vial_number.tsv' INTO TABLE `normal_control_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_anatomic_neoplasm_subdivision`;
CREATE TABLE `patient_anatomic_neoplasm_subdivision` (
	patient varchar(254),
	anatomic_neoplasm_subdivision varchar(2048),
	CONSTRAINT fk_patient_anatomic_neoplasm_subdivision FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_anatomic_neoplasm_subdivision` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_anatomic_neoplasm_subdivision.tsv' INTO TABLE `patient_anatomic_neoplasm_subdivision` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_aliquot_barcode`;
CREATE TABLE `patient_bcr_aliquot_barcode` (
	patient varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_aliquot_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_aliquot_barcode.tsv' INTO TABLE `patient_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_analyte_barcode`;
CREATE TABLE `patient_bcr_analyte_barcode` (
	patient varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_analyte_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_analyte_barcode.tsv' INTO TABLE `patient_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_drug_barcode`;
CREATE TABLE `patient_bcr_drug_barcode` (
	patient varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_drug_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_drug_barcode.tsv' INTO TABLE `patient_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_followup_barcode`;
CREATE TABLE `patient_bcr_followup_barcode` (
	patient varchar(254),
	bcr_followup_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_followup_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_followup_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_followup_barcode.tsv' INTO TABLE `patient_bcr_followup_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_omf_barcode`;
CREATE TABLE `patient_bcr_omf_barcode` (
	patient varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_omf_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_omf_barcode.tsv' INTO TABLE `patient_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_omf_uuid`;
CREATE TABLE `patient_bcr_omf_uuid` (
	patient varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_patient_bcr_omf_uuid FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_omf_uuid.tsv' INTO TABLE `patient_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_radiation_barcode`;
CREATE TABLE `patient_bcr_radiation_barcode` (
	patient varchar(254),
	bcr_radiation_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_radiation_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_radiation_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_radiation_barcode.tsv' INTO TABLE `patient_bcr_radiation_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_sample_barcode`;
CREATE TABLE `patient_bcr_sample_barcode` (
	patient varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_sample_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_sample_barcode.tsv' INTO TABLE `patient_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_sample_uuid`;
CREATE TABLE `patient_bcr_sample_uuid` (
	patient varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_patient_bcr_sample_uuid FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_sample_uuid.tsv' INTO TABLE `patient_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_shipment_barcode`;
CREATE TABLE `patient_bcr_shipment_barcode` (
	patient varchar(254),
	bcr_shipment_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_shipment_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_shipment_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_shipment_barcode.tsv' INTO TABLE `patient_bcr_shipment_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_bcr_slide_barcode`;
CREATE TABLE `patient_bcr_slide_barcode` (
	patient varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_patient_bcr_slide_barcode FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_bcr_slide_barcode.tsv' INTO TABLE `patient_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_consent_or_death_status`;
CREATE TABLE `patient_consent_or_death_status` (
	patient varchar(254),
	consent_or_death_status varchar(2048),
	CONSTRAINT fk_patient_consent_or_death_status FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_consent_or_death_status` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_consent_or_death_status.tsv' INTO TABLE `patient_consent_or_death_status` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_days_to_death`;
CREATE TABLE `patient_days_to_death` (
	patient varchar(254),
	days_to_death varchar(2048),
	CONSTRAINT fk_patient_days_to_death FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_days_to_death` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_days_to_death.tsv' INTO TABLE `patient_days_to_death` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_days_to_normal_sample_procurement`;
CREATE TABLE `patient_days_to_normal_sample_procurement` (
	patient varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_patient_days_to_normal_sample_procurement FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_days_to_normal_sample_procurement.tsv' INTO TABLE `patient_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_disease_acronym`;
CREATE TABLE `patient_disease_acronym` (
	patient varchar(254),
	disease_acronym varchar(2048),
	CONSTRAINT fk_patient_disease_acronym FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_disease_acronym` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_disease_acronym.tsv' INTO TABLE `patient_disease_acronym` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_ethnicity1`;
CREATE TABLE `patient_ethnicity1` (
	patient varchar(254),
	ethnicity1 varchar(2048),
	CONSTRAINT fk_patient_ethnicity1 FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_ethnicity1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_ethnicity1.tsv' INTO TABLE `patient_ethnicity1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_form_completion_date`;
CREATE TABLE `patient_form_completion_date` (
	patient varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_patient_form_completion_date FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_form_completion_date.tsv' INTO TABLE `patient_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_histologic_diagnosis`;
CREATE TABLE `patient_histologic_diagnosis` (
	patient varchar(254),
	histologic_diagnosis varchar(2048),
	CONSTRAINT fk_patient_histologic_diagnosis FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_histologic_diagnosis` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_histologic_diagnosis.tsv' INTO TABLE `patient_histologic_diagnosis` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_histological_type`;
CREATE TABLE `patient_histological_type` (
	patient varchar(254),
	histological_type varchar(2048),
	CONSTRAINT fk_patient_histological_type FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_histological_type.tsv' INTO TABLE `patient_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_history_neoadjuvant_treatment`;
CREATE TABLE `patient_history_neoadjuvant_treatment` (
	patient varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_patient_history_neoadjuvant_treatment FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_history_neoadjuvant_treatment.tsv' INTO TABLE `patient_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_history_of_neoadjuvant_treatment`;
CREATE TABLE `patient_history_of_neoadjuvant_treatment` (
	patient varchar(254),
	history_of_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_patient_history_of_neoadjuvant_treatment FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_history_of_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_history_of_neoadjuvant_treatment.tsv' INTO TABLE `patient_history_of_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_history_other_malignancy`;
CREATE TABLE `patient_history_other_malignancy` (
	patient varchar(254),
	history_other_malignancy varchar(2048),
	CONSTRAINT fk_patient_history_other_malignancy FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_history_other_malignancy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_history_other_malignancy.tsv' INTO TABLE `patient_history_other_malignancy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_method_of_normal_sample_procurement`;
CREATE TABLE `patient_method_of_normal_sample_procurement` (
	patient varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_patient_method_of_normal_sample_procurement FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_method_of_normal_sample_procurement.tsv' INTO TABLE `patient_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_ncedna_dna_conc`;
CREATE TABLE `patient_ncedna_dna_conc` (
	patient varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_patient_ncedna_dna_conc FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_ncedna_dna_conc.tsv' INTO TABLE `patient_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_ncedna_dna_qm`;
CREATE TABLE `patient_ncedna_dna_qm` (
	patient varchar(254),
	ncedna_dna_qm varchar(2048),
	CONSTRAINT fk_patient_ncedna_dna_qm FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_ncedna_dna_qm` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_ncedna_dna_qm.tsv' INTO TABLE `patient_ncedna_dna_qm` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_ncedna_dna_qty`;
CREATE TABLE `patient_ncedna_dna_qty` (
	patient varchar(254),
	ncedna_dna_qty varchar(2048),
	CONSTRAINT fk_patient_ncedna_dna_qty FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_ncedna_dna_qty` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_ncedna_dna_qty.tsv' INTO TABLE `patient_ncedna_dna_qty` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_ncedna_dna_vol`;
CREATE TABLE `patient_ncedna_dna_vol` (
	patient varchar(254),
	ncedna_dna_vol varchar(2048),
	CONSTRAINT fk_patient_ncedna_dna_vol FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_ncedna_dna_vol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_ncedna_dna_vol.tsv' INTO TABLE `patient_ncedna_dna_vol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `patient_new_non_melanoma_event_histologic_type_text` (
	patient varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_patient_new_non_melanoma_event_histologic_type_text FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `patient_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_dx_days_to`;
CREATE TABLE `patient_new_tumor_event_dx_days_to` (
	patient varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_dx_days_to FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_dx_days_to.tsv' INTO TABLE `patient_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_melanoma_count`;
CREATE TABLE `patient_new_tumor_event_melanoma_count` (
	patient varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_melanoma_count FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_melanoma_count.tsv' INTO TABLE `patient_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_melanoma_location`;
CREATE TABLE `patient_new_tumor_event_melanoma_location` (
	patient varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_melanoma_location FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_melanoma_location.tsv' INTO TABLE `patient_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_met_site`;
CREATE TABLE `patient_new_tumor_event_met_site` (
	patient varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_met_site FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_met_site.tsv' INTO TABLE `patient_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_met_site_other`;
CREATE TABLE `patient_new_tumor_event_met_site_other` (
	patient varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_met_site_other FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_met_site_other.tsv' INTO TABLE `patient_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `patient_new_tumor_event_pharmaceutical_tx` (
	patient varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_pharmaceutical_tx FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `patient_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_radiation_tx`;
CREATE TABLE `patient_new_tumor_event_radiation_tx` (
	patient varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_radiation_tx FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_radiation_tx.tsv' INTO TABLE `patient_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_site`;
CREATE TABLE `patient_new_tumor_event_site` (
	patient varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_site FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_site.tsv' INTO TABLE `patient_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_surgery`;
CREATE TABLE `patient_new_tumor_event_surgery` (
	patient varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_surgery FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_surgery.tsv' INTO TABLE `patient_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_surgery_days_to`;
CREATE TABLE `patient_new_tumor_event_surgery_days_to` (
	patient varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_surgery_days_to FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_surgery_days_to.tsv' INTO TABLE `patient_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_new_tumor_event_type`;
CREATE TABLE `patient_new_tumor_event_type` (
	patient varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_patient_new_tumor_event_type FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_new_tumor_event_type.tsv' INTO TABLE `patient_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_normal_tissue_anatomic_site`;
CREATE TABLE `patient_normal_tissue_anatomic_site` (
	patient varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_patient_normal_tissue_anatomic_site FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_normal_tissue_anatomic_site.tsv' INTO TABLE `patient_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_normal_tissue_proximity`;
CREATE TABLE `patient_normal_tissue_proximity` (
	patient varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_patient_normal_tissue_proximity FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_normal_tissue_proximity.tsv' INTO TABLE `patient_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_other_malignancy_anatomic_site`;
CREATE TABLE `patient_other_malignancy_anatomic_site` (
	patient varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_patient_other_malignancy_anatomic_site FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_other_malignancy_anatomic_site.tsv' INTO TABLE `patient_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_other_malignancy_anatomic_site_text`;
CREATE TABLE `patient_other_malignancy_anatomic_site_text` (
	patient varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_patient_other_malignancy_anatomic_site_text FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_other_malignancy_anatomic_site_text.tsv' INTO TABLE `patient_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_other_malignancy_histological_type`;
CREATE TABLE `patient_other_malignancy_histological_type` (
	patient varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_patient_other_malignancy_histological_type FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_other_malignancy_histological_type.tsv' INTO TABLE `patient_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_other_malignancy_laterality`;
CREATE TABLE `patient_other_malignancy_laterality` (
	patient varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_patient_other_malignancy_laterality FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_other_malignancy_laterality.tsv' INTO TABLE `patient_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_prior_dx`;
CREATE TABLE `patient_prior_dx` (
	patient varchar(254),
	prior_dx varchar(2048),
	CONSTRAINT fk_patient_prior_dx FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_prior_dx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_prior_dx.tsv' INTO TABLE `patient_prior_dx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_race1`;
CREATE TABLE `patient_race1` (
	patient varchar(254),
	race1 varchar(2048),
	CONSTRAINT fk_patient_race1 FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_race1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_race1.tsv' INTO TABLE `patient_race1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_result`;
CREATE TABLE `patient_result` (
	patient varchar(254),
	result varchar(2048),
	CONSTRAINT fk_patient_result FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_result.tsv' INTO TABLE `patient_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_submitted_tumor_site`;
CREATE TABLE `patient_submitted_tumor_site` (
	patient varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_patient_submitted_tumor_site FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_submitted_tumor_site.tsv' INTO TABLE `patient_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_tumor_necrosis_percent`;
CREATE TABLE `patient_tumor_necrosis_percent` (
	patient varchar(254),
	tumor_necrosis_percent varchar(2048),
	CONSTRAINT fk_patient_tumor_necrosis_percent FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_tumor_necrosis_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_tumor_necrosis_percent.tsv' INTO TABLE `patient_tumor_necrosis_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_tumor_nuclei_percent`;
CREATE TABLE `patient_tumor_nuclei_percent` (
	patient varchar(254),
	tumor_nuclei_percent varchar(2048),
	CONSTRAINT fk_patient_tumor_nuclei_percent FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_tumor_nuclei_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_tumor_nuclei_percent.tsv' INTO TABLE `patient_tumor_nuclei_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_tumor_weight`;
CREATE TABLE `patient_tumor_weight` (
	patient varchar(254),
	tumor_weight varchar(2048),
	CONSTRAINT fk_patient_tumor_weight FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_tumor_weight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_tumor_weight.tsv' INTO TABLE `patient_tumor_weight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `patient_vial_number`;
CREATE TABLE `patient_vial_number` (
	patient varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_patient_vial_number FOREIGN KEY(patient) REFERENCES `patient_main`(patient)
);
LOCK TABLES `patient_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/patient_vial_number.tsv' INTO TABLE `patient_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `protocol_bcr_analyte_barcode`;
CREATE TABLE `protocol_bcr_analyte_barcode` (
	protocol varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_protocol_bcr_analyte_barcode FOREIGN KEY(protocol) REFERENCES `protocol_main`(protocol)
);
LOCK TABLES `protocol_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/protocol_bcr_analyte_barcode.tsv' INTO TABLE `protocol_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `protocol_experimental_protocol_type`;
CREATE TABLE `protocol_experimental_protocol_type` (
	protocol varchar(254),
	experimental_protocol_type varchar(2048),
	CONSTRAINT fk_protocol_experimental_protocol_type FOREIGN KEY(protocol) REFERENCES `protocol_main`(protocol)
);
LOCK TABLES `protocol_experimental_protocol_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/protocol_experimental_protocol_type.tsv' INTO TABLE `protocol_experimental_protocol_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `radiation_new_tumor_event_surgery`;
CREATE TABLE `radiation_new_tumor_event_surgery` (
	radiation varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_radiation_new_tumor_event_surgery FOREIGN KEY(radiation) REFERENCES `radiation_main`(radiation)
);
LOCK TABLES `radiation_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/radiation_new_tumor_event_surgery.tsv' INTO TABLE `radiation_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sample_bcr_analyte_barcode`;
CREATE TABLE `sample_bcr_analyte_barcode` (
	sample varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_sample_bcr_analyte_barcode FOREIGN KEY(sample) REFERENCES `sample_main`(sample)
);
LOCK TABLES `sample_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/sample_bcr_analyte_barcode.tsv' INTO TABLE `sample_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sample_experimental_protocol_type`;
CREATE TABLE `sample_experimental_protocol_type` (
	sample varchar(254),
	experimental_protocol_type varchar(2048),
	CONSTRAINT fk_sample_experimental_protocol_type FOREIGN KEY(sample) REFERENCES `sample_main`(sample)
);
LOCK TABLES `sample_experimental_protocol_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/sample_experimental_protocol_type.tsv' INTO TABLE `sample_experimental_protocol_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_anatomic_neoplasm_subdivision`;
CREATE TABLE `tumor_sample_anatomic_neoplasm_subdivision` (
	tumor_sample varchar(254),
	anatomic_neoplasm_subdivision varchar(2048),
	CONSTRAINT fk_tumor_sample_anatomic_neoplasm_subdivision FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_anatomic_neoplasm_subdivision` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_anatomic_neoplasm_subdivision.tsv' INTO TABLE `tumor_sample_anatomic_neoplasm_subdivision` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_aliquot_barcode`;
CREATE TABLE `tumor_sample_bcr_aliquot_barcode` (
	tumor_sample varchar(254),
	bcr_aliquot_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_aliquot_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_aliquot_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_aliquot_barcode.tsv' INTO TABLE `tumor_sample_bcr_aliquot_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_analyte_barcode`;
CREATE TABLE `tumor_sample_bcr_analyte_barcode` (
	tumor_sample varchar(254),
	bcr_analyte_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_analyte_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_analyte_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_analyte_barcode.tsv' INTO TABLE `tumor_sample_bcr_analyte_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_drug_barcode`;
CREATE TABLE `tumor_sample_bcr_drug_barcode` (
	tumor_sample varchar(254),
	bcr_drug_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_drug_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_drug_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_drug_barcode.tsv' INTO TABLE `tumor_sample_bcr_drug_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_followup_barcode`;
CREATE TABLE `tumor_sample_bcr_followup_barcode` (
	tumor_sample varchar(254),
	bcr_followup_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_followup_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_followup_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_followup_barcode.tsv' INTO TABLE `tumor_sample_bcr_followup_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_omf_barcode`;
CREATE TABLE `tumor_sample_bcr_omf_barcode` (
	tumor_sample varchar(254),
	bcr_omf_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_omf_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_omf_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_omf_barcode.tsv' INTO TABLE `tumor_sample_bcr_omf_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_omf_uuid`;
CREATE TABLE `tumor_sample_bcr_omf_uuid` (
	tumor_sample varchar(254),
	bcr_omf_uuid varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_omf_uuid FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_omf_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_omf_uuid.tsv' INTO TABLE `tumor_sample_bcr_omf_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_radiation_barcode`;
CREATE TABLE `tumor_sample_bcr_radiation_barcode` (
	tumor_sample varchar(254),
	bcr_radiation_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_radiation_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_radiation_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_radiation_barcode.tsv' INTO TABLE `tumor_sample_bcr_radiation_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_sample_barcode`;
CREATE TABLE `tumor_sample_bcr_sample_barcode` (
	tumor_sample varchar(254),
	bcr_sample_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_sample_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_sample_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_sample_barcode.tsv' INTO TABLE `tumor_sample_bcr_sample_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_sample_uuid`;
CREATE TABLE `tumor_sample_bcr_sample_uuid` (
	tumor_sample varchar(254),
	bcr_sample_uuid varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_sample_uuid FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_sample_uuid` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_sample_uuid.tsv' INTO TABLE `tumor_sample_bcr_sample_uuid` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_shipment_barcode`;
CREATE TABLE `tumor_sample_bcr_shipment_barcode` (
	tumor_sample varchar(254),
	bcr_shipment_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_shipment_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_shipment_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_shipment_barcode.tsv' INTO TABLE `tumor_sample_bcr_shipment_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_bcr_slide_barcode`;
CREATE TABLE `tumor_sample_bcr_slide_barcode` (
	tumor_sample varchar(254),
	bcr_slide_barcode varchar(2048),
	CONSTRAINT fk_tumor_sample_bcr_slide_barcode FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_bcr_slide_barcode` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_bcr_slide_barcode.tsv' INTO TABLE `tumor_sample_bcr_slide_barcode` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_days_to_death`;
CREATE TABLE `tumor_sample_days_to_death` (
	tumor_sample varchar(254),
	days_to_death varchar(2048),
	CONSTRAINT fk_tumor_sample_days_to_death FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_days_to_death` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_days_to_death.tsv' INTO TABLE `tumor_sample_days_to_death` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_days_to_normal_sample_procurement`;
CREATE TABLE `tumor_sample_days_to_normal_sample_procurement` (
	tumor_sample varchar(254),
	days_to_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_tumor_sample_days_to_normal_sample_procurement FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_days_to_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_days_to_normal_sample_procurement.tsv' INTO TABLE `tumor_sample_days_to_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_ethnicity1`;
CREATE TABLE `tumor_sample_ethnicity1` (
	tumor_sample varchar(254),
	ethnicity1 varchar(2048),
	CONSTRAINT fk_tumor_sample_ethnicity1 FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_ethnicity1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_ethnicity1.tsv' INTO TABLE `tumor_sample_ethnicity1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_form_completion_date`;
CREATE TABLE `tumor_sample_form_completion_date` (
	tumor_sample varchar(254),
	form_completion_date varchar(2048),
	CONSTRAINT fk_tumor_sample_form_completion_date FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_form_completion_date` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_form_completion_date.tsv' INTO TABLE `tumor_sample_form_completion_date` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_histologic_diagnosis`;
CREATE TABLE `tumor_sample_histologic_diagnosis` (
	tumor_sample varchar(254),
	histologic_diagnosis varchar(2048),
	CONSTRAINT fk_tumor_sample_histologic_diagnosis FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_histologic_diagnosis` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_histologic_diagnosis.tsv' INTO TABLE `tumor_sample_histologic_diagnosis` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_histological_type`;
CREATE TABLE `tumor_sample_histological_type` (
	tumor_sample varchar(254),
	histological_type varchar(2048),
	CONSTRAINT fk_tumor_sample_histological_type FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_histological_type.tsv' INTO TABLE `tumor_sample_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_history_neoadjuvant_treatment`;
CREATE TABLE `tumor_sample_history_neoadjuvant_treatment` (
	tumor_sample varchar(254),
	history_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_tumor_sample_history_neoadjuvant_treatment FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_history_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_history_neoadjuvant_treatment.tsv' INTO TABLE `tumor_sample_history_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_history_of_neoadjuvant_treatment`;
CREATE TABLE `tumor_sample_history_of_neoadjuvant_treatment` (
	tumor_sample varchar(254),
	history_of_neoadjuvant_treatment varchar(2048),
	CONSTRAINT fk_tumor_sample_history_of_neoadjuvant_treatment FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_history_of_neoadjuvant_treatment` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_history_of_neoadjuvant_treatment.tsv' INTO TABLE `tumor_sample_history_of_neoadjuvant_treatment` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_history_other_malignancy`;
CREATE TABLE `tumor_sample_history_other_malignancy` (
	tumor_sample varchar(254),
	history_other_malignancy varchar(2048),
	CONSTRAINT fk_tumor_sample_history_other_malignancy FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_history_other_malignancy` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_history_other_malignancy.tsv' INTO TABLE `tumor_sample_history_other_malignancy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_method_of_normal_sample_procurement`;
CREATE TABLE `tumor_sample_method_of_normal_sample_procurement` (
	tumor_sample varchar(254),
	method_of_normal_sample_procurement varchar(2048),
	CONSTRAINT fk_tumor_sample_method_of_normal_sample_procurement FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_method_of_normal_sample_procurement` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_method_of_normal_sample_procurement.tsv' INTO TABLE `tumor_sample_method_of_normal_sample_procurement` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_ncedna_dna_conc`;
CREATE TABLE `tumor_sample_ncedna_dna_conc` (
	tumor_sample varchar(254),
	ncedna_dna_conc varchar(2048),
	CONSTRAINT fk_tumor_sample_ncedna_dna_conc FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_ncedna_dna_conc` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_ncedna_dna_conc.tsv' INTO TABLE `tumor_sample_ncedna_dna_conc` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_ncedna_dna_qm`;
CREATE TABLE `tumor_sample_ncedna_dna_qm` (
	tumor_sample varchar(254),
	ncedna_dna_qm varchar(2048),
	CONSTRAINT fk_tumor_sample_ncedna_dna_qm FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_ncedna_dna_qm` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_ncedna_dna_qm.tsv' INTO TABLE `tumor_sample_ncedna_dna_qm` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_ncedna_dna_qty`;
CREATE TABLE `tumor_sample_ncedna_dna_qty` (
	tumor_sample varchar(254),
	ncedna_dna_qty varchar(2048),
	CONSTRAINT fk_tumor_sample_ncedna_dna_qty FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_ncedna_dna_qty` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_ncedna_dna_qty.tsv' INTO TABLE `tumor_sample_ncedna_dna_qty` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_ncedna_dna_vol`;
CREATE TABLE `tumor_sample_ncedna_dna_vol` (
	tumor_sample varchar(254),
	ncedna_dna_vol varchar(2048),
	CONSTRAINT fk_tumor_sample_ncedna_dna_vol FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_ncedna_dna_vol` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_ncedna_dna_vol.tsv' INTO TABLE `tumor_sample_ncedna_dna_vol` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_non_melanoma_event_histologic_type_text`;
CREATE TABLE `tumor_sample_new_non_melanoma_event_histologic_type_text` (
	tumor_sample varchar(254),
	new_non_melanoma_event_histologic_type_text varchar(2048),
	CONSTRAINT fk_tumor_sample_new_non_melanoma_event_histologic_type_text FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_non_melanoma_event_histologic_type_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_non_melanoma_event_histologic_type_text.tsv' INTO TABLE `tumor_sample_new_non_melanoma_event_histologic_type_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_dx_days_to`;
CREATE TABLE `tumor_sample_new_tumor_event_dx_days_to` (
	tumor_sample varchar(254),
	new_tumor_event_dx_days_to varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_dx_days_to FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_dx_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_dx_days_to.tsv' INTO TABLE `tumor_sample_new_tumor_event_dx_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_melanoma_count`;
CREATE TABLE `tumor_sample_new_tumor_event_melanoma_count` (
	tumor_sample varchar(254),
	new_tumor_event_melanoma_count varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_melanoma_count FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_melanoma_count` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_melanoma_count.tsv' INTO TABLE `tumor_sample_new_tumor_event_melanoma_count` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_melanoma_location`;
CREATE TABLE `tumor_sample_new_tumor_event_melanoma_location` (
	tumor_sample varchar(254),
	new_tumor_event_melanoma_location varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_melanoma_location FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_melanoma_location` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_melanoma_location.tsv' INTO TABLE `tumor_sample_new_tumor_event_melanoma_location` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_met_site`;
CREATE TABLE `tumor_sample_new_tumor_event_met_site` (
	tumor_sample varchar(254),
	new_tumor_event_met_site varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_met_site FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_met_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_met_site.tsv' INTO TABLE `tumor_sample_new_tumor_event_met_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_met_site_other`;
CREATE TABLE `tumor_sample_new_tumor_event_met_site_other` (
	tumor_sample varchar(254),
	new_tumor_event_met_site_other varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_met_site_other FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_met_site_other` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_met_site_other.tsv' INTO TABLE `tumor_sample_new_tumor_event_met_site_other` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_pharmaceutical_tx`;
CREATE TABLE `tumor_sample_new_tumor_event_pharmaceutical_tx` (
	tumor_sample varchar(254),
	new_tumor_event_pharmaceutical_tx varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_pharmaceutical_tx FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_pharmaceutical_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_pharmaceutical_tx.tsv' INTO TABLE `tumor_sample_new_tumor_event_pharmaceutical_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_radiation_tx`;
CREATE TABLE `tumor_sample_new_tumor_event_radiation_tx` (
	tumor_sample varchar(254),
	new_tumor_event_radiation_tx varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_radiation_tx FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_radiation_tx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_radiation_tx.tsv' INTO TABLE `tumor_sample_new_tumor_event_radiation_tx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_site`;
CREATE TABLE `tumor_sample_new_tumor_event_site` (
	tumor_sample varchar(254),
	new_tumor_event_site varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_site FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_site.tsv' INTO TABLE `tumor_sample_new_tumor_event_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_surgery`;
CREATE TABLE `tumor_sample_new_tumor_event_surgery` (
	tumor_sample varchar(254),
	new_tumor_event_surgery varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_surgery FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_surgery` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_surgery.tsv' INTO TABLE `tumor_sample_new_tumor_event_surgery` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_surgery_days_to`;
CREATE TABLE `tumor_sample_new_tumor_event_surgery_days_to` (
	tumor_sample varchar(254),
	new_tumor_event_surgery_days_to varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_surgery_days_to FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_surgery_days_to` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_surgery_days_to.tsv' INTO TABLE `tumor_sample_new_tumor_event_surgery_days_to` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_new_tumor_event_type`;
CREATE TABLE `tumor_sample_new_tumor_event_type` (
	tumor_sample varchar(254),
	new_tumor_event_type varchar(2048),
	CONSTRAINT fk_tumor_sample_new_tumor_event_type FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_new_tumor_event_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_new_tumor_event_type.tsv' INTO TABLE `tumor_sample_new_tumor_event_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_normal_tissue_anatomic_site`;
CREATE TABLE `tumor_sample_normal_tissue_anatomic_site` (
	tumor_sample varchar(254),
	normal_tissue_anatomic_site varchar(2048),
	CONSTRAINT fk_tumor_sample_normal_tissue_anatomic_site FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_normal_tissue_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_normal_tissue_anatomic_site.tsv' INTO TABLE `tumor_sample_normal_tissue_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_normal_tissue_proximity`;
CREATE TABLE `tumor_sample_normal_tissue_proximity` (
	tumor_sample varchar(254),
	normal_tissue_proximity varchar(2048),
	CONSTRAINT fk_tumor_sample_normal_tissue_proximity FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_normal_tissue_proximity` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_normal_tissue_proximity.tsv' INTO TABLE `tumor_sample_normal_tissue_proximity` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_other_malignancy_anatomic_site`;
CREATE TABLE `tumor_sample_other_malignancy_anatomic_site` (
	tumor_sample varchar(254),
	other_malignancy_anatomic_site varchar(2048),
	CONSTRAINT fk_tumor_sample_other_malignancy_anatomic_site FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_other_malignancy_anatomic_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_other_malignancy_anatomic_site.tsv' INTO TABLE `tumor_sample_other_malignancy_anatomic_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_other_malignancy_anatomic_site_text`;
CREATE TABLE `tumor_sample_other_malignancy_anatomic_site_text` (
	tumor_sample varchar(254),
	other_malignancy_anatomic_site_text varchar(2048),
	CONSTRAINT fk_tumor_sample_other_malignancy_anatomic_site_text FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_other_malignancy_anatomic_site_text` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_other_malignancy_anatomic_site_text.tsv' INTO TABLE `tumor_sample_other_malignancy_anatomic_site_text` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_other_malignancy_histological_type`;
CREATE TABLE `tumor_sample_other_malignancy_histological_type` (
	tumor_sample varchar(254),
	other_malignancy_histological_type varchar(2048),
	CONSTRAINT fk_tumor_sample_other_malignancy_histological_type FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_other_malignancy_histological_type` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_other_malignancy_histological_type.tsv' INTO TABLE `tumor_sample_other_malignancy_histological_type` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_other_malignancy_laterality`;
CREATE TABLE `tumor_sample_other_malignancy_laterality` (
	tumor_sample varchar(254),
	other_malignancy_laterality varchar(2048),
	CONSTRAINT fk_tumor_sample_other_malignancy_laterality FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_other_malignancy_laterality` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_other_malignancy_laterality.tsv' INTO TABLE `tumor_sample_other_malignancy_laterality` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_prior_dx`;
CREATE TABLE `tumor_sample_prior_dx` (
	tumor_sample varchar(254),
	prior_dx varchar(2048),
	CONSTRAINT fk_tumor_sample_prior_dx FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_prior_dx` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_prior_dx.tsv' INTO TABLE `tumor_sample_prior_dx` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_race1`;
CREATE TABLE `tumor_sample_race1` (
	tumor_sample varchar(254),
	race1 varchar(2048),
	CONSTRAINT fk_tumor_sample_race1 FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_race1` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_race1.tsv' INTO TABLE `tumor_sample_race1` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_result`;
CREATE TABLE `tumor_sample_result` (
	tumor_sample varchar(254),
	result varchar(2048),
	CONSTRAINT fk_tumor_sample_result FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_result` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_result.tsv' INTO TABLE `tumor_sample_result` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_submitted_tumor_site`;
CREATE TABLE `tumor_sample_submitted_tumor_site` (
	tumor_sample varchar(254),
	submitted_tumor_site varchar(2048),
	CONSTRAINT fk_tumor_sample_submitted_tumor_site FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_submitted_tumor_site` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_submitted_tumor_site.tsv' INTO TABLE `tumor_sample_submitted_tumor_site` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_tumor_necrosis_percent`;
CREATE TABLE `tumor_sample_tumor_necrosis_percent` (
	tumor_sample varchar(254),
	tumor_necrosis_percent varchar(2048),
	CONSTRAINT fk_tumor_sample_tumor_necrosis_percent FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_tumor_necrosis_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_tumor_necrosis_percent.tsv' INTO TABLE `tumor_sample_tumor_necrosis_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_tumor_nuclei_percent`;
CREATE TABLE `tumor_sample_tumor_nuclei_percent` (
	tumor_sample varchar(254),
	tumor_nuclei_percent varchar(2048),
	CONSTRAINT fk_tumor_sample_tumor_nuclei_percent FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_tumor_nuclei_percent` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_tumor_nuclei_percent.tsv' INTO TABLE `tumor_sample_tumor_nuclei_percent` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_tumor_weight`;
CREATE TABLE `tumor_sample_tumor_weight` (
	tumor_sample varchar(254),
	tumor_weight varchar(2048),
	CONSTRAINT fk_tumor_sample_tumor_weight FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_tumor_weight` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_tumor_weight.tsv' INTO TABLE `tumor_sample_tumor_weight` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tumor_sample_vial_number`;
CREATE TABLE `tumor_sample_vial_number` (
	tumor_sample varchar(254),
	vial_number varchar(2048),
	CONSTRAINT fk_tumor_sample_vial_number FOREIGN KEY(tumor_sample) REFERENCES `tumor_sample_main`(tumor_sample)
);
LOCK TABLES `tumor_sample_vial_number` WRITE;
LOAD DATA INFILE '/data/prohde/lslod/tsv/tcga/tumor_sample_vial_number.tsv' INTO TABLE `tumor_sample_vial_number` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
UNLOCK TABLES;
