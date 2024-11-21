Logical: EHDSFunctionalStatus
//Id: EHDSfunctionalStatus
Title: "Functional status"
Description: """C.25 - EHDS refined base model for Functional status"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.25.1 - Identifier" """An identifier for this statement."""
* description 0..1 Narrative "C.25.2 - Description" """Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."""
* onsetDate 0..1 date "C.25.3 - Onset Date" """Onset date of a condition if known."""
* subject 1..1 Reference(EHDSPatient) "C.25.4 - Subject" """The patient using the device."""
* functionalStatusAssessment 0..* Base "C.25.5 - Functional status assessment" """Functional status assessment of the patient according to a specific assessment scheme."""
  * description 0..1 Narrative "C.25.5.1 - Description" """Description of the functional assessment."""
  * date 0..1 dateTime "C.25.5.2 - Date" """Date of the functional assessment"""
  * code 1..1 CodeableConcept "C.25.5.3 - Code" """Standardized code corresponding to the Functional assessment."""
    * ^binding.description = "ICF"
    * ^binding.strength = #preferred
  * value 1..1 CodeableConcept "C.25.5.4 - Value" """Functional assessment result value."""
    * ^binding.description = "ICF"
    * ^binding.strength = #preferred
