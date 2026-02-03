Logical: EHDSAdvanceDirective
Parent: EHDSDataSet
Title: "Advance directive model"
Description: """Healthcare directives concerning life or after life wishes of the patient"""
Characteristics: #can-be-target

* header
  * author[x] ^short = "Author of the advance directive."
  * author[x] ^definition = "Author of the advance directive."
* category 0..* CodeableConcept "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation."
  * ^requirements = "ISO IPS"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* note 0..1 string "Textual description of the directive"
  * ^requirements = "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS"
* attachment 0..1 EHDSAttachment "Source document, such as a PDF, with the living will and the patient's signature."
  * ^requirements = "eHN HDR Guideline, ISO IPS"