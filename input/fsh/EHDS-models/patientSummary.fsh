Logical: EHDSPatientSummary
Title: "Patient summary model"
Parent: EHDSDocument
Description: """EHDS refined base model for Patient Summary"""
Characteristics: #can-be-target


// * header ^short = "Metadata for the patient summary document"
//   * natureOfTheDocument 1..1 Base "Nature of the document" """Defines the context in which the document was generated. Distinguishes between four methodological approaches for generating the document: Created entirely by a HCP2; Manually created by HCP(s) and collected by machine(s); Created by machine(s) and checked by HCP(s); Created and collected by machine(s)"""
//   * eventType 0..0
//   * authorSpecialty 0..0
//   * attestation 0..0
//   * legalAuthentication 0..0
// We don't have anything to say about these elements - which is not the same as "we don't want anyone to exchange them, so we exclude them from the model".

// This element is not present and the code is conflicting with the eHN guidelines
//* preferredHealthProfessional[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Preferred Health Professional" """Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."""


* alerts 1..1 Base "Section: Alerts." "Information about substantial alerts or warnings that health professionals should be aware of."
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Reason for absence of data"
  * medicalAlert 0..* EHDSAlert "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
    * ^requirements = "ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* allergiesAndIntolerances 1..1 Base "Section: Allergies and intolerances"
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * allergyIntolerance 0..* EHDSAllergyIntolerance "List of structured allergies and intolerances"
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * emptyReason 0..1 CodeableConcept "Use if no Allergies are listed" "Reason for absence of data (indicates whether the person is known to have no allergies or the data is considered incomplete)"
    * ^binding.description = "1.3.6.1.4.1.12559.11.10.1.3.1.42.47eHDSIAbsentOrUnknownAllergy; http://hl7.org/fhir/ValueSet/list-empty-reason"
    * ^binding.strength = #preferred
    // * ^example[+].label = "value"
    // * ^example[=].valueCoding = #no-known-allergies "No known allergies"
    * ^requirements = "This element is present in MyHealth@EU specifications and ISO IPS. The proposed way of modelling is identical to the newest version of FHIR IPS IG. See general description of Patient summary modelling for more information about this element. MH@EU has a similar concept, but it is modelled in slightly different way."
  * note 0..1 string "Free text notes by the health professional"

* problems 1..1 Base "Medical problems." """Conditions that are important to be known for a health professional during a health encounter."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Use if no conditions are listed" 
  * problems 0..* EHDSCondition "!!Health conditions affecting the health of the patient.!!"
  * note 0..1 string "Free text notes by the health professional"

* medicationSummary 1..1 Base "Section: Medication Summary." """Current and relevant past medicine."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Use if no medicines are listed"
  * medicationTreatment 0..* EHDSMedicationStatement "Medication treatment/prescription relevant for this patient summary. Typically, medications whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not."
  * note 0..1 string "Free text notes by the health professional"

* medicalDevicesAndImplants 1..1 Base "Section: Medical devices and implants" 
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Reason for absence of data" 
  * medicalDevice 0..* EHDSDeviceUse "Describes the patient's implanted and external medical devices and equipment that their health status depends on. Includes devices (such as cardiac pacemakers, implantable defibrillator, prothesis, ferromagnetic bone implants etc.) that are important to know by the HP."
  * note 0..1 string "Free text notes by the health professional"

* procedures 1..1 Base "Section: Procedures"  
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Reason for absence of data"
  * procedure 0..* EHDSProcedure "List of procedures" 
  * note 0..1 string "Free text notes by the health professional"

* vaccinations 0..1 Base "Section: Vaccination/prophylaxis." """A patient's immunisation status. The section should include current immunization status and may contain the entire immunization history that is relevant to the period of time being summarised. Adverse reactions against vaccines should be documented in the allergy section."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * vaccination 0..* EHDSImmunisation "Immunisations given to the patient and their status at the point of care."
    * ^requirements = "eHN PS Guideline"
  * note 0..1 string "Free text notes by the health professional"

// Removed per #219
// * medicalHistory 0..1 Base "Section: Medical History." """This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form."""
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * pastProblems 0..* EHDSCondition "Problems or diagnoses that the patient suffered in the past, and which have been resolved, closed or declared as inactive (not included in current problems or diagnosis)"
//     * ^requirements = "eHN PS Guideline"


* functionalStatus 0..1 Base "Section: Functional status"
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * functionalStatusAssessment 0..* EHDSFunctionalStatus "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"
  * note 0..1 string "Free text notes by the health professional"

* socialHistory 0..1 Base "Section: Social history." """Observations on social factors such as alcohol consumption or smoking. From the healthcare perspective, life-style factors relate to well-being but can also provide a source of risk factors."""
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * socialHistoryObservation 0..* EHDSSocialHistory "Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"""
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* pregnancyHistory 0..1 Base "Section: Pregnancy history" """To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. """
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * currentPregnancyStatus 0..1 EHDSCurrentPregnancy "Current pregnancy status" """Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown."""
    * ^requirements = "eHN PS Guideline, ISO IPS"
  * previousPregnanciesStatus 0..1 CodeableConcept "Overall status of previous pregnancies" """Overall status of previous pregnancies, including 
— Yes, previous pregnancies 
— No previous pregnancies 
— Unknown"""
    * ^requirements = "eHN PS Guideline, ISO IPS"
  * previousPregnancies 0..* EHDSPregnancyHistory "History of previous pregnancies" """Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy."""
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* travelHistory 0..1 Base "Relevant information about the patient's recent travel history" "Captures relevant information about the patient's recent travel history that may be of clinical relevance — particularly in relation to exposure to infectious diseases, epidemiological risks, or environmental factors. The intent is to support clinical decision-making and risk assessment, especially in contexts such as outbreaks or endemic disease regions."
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * travelHistory 0..* EHDSTravelHistory "Travel history for one country"
    * ^requirements = "eHN PS Guideline, ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* patientStory 0..1 Base "What the patient believes to be important for the attending clinician to know." """A concise narrative from the patient’s perspective about their present health state. This is a record of the things that a person feels it is important to communicate about their needs, strengths, values, concerns and preferences to others providing support and care."""
  * ^requirements = "ISO IPS"
// TODO: if structured information is added or explicitly mentioned in the descriptions, we might still want to have note and generatedNarrative both.  
//  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * note 0..1 string "Free text notes by the health professional"

* advanceDirectives 0..1 Base "Section: Advance Directives." """Provision for healthcare decisions if, in the future, a person is unable to make those decisions."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * advanceDirective 0..* EHDSAdvanceDirective "Provision for healthcare decisions if, in the future, a person is unable to make those decisions"
  * note 0..1 string "Free text notes by the health professional"

* results 0..1 Base "Section: Observation results." """Relevant observation results obtained on the patient. These may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * resultObservation[x] 0..* EHDSObservation or EHDSLaboratoryObservation "Observation results pertaining to the subject of care's health condition and which might have impact on future treatments"
  * note 0..1 string "Free text notes by the health professional"

* carePlan 0..1 Base "Section: Care plans." """Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries"""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * carePlanEntry 0..* EHDSCarePlan "Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a period of time, possibly limited to care for a specific condition or set of conditions."
  * note 0..1 string "Free text notes by the health professional"


//TO_DO: WHY?
// * patientProvidedData 0..1 Base "Section: Patient provided data"
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"

/*
Need models: 
EHDSPregnancyObservation derived from EHDSObservation
EHDSSocialHistoryObservation derived from EHDSObservation
EHDSMedicationTreatment (instead of MedicationAdministration) - see ISO MEOW

Potentially remove:
EHDSMedicationAdministration?
EHDSCarePlan?
*/