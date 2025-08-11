/* 
Logical: EHDSClinicalImpression
//Id: EHDSclinicalImpression
Title: "Clinical impression model"
Description: """EHDS refined base model for Clinical impression"""
Characteristics: #can-be-target

* identifier 1..* Identifier "Identifier" """A business identifier of the impression."""
* code 0..1 CodeableConcept "Code" """Kind of assessment performed."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "Description" """Textual description of the assessment."""
* date[x] 0..1 dateTime or Period "Date" """Assessment date or period"""
* patient 1..1 Reference (EHDSPatient) "Patient" """Patient assessed"""
* encounter 0..1 Reference (EHDSEncounter) "Encounter" """The Encounter during which this ClinicalImpression was created or to which the creation of this record is tightly associated."""
* performer 0..1 Reference (EHDSHealthProfessional) "Performer" """The clinician performing the assessment."""
* previousClinicalImpression 0..1 Reference (EHDSClinicalImpression) "Previous clinical impression" """Reference to last assessment"""
* problem 0..* Reference (EHDSCondition or EHDSAllergyIntolerance) "Problem" """A list of the relevant problems/conditions for a patient."""
* changePattern 0..1 CodeableConcept "Change pattern" """Change in the status/pattern of a subject's condition since previously assessed, such as worsening, improving, or no change."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* protocol 0..* uri "Protocol" """Reference to a specific published clinical protocol that was followed during this assessment, and/or that provides evidence in support of the diagnosis."""
* summary 0..1 string "Summary" """Clinical impression summary."""
* finding 0..* Base "Finding" """Specific findings or diagnoses that were considered likely or relevant to ongoing treatment."""
  * itemCode 0..1 CodeableConcept "Item code" """Specific text or code for finding or diagnosis, which may include ruled-out or resolved conditions."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * itemReference 0..1 Reference (EHDSCondition or EHDSObservation) "Item reference" """Specific reference for finding or diagnosis, which may include ruled-out or resolved conditions."""
* supportingInfo 0..* Reference (Resource) "Supporting info" """Information supporting the clinical impression"""
* comments 0..* string "Comments" """Comments made about the ClinicalImpression"""
*/