Logical: EHDSDischargeReport
Parent: EHDSDocument
Title: "Discharge Report model"
Description: """EHDS refined base model for Discharge Report"""
Characteristics: #can-be-target

* header.intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
* header.healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information"
* knowledgeResources 0..0
* body 0..1 Base "Structured body of the discharge report document" 
    //ok
  * advanceDirectives 0..1 Base "Section: Advance Directives." """Provision for healthcare decisions if, in the future, a person is unable to make those decisions."""
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.2"
    * narrative 0..1 string "Narrative, potentially formatted, content of the section"
    * advanceDirective 0..* EHDSAdvanceDirective "Provision for healthcare decisions if, in the future, a person is unable to make those decisions"

    //ok
  * alerts 0..1 Base "Section: Alerts." "Information about substantial alerts or warnings that health professionals should be aware of."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.2"
    * narrative 0..1 string "Narrative, potentially formatted, content of the section"
    * medicalAlert 0..* EHDSAlert "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.2.2"
    * allergyAndIntolerance 0..* EHDSAllergyIntolerance "Allergy and Intolerance. A record of allergies and intolerances (primarily to be used for new allergies or intolerances that occurred during the encounter)."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.2.1"

    //ok
  * encounterInformation 1..1 Base "Section: Encounter information."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.2"
    * narrative 1..1 string "Narrative, potentially formatted, content of the section"
    * encounter 0..1 EHDSEncounter "Encounter information"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.3"

    //ok. performer and dateAndTime removed as they are present in Observations
  * admissionEvaluation 0..1 Base "Section: Admission evaluation" "Admission evaluation section should be reported exceptionally only if it is relevant to ensure continuity of care."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.4"
    * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
    * objectiveFindings 0..1 Base "Objective findings" "Sub-section with objective findings."
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.1"
      * time 0..1 dateTime "Date and time of the admission evaluation examination"
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.1.1"
      * performer 0..* EHDSHealthProfessional "Health professional(s) responsible for the admission evaluation examination."
      * anthropometricObservations 0..* EHDSObservation "Anthropometric observations, such as body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.1.2"
      * vitalSigns 0..* EHDSObservation "Vital signs observations. Mandatory: pulse rate, respiratory rate, systolic and diastolic blood pressure with site information; optional: 02 saturation"
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.1.3"
      * physicalExamination 0..* EHDSObservation "Physical examination" "Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.1.4"
    //ok
    * functionalStatus 0..1 Base "Section: Functional status" "Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.For details see: https://paciowg.github.io/functional-status-ig/"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.2"
      * narrative 0..1 string "Narrative, potentially formatted, content of the section"
      * functionalStatusAssessment 0..* EHDSFunctionalStatus "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"

    // ok. infectiousContacts into a different model?    
  * patientHistory 0..1 Base "Section: Patient health history (anamnesis)."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.5"
    * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
    * medicalHistory 1..1 Base "Medical history subsection."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1"
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * pastProblems 1..* EHDSCondition "Past problems" "A list of conditions of a patient that the patient suffered in the past or still suffers. Unlike diagnostic summary, medical history is not only a list of problems, but could contain broader description of the condition and its progress, details about treatment including medication and patient response to treatment. Past problem section (unlike the same section of the patient summary) should include only conditions that are important for continuity of care. This section, if provided, complements the diagnostic summary section of the discharge report. "
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.1"
      * devicesAndImplants 1..* EHDSDeviceUse "Devices and Implants" "Devices and implants in patient anamnesis. Negative statement must be explicitly stated."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.2"
      * historyOfProcedures 0..* EHDSProcedure "History of procedures" "Historical procedures performed on or for a patient, relevant for the current encounter.Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, etc."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.3"
      * vaccination 0..* EHDSImmunisation "Vaccination history of the patient."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.4"
      * epidemiologicalHistory 0..1 Base "Epidemiological history" "Travel history and infectious contacts"
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.5"
        * infectiousContacts 0..* EHDSInfectiousContact "Infectious contacts of the patient"
          * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.5.1"
        * travelHistory 0..* EHDSTravelHistory "Travel history reported by the patient. Multiple records could be provided."
          * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.1.5.2"
      * pregnancyHistory 0..1 Base "Section: Pregnancy history" """To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. """
        * ^requirements = "eHN Guideline PS (v3.4) A2.6, ISO IPS"
        * currentPregnancyStatus 0..1 EHDSCurrentPregnancy "Current pregnancy status" """Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown."""
        * previousPregnanciesStatus 0..1 CodeableConcept "Overall status of previous pregnancies" """Overall status of previous pregnancies, including 
    — Yes, previous pregnancies 
    — No, previous pregnancies 
    — Unknown"""
        * previousPregnancies 0..* EHDSPregnancyHistory "History of previous pregnancies" """Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy."""

    * familyHistorySection 0..1 Base "Family history section" "Relevant family history section."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.2"
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * familyHistory 0..* EHDSFamilyMemberHistory "Family history" "Information about serious illnesses in close blood relatives with known or suspected genetic potential or with possible impact on patient care."
    * socialDeterminantsOfHealth 0..1 Base "Social determinants of health" "Information about social determinants of health. "
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.3"
      * narrative 0..1 string "Sub-section narrative" "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * participationInSociety 0..1 Base "Participation in society" "Participation in society details."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.3.1"
        * workSituation 0..1 string "Work situation" "Work Situation describes the extent to which and in what way the patient participates in the workforce. Work is meant in the broadest sense of the word: activities that contribute to the person themselves, their environment or society. This includes both paid and unpaid work."
        * hobby 0..1 string "An activity the patient enjoys doing in their free time."
        * socialNetwork 0..1 string "Social network" "A description of the patient’s social network, such as family, neighbours and friends."
      * educationSection 0..1 Base "Education section" "Information about patient education level."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.3.2"
        * educationLevel 0..1 CodeableConcept "Education level" "Indication of the highest level of education achieved."
          * ^binding.description = "hl7:v3.EducationLevel"
          * ^binding.strength = #preferred
        * comment 0..1 string "If deemed relevant, a specification of the degree program can be provided by means of an explanation (e.g.: patient is in medical school)."
      * livingSituation 0..1 Base "Living situation - household type and other related living situation information."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.3.3"
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
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.3.4"
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
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.4"
        * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
        * alcoholUse 0..* EHDSSubstanceUse "Alcohol consumption by the patient. Multiple records on alcohol use could be provided."
          * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.4.1"
        * tobaccoUse 0..* EHDSSubstanceUse "Tobacco use" "Represent smoking or tobacco habits. Multiple records on tobacco use could be provided."
          * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.4.2"
        * drugConsumption 0..* EHDSSubstanceUse "Consumption of drugs and other substances (in terms of abuse)."
          * ^requirements = "eHN Guideline HDR (v1.1): A.2.5.4.3"

  * courseOfEncounter 1..1 Base "Course of inpatient or outpatient encounter."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.6"
    * diagnosticSummary 1..1 Base "Diagnostic summary. All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care." """The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section."""
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1"
      * narrative 0..1 string "Problem specification in narrative form."
      * problemDetails 0..* Base "Problems that were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the encounter. At least one problem should be marked as treated. Other problems are recorded only if they are important for continuity of care (after discharge)."
        * presentOnAdmission 1..1 CodeableConcept "Whether the condition was present on admission or acquired during encounter" """Category of the problem allows flagging for conditions acquired during encounter."""
          * ^comment = "Value set can include Present on admission [POA], Hospital acquired condition [HAC], Not applicable or Unknown"
        * treatmentClass 1..1 CodeableConcept "Class of the problem (treated, other) in relation to the encounter."
        * problem 1..1 EHDSCondition "Problem details include code that identifies problem, specification of the body structure, laterality, and other aspects of the problem."
    
    * significantProcedures 0..1 Base "Significant procedures section" """Significant surgical and non-surgical procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. This section does not include purely diagnostic procedures (MRI, CT, etc.). If no significant performance has been performed, this fact must be explicitly stated using the IPS Absent and Unknown Data."""
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.2"
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * procedureEntry 0..* EHDSProcedure "Structured procedure entry."
    
    * medicalDevicesAndImplants 1..1 Base "Medical devices and implants section" "Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or its use was stopped during encounter. If the section is blank, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.3"
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * medicalDevicesAndImplants 1..* EHDSDeviceUse "Medical devices and implants"
    
    * pharmacotherapy 0..1 Base "Pharmacotherapy section" "Selected drug treatment during encounter. Medicinal products that were administered during encounter and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section. Medicinal products, the administration of which was started during encounter, but is also recommended after discharge, will be listed in the summary table in the recommendation section."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.5"
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * pharmacotherapy 0..* EHDSMedicationStatement "Pharmacotherapy structured entry."
    
    * significantObservationResults 0..1 Base "Significant Observation Results" "Results of significant functional, diagnostic, and imaging examinations to ensure continuity of care, performed during encounter. Results of examinations ordered but not yet delivered should be presented separately from results already delivered."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.6"
      * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided."
      * significantObservationResult[x] 0..* EHDSObservation or EHDSLaboratoryObservation "Significant Observation Result" "Structured significant observation entry."
    
    * synthesis 1..1 Base "Synthesis" "This section provides clinical synthesis (e.g. description of reasons and course of encounter) clustered by managed conditions, Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.7"
      * problemSynthesis 1..* string "Summary description of the reason and course of hospitalisation for a specific problem."
      * clinicalReasoning 0..1 string "Clinical reasoning" "The clinical summary can be concluded with a clinical consideration (diff. diagnosis, explanation of context, etc.) for clinically complex conditions."

    //ok
  * dischargeDetails 1..1 Base "Discharge details" "Structured information should be provided, however if not available, at least a section narrative should be present."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.7"
    * narrative 0..1 string "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided."
    * objectiveFindings 0..1 Base "Objective findings" "Sub-section with objective findings."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.1"
      * narrative 0..1 string "Narrative content of the section."
      * anthropometricObservations 0..* EHDSObservation "Anthropometric observations, such as body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.1.3"
      * vitalSigns 0..* EHDSObservation "Vital signs observations. Mandatory: pulse rate, respiratory rate, systolic and diastolic blood pressure with site information; optional: 02 saturation"
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.1.4"
      * physicalExamination 0..* EHDSObservation "Physical examination" "Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation."
        * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.1.5"

    //ok
    * functionalStatus 0..1 Base "Section: Functional status" "Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.For details see: https://paciowg.github.io/functional-status-ig/"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.2"
      * narrative 0..1 string "Narrative, potentially formatted, content of the section"
      * functionalStatusAssessment 0..* EHDSFunctionalStatus "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"
    * medicationSummary 0..1 Base "Medication summary. Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.8.1"
      * narrative 0..1 string "Narrative content of the section."
      * entry 0..* Base "Structured medication entry"
        * medicationUse 1..1 EHDSMedicationStatement "Details about medication and dosaging"
        * daysSupplied 0..1 Quantity "Number of days for which the patient was provided with the drug at the time of discharge" "Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"
    * carePlan 0..* Base "Care plan and other recommendations after discharge." "Care plan and other recommendations after discharge section."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.8.2 (A.2.9.2)"
      * narrative 0..1 string "Narrative content of the section."
      * carePlan 0..* EHDSCarePlan "Structured care plan after discharge. Multiple care plans could be provided."
      * otherRecommendations 0..1 string "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.8.3"

* attachments[x] 0..* EHDSAttachment or EHDSMedia "Report attachments data elements"
