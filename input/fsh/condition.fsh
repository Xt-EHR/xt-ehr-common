Logical: EHDSCondition
Parent: EHDSDataSet
Title: "Condition model"
Description: """EHDS refined base model for A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."""
Characteristics: #can-be-target

* problem 1..1 CodeableConcept "Code identifying the condition, problem or diagnosis"
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.5 eHDSIIllnessandDisorder (ICD-10, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.63 eHDSIRareDisease (OrphaCodes, used in MH@EU); ICD-11; SNOMED CT
"""
  * ^binding.strength = #preferred


//TO_DO: Do we want this?
//* description 0..1 string "Condition specification in narrative form"


* diagnosisAssertionStatus 0..1 CodeableConcept "Assertion about the certainty associated with a diagnosis. Diagnostic and/or clinical evidence of condition."
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.64 eHDSICertainty (HL7, used in MH@EU); http://hl7.org/fhir/ValueSet/condition-ver-status (HL7, required in HL7 FHIR)
"""
  * ^binding.strength = #preferred

* onsetDate 0..1 dateTime "Date of problem onset " "Onset date of a problem/condition"

* endDate 0..1 dateTime "Problem resolution date" "The date (or estimated date) that the condition resolved or went into remission."

//* resolutionCircumstances[x] 0..* CodeableConcept or string or Reference "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.)." """This field includes free text if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem "hepatic cyst" and will be included in surgical procedures)."""
* resolutionCircumstances 0..1 string "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.)." """This field includes free text if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem "hepatic cyst" and will be included in surgical procedures)."""

* clinicalStatus 0..1 CodeableConcept "Status of the condition/problem (active, resolved, inactive, ...)"
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.15 eHDSIStatusCode (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/condition-clinical (HL7, required in HL7 FHIR)
"""
  * ^binding.strength = #preferred

* severity 0..1 CodeableConcept "A subjective assessment of the severity of the condition as evaluated by the clinician."
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.13 eHDSISeverity (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/condition-severity (SCT, Preferred in HL7 FHIR); Basic 3-Value Severity Scale Value: Mild-Moderate-Severe http://id.who.int/icd/entity/681697550 (ICD-11)
"""
  * ^binding.strength = #preferred


//* specialistContact 0..*  "Date and time of the diagnosis assertion"



// * category 0..* CodeableConcept "Category or categories of the problem."
// * anatomicLocation[x] 0..* CodeableConcept or EHDSBodyStructure "The anatomical location including laterality where this condition manifests itself."
//   * ^binding.description = "SNOMED CT"
//   * ^binding.strength = #preferred
// * stage 0..* CodeableConcept "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used."
//   * ^binding.description = "e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …"
//   * ^binding.strength = #preferred
// * asserter 0..1 EHDSHealthProfessional "The asserter of the condition"

// * assertedDate 0..1 dateTime "Date and time of the diagnosis assertion"



/*
* participant 0..* Base "Who or what participated in the activities related to the condition and how they were involved."
  * function 0..1 CodeableConcept "Type of participant involvement."
    * ^binding.description = "To be specified"
    * ^binding.strength = #preferred
  * actor 1..1 EHDSHealthProfessional "Health Professional who may be specifically related to the condition, e.g., as a preferred contact."
* externalResourceRelatedWith 0..* uri "External resource which may be specifically relatedto the problem, for example a link between a rare disease problemand the corresponding guidelines."
*/
