Logical: EHDSCondition
//Id: EHDScondition
Title: "Condition (model)"
Description: """C.15 - EHDS refined base model for A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.15.1 - Identifier" """Condition identifier"""
* description 0..1 Narrative "C.15.2 - Description" """Condition specification in narrative form"""
* code 0..1 CodeableConcept "C.15.3 - Code" """Code identifying the condition, problem or diagnosis"""
  * ^binding.description = "ICD-10*, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* onsetDate 0..1 dateTime "C.15.4 - Onset date" """Onset date of a problem/condition"""
* endDate 0..1 dateTime "C.15.5 - End date" """The date or estimated date that the condition resolved or went into remission."""
* category 0..* CodeableConcept "C.15.6 - Category" """Category or categories of the problem."""
* clinicalStatus 0..1 CodeableConcept "C.15.7 - Clinical status" """Status of the condition/problem (active, resolved, inactive, ...)"""
  * ^binding.description = "HL7 Condtion-clinical"
  * ^binding.strength = #preferred
* resolutionCircumstances 0..* CodeableReference(Resource) "C.15.8 - Resolution circumstances" """Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.). This field includes "free text" if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem "hepatic cyst" and will be included in surgical procedures)."""
* severity 0..1 CodeableConcept "C.15.9 - Severity" """A subjective assessment of the severity of the condition as evaluated by the clinician."""
  * ^binding.description = "HL7 Condtion-severity"
  * ^binding.strength = #preferred
* anatomicLocation 0..* CodeableConcept "C.15.10 - Anatomic location" """The anatomical location including laterality where this condition manifests itself."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* stage 0..* CodeableConcept "C.15.11 - Stage" """Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used."""
  * ^binding.description = "e.g. TNM, ICD-O-3"
  * ^binding.strength = #preferred
