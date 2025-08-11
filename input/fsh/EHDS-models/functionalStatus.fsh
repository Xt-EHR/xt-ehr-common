Logical: EHDSFunctionalStatus
Parent: EHDSDataSet
//Id: EHDSfunctionalStatus
Title: "Functional status"
Description: """EHDS refined base model for Functional status"""
Characteristics: #can-be-target

* description 0..1 string "Narrative description of the functional status" """Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."""
  * ^requirements = "eHN HDR Guideline, MyHealth@EU, ISO IPS"
* relatedConditions 0..* Base "Conditions related to the functional status"
  // Disability in IPS
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * ^comment = "Disability in IPS"
  * condition 0..1 CodeableConcept "Condition related to the functional status"
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * conditionText 0..1 string "Textual description of the condition"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * onsetDate 0..1 dateTime "Onset date of a condition"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
* functionalStatusAssessment 0..* Base "Functional assessment of the patient" """Functional status assessment of the patient according to a specific assessment scheme."""
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * functionalAssessmentDescription 0..1 string "Description of the functional assessment"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
  * functionalAssessmentCode 0..1 CodeableConcept "Standardized code corresponding to the Functional assessment"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
    * ^binding.description = "ICF, SNOMED CT"
    * ^binding.strength = #preferred
  * functionalAssessmentDateTime 0..1 dateTime "Date and time of the functional assessment"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
  * functionalAssessmentResult[x] 0..1 string or Quantity or CodeableConcept "Functional assessment result value"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
    * ^binding.description = "ICF, SNOMED CT"
    * ^binding.strength = #preferred

/*
  * ^requirements = ""Logical: EHDSFunctionalStatus
//Id: EHDSfunctionalStatus
Title: "Functional status model"
Description: """EHDS refined base model for Functional status. Functional status is a based on EHDSClinicalImpression and uses a specialized Observation profile to support WHODAS 2.0 assessment categories."""
Characteristics: #can-be-target
Parent: EHDSClinicalImpression

* finding
  * itemCode 0..0
  * itemReference only Reference(EHDSFunctionalAssessmentObservation)

Logical: EHDSFunctionalAssessmentObservation
//Id: EHDSFunctionalAssessmentObservation
Title: "Functional assessment observation model"
Description: """EHDS refined model for Functional status assessment observation."""
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

/*
Logical: EHDSFunctionalStatus
//Id: EHDSfunctionalStatus
Title: "Functional status"
Description: """EHDS refined base model for Functional status"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier for this statement."
* description 0..1 string "Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."
* onsetDate 0..1 date "Onset date of a condition if known."
* subject 1..1 EHDSPatient "The patient assessed from the functional view point."
* functionalStatusAssessment 0..* Base "Functional status assessment of the patient according to a specific assessment scheme."
  * description 0..1 string "Description of the functional assessment."
  * date 0..1 dateTime "Date of the functional assessment"
  * code 1..1 CodeableConcept "Standardized code corresponding to the Functional assessment."
    * ^binding.description = "ICF"
    * ^binding.strength = #preferred
  * value 1..1 CodeableConcept "Functional assessment result value."
    * ^binding.description = "ICF"
    * ^binding.strength = #preferred
*/