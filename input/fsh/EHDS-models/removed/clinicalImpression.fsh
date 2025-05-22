/* 
Logical: EHDSClinicalImpression
//Id: EHDSclinicalImpression
Title: "Clinical impression model"
Description: """C.34 - EHDS refined base model for Clinical impression"""
Characteristics: #can-be-target

* identifier 1..* Identifier "C.34.1 - Identifier" """A business identifier of the impression."""
* code 0..1 CodeableConcept "C.34.2 - Code" """Kind of assessment performed."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "C.34.3 - Description" """Textual description of the assessment."""
* date[x] 0..1 dateTime or Period "C.34.4 - Date" """Assessment date or period"""
* patient 1..1 Reference (EHDSPatient) "C.34.5 - Patient" """Patient assessed"""
* encounter 0..1 Reference (EHDSEncounter) "C.34.6 - Encounter" """The Encounter during which this ClinicalImpression was created or to which the creation of this record is tightly associated."""
* performer 0..1 Reference (EHDSHealthProfessional) "C.34.7 - Performer" """The clinician performing the assessment."""
* previousClinicalImpression 0..1 Reference (EHDSClinicalImpression) "C.34.8 - Previous clinical impression" """Reference to last assessment"""
* problem 0..* Reference (EHDSCondition or EHDSAllergyIntolerance) "C.34.9 - Problem" """A list of the relevant problems/conditions for a patient."""
* changePattern 0..1 CodeableConcept "C.34.10 - Change pattern" """Change in the status/pattern of a subject's condition since previously assessed, such as worsening, improving, or no change."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* protocol 0..* uri "C.34.11 - Protocol" """Reference to a specific published clinical protocol that was followed during this assessment, and/or that provides evidence in support of the diagnosis."""
* summary 0..1 string "C.34.12 - Summary" """Clinical impression summary."""
* finding 0..* Base "C.34.13 - Finding" """Specific findings or diagnoses that were considered likely or relevant to ongoing treatment."""
  * itemCode 0..1 CodeableConcept "C.34.13.1 - Item code" """Specific text or code for finding or diagnosis, which may include ruled-out or resolved conditions."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * itemReference 0..1 Reference (EHDSCondition or EHDSObservation) "C.34.13.2 - Item reference" """Specific reference for finding or diagnosis, which may include ruled-out or resolved conditions."""
* supportingInfo 0..* Reference (Resource) "C.34.14 - Supporting info" """Information supporting the clinical impression"""
* comments 0..* string "C.34.15 - Comments" """Comments made about the ClinicalImpression"""
*/