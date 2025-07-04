Logical: EHDSAdvanceDirective
Parent: EHDSDataSet
Title: "Advance directive model"
Description: """Healthcare directives concerning life or after life wishes of the patient"""
Characteristics: #can-be-target
* directiveCategory 0..* CodeableConcept "Categories of Directives related to decisions prior and after death"
  * ^binding.description = """SNOMED CT"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
* directiveDescription 0..1 string "Textual description of the directive"
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"


