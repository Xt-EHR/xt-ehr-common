Logical: EHDSCondition
Parent: EHDSDataSet
Title: "Condition model"
Description: """EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."""
Characteristics: #can-be-target


* problem 1..1 CodeableConcept "Code identifying the condition, problem or diagnosis"
  * ^binding.description = "ICD-10, SNOMED CT, ICD-O, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.2; PS (v3.4) A.2.2.2.1, A.2.3.1.1"
* onsetDate 0..1 dateTime "Onset date of a problem/condition"
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.3; PS (v3.4) A.2.2.2.2, A.2.3.1.2"
* endDate 0..1 dateTime "The date or estimated date that the condition resolved or went into remission"
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.4; PS (v3.4) A.2.2.2.3"
* category 0..* CodeableConcept "Category or categories of the problem (e.g. POA - present on admission, HAC - hospital aquired condition, and other categorisations)."
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.5"
* problemStatus 0..1 CodeableConcept "Status of the condition/problem (active, resolved, inactive, ...)"
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.7; PS (v3.4) A.2.2.2.1"
  * ^binding.description = "HL7 Condition Clinical Status Codes"
  * ^binding.strength = #preferred
// MyHealth@EU PS on CDA uses SNOMED CT for status, but FHIR has required binding
* resolutionCircumstances 0..* string "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.)." """This field includes free text if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem "hepatic cyst" and will be included in surgical procedures)."""
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.8; PS (v3.4) A.2.2.2.4"
* severity 0..1 CodeableConcept "A subjective assessment of the severity of the condition as evaluated by the clinician."
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.9"
  * ^binding.description = "HL7 Condition/Diagnosis Severity; SNOMED CT"
  * ^binding.strength = #preferred
// MyHealth@EU PS on CDA uses SNOMED CT, but HDR uses HL7 for severity
* anatomicLocation 0..* EHDSBodyStructure "The anatomical location including laterality where this condition manifests itself."
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.2"
* stage 0..* CodeableConcept "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used."
  * ^binding.description = "e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …"
  * ^binding.strength = #preferred
  * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1.10"
* diagnosisAssertionStatus 0..1 CodeableConcept "Assertion about the certainty associated with a diagnosis. Diagnostic and/or clinical evidence of condition."
  * ^binding.description = "HL7 Condition Verification Status"
  * ^binding.strength = #preferred
  * ^requirements = "eHN Guideline PS (v3.4) A.2.3.1.3"
* asserter 0..1 EHDSHealthProfessional "The asserter of the condition"
* assertedDate 0..1 dateTime "Date and time of the diagnosis assertion"
* specialistContact 0..* EHDSHealthProfessional "Health Professional who may be specifically related to the problem, as a preferred contact."
  * ^requirements = "ISO IPS, MyHealth@EU"
* externalResource 0..* uri "External Resource which may be specifically related to the problem, for example a link between a rare disease problem and the corresponding guidelines."
  * ^requirements = "MyHealth@EU"

