/*
Logical: EHDSFunctionalStatus
//Id: EHDSfunctionalStatus
Title: "Functional status model"
Description: """C.35 - EHDS refined base model for Functional status. Functional status is a based on EHDSClinicalImpression and uses a specialized Observation profile to support WHODAS 2.0 assessment categories."""
Characteristics: #can-be-target
Parent: EHDSClinicalImpression

* finding
  * itemCode 0..0
  * itemReference only Reference(EHDSFunctionalAssessmentObservation)

Logical: EHDSFunctionalAssessmentObservation
//Id: EHDSFunctionalAssessmentObservation
Title: "Functional assessment observation model"
Description: """C.35 - EHDS refined model for Functional status assessment observation."""
Characteristics: #can-be-target
Parent: EHDSObservation

* observationCode from WHODASDomain
* observationResult
  * numericResult
    * numericValue[x] only Quantity
    * numericValue[x] ^short = "Assessment scale domain score (if present)"
* component
  * code from WHODACode
  * observationResult
    * codedResult from WHODASResponse

ValueSet: WHODASDomainVS
Id: whodas-domain-vs
Title: "Xpandh WHODAS Domain Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 assessment domains."
* ^status = #active
* ^experimental = false
* $whodas#D1 "Cognition"
* $whodas#D2 "Mobility"
* $whodas#D3 "Self care"
* $whodas#D4 "Getting along"
* $whodas#D5 "Life activities"
* $whodas#D6 "Participation"

ValueSet: WHODASCodeVS
Id: whodas-code-vs
Title: "Xpandh WHODAS Codes Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 assessment codes."
* ^status = #active
* ^experimental = false
* include codes from system $whodas where concept.level = "1"
*/


Logical: EHDSFunctionalStatus
//Id: EHDSfunctionalStatus
Title: "Functional status"
Description: """C.25 - EHDS refined base model for Functional status"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.25.1 - Identifier" """An identifier for this statement."""
* description 0..1 string "C.25.2 - Description" """Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."""
* onsetDate 0..1 date "C.25.3 - Onset Date" """Onset date of a condition if known."""
* subject 1..1 Reference(EHDSPatient) "C.25.4 - Subject" """The patient assessed from the functional view point."""
* functionalStatusAssessment 0..* Base "C.25.5 - Functional status assessment" """Functional status assessment of the patient according to a specific assessment scheme."""
  * description 0..1 string "C.25.5.1 - Description" """Description of the functional assessment."""
  * date 0..1 dateTime "C.25.5.2 - Date" """Date of the functional assessment"""
  * code 1..1 CodeableConcept "C.25.5.3 - Code" """Standardized code corresponding to the Functional assessment."""
    * ^binding.description = "ICF"
    * ^binding.strength = #preferred
  * value 1..1 CodeableConcept "C.25.5.4 - Value" """Functional assessment result value."""
    * ^binding.description = "ICF"
    * ^binding.strength = #preferred
