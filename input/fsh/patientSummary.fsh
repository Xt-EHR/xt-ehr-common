Logical: EHDSPatientSummary
Title: "Patient summary model - PLACEHOLDER"
Parent: Base
Description: """EHDS refined base model for Patient Summary - PLACEHOLDER"""
Characteristics: #can-be-target


// // * header ^short = "Metadata for the patient summary document"
// //   * natureOfTheDocument 1..1 Base "Nature of the document" """Defines the context in which the document was generated. Distinguishes between four methodological approaches for generating the document: Created entirely by a HCP2; Manually created by HCP(s) and collected by machine(s); Created by machine(s) and checked by HCP(s); Created and collected by machine(s)"""
// //   * eventType 0..0
// //   * authorSpecialty 0..0
// //   * attestation 0..0
// //   * legalAuthentication 0..0
// // We don't have anything to say about these elements - which is not the same as "we don't want anyone to exchange them, so we exclude them from the model".

// // This element is not present and the code is conflicting with the eHN guidelines
// //* preferredHealthProfessional[x] 0..* EHDSHealthProfessional or EHDSOrganisation "A.1.3 - Preferred Health Professional" """Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."""


// /*

// //TO_DO: ADD BACK
// * alerts 1..1 Base "Section: Alerts." "Information about substantial alerts or warnings that health professionals should be aware of."
// //  * ^requirements = "eHN PS Guideline, section ...?"

//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * emptyReason 0..1 CodeableConcept "Reason for absence of data"
//   * medicalAlert 0..* EHDSAlertFlag "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
//     * ^requirements = "eHN PS Guideline"
// */




// * allergiesAndIntolerances 1..1 Base "Section: Allergies and intolerances" "TO_DO"
//   * narrative 0..1 string "Generated text summary of the content in section, for human interpretation"
//   * emptyReason 0..1 CodeableConcept "Use if no Allergies are listed" "Reason for absence of data (indicates whether the person is known to have no allergies or the data is considered incomplete)"
//     * ^binding.description = "1.3.6.1.4.1.12559.11.10.1.3.1.42.47eHDSIAbsentOrUnknownAllergy; http://hl7.org/fhir/ValueSet/list-empty-reason"
//     * ^binding.strength = #preferred
//     * ^example[+].label = "value"
//     * ^example[=].valueCoding = #no-known-allergies "No known allergies"

//   * allergyIntolerance 0..* EHDSPSAllergyIntolerance "Allergy or intolerance information"
//     * ^requirements = "eHN PS Guideline"


// // * allergiesAndIntolerances
// //   * insert Obligation(SummaryProvider, #SHALL:populate) 
// //   * insert Obligation(SummaryConsumer, #SHALL:display) 



// * currentProblems 1..1 Base "Section: Current medical problems." """Conditions that are important to be known for a health professional during a health encounter."""
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * emptyReason 0..1 CodeableConcept "Reason for absence of data" 
//   * healthConditions 0..* EHDSCondition "Health conditions affecting the health of the patient."



// * medicationSummary 1..1 Base "Section: Medication Summary." """Current and relevant past medicine."""
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * emptyReason 0..1 CodeableConcept "Reason for absence of data"
// //TO_DO: ADD BACK
// //  * medicationTreatment 0..* EHDSMedicationAdministration "Medication treatment/prescription relevant for this patient summary. Typically, medications whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not."


// * medicalDevicesAndImplants 1..1 Base "Section: Medical devices and implants" 
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * emptyReason 0..1 CodeableConcept "Reason for absence of data" 
// //TO_DO: ADD BACK
// //  * medicalDevice 0..* EHDSDeviceUse "Describes the patient’s implanted and external medical devices and equipment that their health status depends on. Includes devices (such as cardiac pacemakers, implantable defibrillator, prothesis, ferromagnetic bone implants etc.) that are important to know by the HP."


// * procedures 1..1 Base "Section: Procedures"  
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * emptyReason 0..1 CodeableConcept "Reason for absence of data"
// //TO_DO: ADD BACK
// //  * procedure 0..* EHDSProcedure "Major procedures."

// * immunisations 0..1 Base "Section: Immunisations." """The primary purpose is to enable communication of a patient's immunization status. The section should include current immunization status and may contain the entire immunization history that is relevant to the period of time being summarized. Adverse reactions against vaccines should be documented in the allergy section."""
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
// //TO_DO: ADD BACK
// //  * vaccination 0..* EHDSImmunization "Immunizations given to the patient and their status at the point of care."
//     * ^requirements = "eHN PS Guideline"


// * medicalHistory 0..1 Base "Section: Medical History." """This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form."""
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
//   * pastProblems 0..* EHDSCondition "Problems or diagnoses that the patient suffered in the past, and which have been resolved, closed or declared as inactive (not included in current problems or diagnosis)"
//     * ^requirements = "eHN PS Guideline"
// // Why description and narrative?
// //  * description 0..1 string "Narrative description of past problems."

// //TO_DO: ADD BACK
// * alerts 1..1 Base "Section: Alerts." "Information about substantial alerts or warnings that health professionals should be aware of."




// * functionalStatus 0..1 Base "Section: Functional status"
// //TO_DO: ADD BACK?
// //  * narrative 0..1 string "Narrative, potentially formatted, content of the section"
// //TO_DO: ADD BACK
// //  * functionalStatusAssessment 0..* EHDSFunctionalStatus "An individual’s ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"

// * socialHistory 0..1 Base "Section: Social history." """Observations on social factors such as alcohol consumption or smoking. From the healthcare perspective, life-style factors relate to well-being but can also provide a source of risk factors."""

// //TO_DO: ADD BACK
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
// //TO_DO: Why narrative and text?
//   * description 1..1 string "Textual description of the social history."
// //TO_DO: ADD BACK
// //  * observation 0..* EHDSObservation "Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"""
// //    * referenceDateRange 0..* Period "Reference date range" """Example: from 1974 to 2004"""
// * pregnancyHistory 0..1 Base "Section: Pregnancy history"

// //TO_DO: ADD BACK
// //   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
// //   * currentPregnancyStatus 0..1 Base "Current pregnancy status"
// // //    * dateOfObservation 0..* dateTime "Date of observation" """Date on which the observation of the pregnancy state was made"""
// //     * status 0..* EHDSObservation "Current state at the date the observation was made: e.g. pregnant, not pregnant, unknown"
// //     * expectedDateOfDelivery 0..1 dateTime "Expected date of delivery" """Date on which the woman is due to give birth."""
// //   * previousPregnancies 0..1 Base "History of previous pregnancies"
// //     * status 0..1 EHDSObservation "Previous pregnancies status: Yes, previous pregnancies; No, previous pregnancies; Unknown"
// //     * description 0..* Base "Previous pregnancy's descriptions in detail"
// // //      * outcomeDate 0..1 dateTime "B.1.6.2.2.1 - Outcome date" """Date referred to the previous pregnancies outcome"""
// //       * outcome 0..1 EHDSObservation "Outcome of the pregnancy"
// //       * numberOfChildren 0..1 integer "Number of children/fetuses in this specific pregnancy"

// * travelHistory 0..* Base "captures relevant information about the patient's recent travel history that may be of clinical relevance — particularly in relation to exposure to infectious diseases, epidemiological risks, or environmental factors. The intent is to support clinical decision-making and risk assessment, especially in contexts such as outbreaks or endemic disease regions."
// //TO_DO: ADD BACK
//     // * country 0..1 CodeableConcept "Country code"
//     //   * ^binding.description = "ISO 3166"
//     //   * ^binding.strength = #preferred
//     // * period 0..* Period "Date of entry and departure"


// * advanceDirectives 0..1 Base "Section: Advance Directives." """Provision for healthcare decisions if, in the future, a person is unable to make those decisions."""
// // //TO_DO: ADD BACK
// //   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
// //   * documentation 0..* CodeableConcept "May take the form of a reference to a legal document (e.g., Living Will) or an external textual description."
// //     * ^binding.description = "SNOMED CT"
// //     * ^binding.strength = #preferred

// * results 0..1 Base "Section: Observation results." """Relevant observation results obtained on the patient. These may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results."""
//   * narrative 0..1 string "Narrative, potentially formatted, content of the section"
// //TO_DO: ADD BACK
// //  * resultObservation[x] 0..* EHDSObservation or EHDSLaboratoryObservation "Observation results pertaining to the subject of care's health condition and which might have impact on future treatments"
// * carePlan 0..1 Base "Section: Care plans." """Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries"""
//   * narrative 0..1 string "Narrative containing the plan including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient. In the future it is expected that this Section could be provided in a structured and coded format."
// //TO_DO: ADD BACK
// //  * carePlanEntry 0..* EHDSCarePlan "Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a period of time, possibly limited to care for a specific condition or set of conditions."



// //TO_DO: WHY?
// // * patientProvidedData 0..1 Base "Section: Patient provided data"
// //   * narrative 0..1 string "Narrative, potentially formatted, content of the section"


// /*
// Need models: 
// EHDSPregnancyObservation derived from EHDSObservation
// EHDSSocialHistoryObservation derived from EHDSObservation
// EHDSMedicationTreatment (instead of MedicationAdministration) - see ISO MEOW

// Potentially remove:
// EHDSMedicationAdministration?
// EHDSCarePlan?
// */
