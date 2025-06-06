Logical: EHDSHospitalDischargeReportBody
//Id: EHDShospitalDischargeReportBody
Title: "Hospital Discharge Report body model"
Description: "EHDS refined base model for Hospital Discharge Report body"
Characteristics: #can-be-target

* advanceDirectives 0..1 Base "Authored Advance Directive Information"
  * livingWill 0..* Base "Living will. Only directives being expressed during current inpatient stay. Multiple records of living wills could be provided."
  * dateAndTime 1..1 dateTime "The date and time on which the living will was recorded."
  * type 1..1 CodeableConcept "Type of a living will, e.g. Do not resuscitate, donorship statement, power of attorney etc."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * comment 0..1 string "Comment on the living will."
  * relatedConditions 0..* CodeableConcept "The problem or disorder to which the living will applies."
    * ^binding.description = "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
    * ^binding.strength = #preferred
  * livingWillDocument 1..* EHDSAttachment "Living will document" "Scanned source document with the living will and the patient's signature, such as a PDF."
* alertsSection 0..1 Base "Alerts section" "Alert section includes information about allergies, intolerances and other substantial alerts or warnings that health professionals should be aware of. "
  * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either narrative description of both allergy and alerts, or similar narrative sub-section elements shell be provided.  "
  * allergyAndIntolerance 0..* EHDSAllergyIntolerance "Allergy and Intolerance. A record of allergies and intolerances (primarily to be used for new allergies or intolerances that occurred during the hospital stay)."
  * medicalAlerts 0..* EHDSAlertFlag "Medical alerts. Specific alerts relevant to the patient’s condition that should be noted (other alerts not included in allergies)."
* encounterInformationSection 1..1 Base "Encounter information section."
  * sectionNarrative 1..1 string "Narrative content of the section."
  * encounterInformationSection 0..1 EHDSEncounter "Encounter information section. Hospital encounter details."
* admissionEvaluation 0..1 Base "Admission evaluation section" "Admission evaluation section should be reported exceptionally only if it is relevant to ensure continuity of care."
  * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
  * objectiveFindings 0..1 Base "Objective findings" "Sub-section with objective findings."
    * dateAndTime 0..1 dateTime "Date and time of the examination"
    * performer 0..* EHDSHealthProfessional "Originator/author. Provides provenance information about the source of the results data that may have not originated with the source of the whole document."
    * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
    * anthropometricObservations 0..* EHDSObservation "Anthropometric observations" "Observation of Body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness. Result of the observation includes text, numeric and coded results of the measurement including measurement units."
    * vitalSigns 0..* EHDSObservation "Vital signs" """Vital signs observation:•Required: Pulse rate, respiratory rate, systolic and diastolic blood preasure with site information•Optional: 02 saturation"""
    * physicalExamination 0..* EHDSObservation "Physical examination" "Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation."
  * functionalStatus 0..1 Base "Functional status" """Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.For details see: https://paciowg.github.io/functional-status-ig/"""
    * dateAndTime 0..1 dateTime "Date and time of the examination"
    * performer 0..* EHDSHealthProfessional "Originator/author. Provides provenance information about the source of the results data that may have not originated with the source of the whole document."
    * sectionNarrative 0..1 string "Narrative content of the section."
    * functionalStatusAssessment 0..* EHDSFunctionalStatus "Functional status assessment" "Formalized assessment of the patient's functional status according to the individual assessment categories of the selected assessment system (e.g. WHO-ICF)"
* patientHistory 0..1 Base "Patient health history section (anamnesis)."
  * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
  * medicalHistory 1..1 Base "Medical history subsection."
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * pastProblems 1..* EHDSCondition "Past problems" "A list of conditions of a patient that the patient suffered in the past or still suffers. Unlike diagnostic summary, medical history is not only a list of problems, but could contain broader description of the condition and its progress, details about treatment including medication and patient response to treatment. Past problem section (unlike the same section of the patient summary) should include only conditions that are important for continuity of care. This section, if provided, complements the diagnostic summary section of the discharge report. "
    * devicesAndImplants 1..* EHDSDeviceUse "Devices and Implants" "Devices and implants in patient anamnesis. Negative statement must be explicitly stated."
    * historyOfProcedures 0..* EHDSProcedure "History of procedures" "Historical procedures performed on or for a patient, relevant for the current encounter.Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, etc."
    * vaccination 0..* EHDSImmunization "Vaccination" "Vaccination history of the patient."
    * epidemiologicalHistory 0..1 Base "Epidemiological history" "Travel history and infectious contacts"
      * infectiousContacts 0..* Base "Infectious contacts" "Infectious contacts of the patient"
        * timePeriod 0..1 dateTime "A date and duration or date time interval of contact. Partial dates are allowed."
        * infectiousAgent 0..* CodeableConcept "Infectious agent" "Information about a suspected infectious agent or agents the person was exposed to."
          * ^binding.description = "ICD-10*, SNOMED CT"
          * ^binding.strength = #preferred
        * proximity[x] 0..1 CodeableConcept or Quantity "Proximity to the source/carrier of the infectious agent during exposure. Proximity could be expressed by text, code (direct, indirect) or value specifying distance from the InfectiousAgentCarrier."
        * country 0..1 CodeableConcept "Country in which the person was potentially exposed to an infectious agent."
          * ^binding.description = "ISO 3166-1 alpha-2"
          * ^binding.strength = #preferred
        * additionalInformation 0..1 string "A textual note with additional information about infectious contact."
      * travelHistory 0..* Base "Travel history reported by the patient. Multiple records could be provided."
        * timePeriod 0..1 dateTime "Start and end date or end date and duration of stay in a country. Partial dates are allowed."
        * countryVisited 1..1 CodeableConcept "Country visited by the patient."
          * ^binding.description = "ISO 3166-1 alpha-2"
          * ^binding.strength = #preferred
        * comment 0..1 string "Relevant notes on the travel stay."
  * familyHistorySection 0..1 Base "Family history section" "Relevant family history section."
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * familyHistory 0..* EHDSFamilyMemberHistory "Family history" "Information about serious illnesses in close blood relatives with known or suspected genetic potential or with possible impact on patient care."
  * socialDeterminantsOfHealth 0..1 Base "Social determinants of health" "Information about social determinants of health. "
    * subsectionNarrative 0..1 string "Sub-section narrative" "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * participationInSociety 0..1 Base "Participation in society" "Participation in society details."
      * workSituation 0..1 string "Work situation" "Work Situation describes the extent to which and in what way the patient participates in the workforce. Work is meant in the broadest sense of the word: activities that contribute to the person themselves, their environment or society. This includes both paid and unpaid work."
      * hobby 0..1 string "An activity the patient enjoys doing in their free time."
      * socialNetwork 0..1 string "Social network" "A description of the patient’s social network, such as family, neighbours and friends."
    * educationSection 0..1 Base "Education section" "Information about patient education level."
      * educationLevel 0..1 CodeableConcept "Education level" "Indication of the highest level of education achieved."
        * ^binding.description = "hl7:v3.EducationLevel"
        * ^binding.strength = #preferred
      * comment 0..1 string "If deemed relevant, a specification of the degree program can be provided by means of an explanation (e.g.: patient is in medical school)."
    * livingSituation 0..1 Base "Living situation - household type and other related living situation information."
      * houseType 0..1 CodeableConcept "Type of home the patient lives in."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * homeAdaption 0..* CodeableConcept "Home adaptions present in the home that have been made in the context of the illness or disability to make the functioning of the patient safer and more comfortable and to enable independent living. Multiple data elements could be provided."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * livingConditions 0..* CodeableConcept "Living conditions that affect the accessibility of the home or the stay in the home."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
    * familySituation 0..1 Base "Family situation"
      * comment 0..1 string "Comment on the family situation."
      * familyComposition 0..1 CodeableConcept "Family composition" "The family composition describes the patient’s home situation and the form of cohabitation. A family can consist of one or more people."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * maritalStatus 0..1 CodeableConcept "Person’s marital status according to the terms and definition in the national civil code."
        * ^binding.description = "hl7:marital-status"
        * ^binding.strength = #preferred
      * numberOfChildren 0..1 Quantity "Number of children" "The number of children the patient has. Children in the context of this information model include step children, foster children, biological and adopted children."
      * numberOfChildrenAtHome 0..1 Quantity "Number of children living at home with the patient."
      * childDetails 0..* Base "Child details (age, co-living status and comment)."
        * livingAtHome 0..1 boolean "Living at home. An indication stating whether the child lives at home."
        * dateOfBirth 0..1 date "Child’s date of birth."
        * comment 0..1 string "A comment on the child's family situation."
      * careResponsibility 0..* CodeableConcept "Care responsibility. The activities the patient carries out to care for a dependent family member."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
  * useOfSubstances 0..1 Base "Use of substances" "Information about use and/or abuse of specific substances."
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * alcoholUse 0..* Base "Alcohol consumption by the patient. Multiple records on alcohol use could be provided."
      * status 0..1 CodeableConcept "Status of the patient’s alcohol use."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * periodAndQuantity 0..1 Base "Period of use and amount observation (The extent of the patient’s alcohol use in units of alcohol per time period.)"
        * period 0..1 Period "Time period of alcohol use."
        * quantity 1..1 Quantity "Quantity (volume per time unit)."
      * comment 0..1 string "Textual comment."
    * tobaccoUse 0..* Base "Tobacco use" "Represent smoking or tobacco habits. Multiple records on tobacco use could be provided."
      * status 0..1 CodeableConcept "Status of the patient’s tobacco use."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * periodAndQuantity 0..1 Base "Period of use and amount (The extent of the patient’s tobacco use in units per time period.)"
        * period 0..1 Period "Time period of tobacco usage."
        * quantity 1..1 Quantity "The number of cigarettes, cigars or grams of rolling tobacco consumed per day, week, month or year."
      * comment 0..1 string "Textual comment."
    * drugConsumption 0..* Base "Consumption of drugs and other substances (in terms of abuse)."
      * status 0..1 CodeableConcept "The status of the patient’s drug consumption."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * periodAndQuantity 0..1 Base "Period of use and amount (The extent of the patient’s drug use in units per time period.)"
        * period 0..1 Period "Time period of drug use."
        * quantity 1..1 Quantity "The number of units (pills, joints, shots etc.) per day, week, month, or year; or the frequency of use."
        * drugOrMedicationType 0..1 CodeableConcept "Drug or medication type"
          * ^binding.description = "SNOMED CT"
          * ^binding.strength = #preferred
        * routeOfAdministration 0..* CodeableConcept "Route or routes of administration "
          * ^binding.description = "EDQM"
          * ^binding.strength = #preferred
      * comment 0..1 string "Textual comment."
* courseOfHospitalisation 1..1 Base "Course of hospital stay."
  * diagnosticSummary 1..1 Base "Diagnostic summary. All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section."
    * problemDescription 0..1 string "Problem specification in narrative form."
    * problemDetails 0..* EHDSConditionHdr "Problem details include code that identifies problem, specification of the body structure, laterality, and other aspects of the problem."
  * significantProcedures 0..1 Base "Significant procedures section" """Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care, e.g. surgeries and other "instrumental" interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. This section does not include purely diagnostic procedures (MRI, CT, etc.). If no significant performance has been performed, this fact must be explicitly stated using the IPS Absent and Unknown Data."""
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * procedureEntry 0..* EHDSProcedure "Structured procedure entry."
  * medicalDevicesAndImplantsSection 1..1 Base "Medical devices and implants section" "Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or its use was stopped during hospitalisation. If the section is blank, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system"
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * medicalDevicesAndImplants 1..* EHDSDeviceUse "Medical devices and implants"
  * pharmacotherapySection 0..1 Base "Pharmacotherapy section" "Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section.Medicinal products, the administration of which was started during hospitalisation, but is also recommended after discharge, will be listed in the summary table in the recommendation section."
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * pharmacotherapy 0..* EHDSMedicationStatement "Pharmacotherapy structured entry."
  * significantObservationResults 0..1 Base "Significant Observation Results" "Results of significant functional, diagnostic, and imaging examinations to ensure continuity of care, performed during hospitalisation. Results of examinations ordered but not yet delivered should be presented separately from results already delivered."
    * subsectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * significantObservationResult[x] 0..* EHDSObservation or EHDSLaboratoryObservation "Significant Observation Result" "Structured significant observation entry."
  * synthesis 1..1 Base "Synthesis" "This section provides clinical synthesis (e.g. description of reasons and course of hospital stay) clustered by managed conditions, Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions."
    * problemSynthesis 1..* string "Summary description of the reason and course of hospitalisation for a specific problem."
    * clinicalReasoning 0..1 string "Clinical reasoning" "The clinical summary can be concluded with a clinical consideration (diff. diagnosis, explanation of context, etc.) for clinically complex conditions."
* dischargeDetails 1..1 Base "Discharge details" "Structured information should be provided, however if not available, at least a section narrative should be present."
  * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
  * objectiveFindings 0..1 Base "Objective findings" "Sub-section with objective findings."
    * dateAndTime 0..1 dateTime "Date and time of the examination"
    * performer 0..* EHDSHealthProfessional "Originator/author. Provides provenance information about the source of the results data that may have not originated with the source of the whole document."
    * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
    * anthropometricObservations 0..* EHDSObservation "Anthropometric observations" "Observation of Body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness. Result of the observation includes text, numeric and coded results of the measurement including measurement units."
    * vitalSigns 0..* EHDSObservation "Vital signs" """Vital signs observation:•Required: Pulse rate, respiratory rate, systolic and diastolic blood preasure with site information•Optional: 02 saturation"""
    * physicalExamination 0..* EHDSObservation "Physical examination" "Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation."
  * functionalStatus 0..1 Base "Functional status" "Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.For details see: https://paciowg.github.io/functional-status-ig/"
    * dateAndTime 0..1 dateTime "Date and time of the examination"
    * performer 0..* EHDSHealthProfessional "Originator/author. Provides provenance information about the source of the results data that may have not originated with the source of the whole document."
    * sectionNarrative 0..1 string "Narrative content of the section."
    * functionalStatusAssessment 0..* EHDSFunctionalStatus "Functional status assessment" "Formalized assessment of the patient's functional status according to the individual assessment categories of the selected assessment system (e.g. WHO-ICF)"
* medicationSummary 0..1 Base "Medication summary. Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued."
  * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
  * medicationDetails 0..* EHDSMedicationStatement "Medication details" "Structured medication entry."
* carePlanAndOtherRecommendationsAfterDischarge. 0..* Base "Care plan and other recommendations after discharge." "Care plan and other recommendations after discharge section."
  * sectionNarrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
  * carePlan 0..* EHDSCarePlan "Structured care plan after discharge. Multiple care plans could be provided."
  * otherRecommendations 0..* string "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc."
