Logical: EHDSFunctionalStatus
//Id: EHDSfunctionalStatus
Parent: EHDSDataSet
Title: "Functional status"
Description: """EHDS refined base model for Functional status"""
Characteristics: #can-be-target
* functionalStatusDescription 0..1 string "Textual description of functional status" 
  * ^requirements = "eHN PS Guideline, ISO IPS"
* onsetDate 0..1 dateTime "Onset date of a condition"
/*
// is this different from functionalAssessmentCode?
* functionalAssessmentDescription 0..1 CodableConcept "Description of the functional assessment"
  * ^binding.description = """ICF"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, ISO IPS"
*/
* functionalAssessmentCode 0..1 CodeableConcept "Standardized code corresponding to the functional assessment"
  * ^binding.description = """ICF, SNOMED CT"""
  * ^binding.strength = #preferred
  * ^requirements = "MyHealth@EU, eHN PS Guideline, ISO IPS"
* functionalAssessmentDate 0..1 dateTime "Date of the functional assessment"
  * ^requirements = "eHN PS Guideline, ISO IPS"
* functionalAssessmentResult[x] 0..* CodeableConcept or string or Quantity "Functional assessment result value"
  * ^binding.description = """ICF, SNOMED CT"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, ISO IPS"


