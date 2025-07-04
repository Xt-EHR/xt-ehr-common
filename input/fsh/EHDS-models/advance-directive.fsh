Logical: EHDSAdvanceDirective
Parent: EHDSDataSet
Title: "Advance directive model"
Description: """Healthcare directives concerning life or after life wishes of the patient"""
Characteristics: #can-be-target
* category 0..* CodeableConcept "Categories of Directives related to decisions prior and after death"
  * ^requirements = "ISO IPS"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* narrative 0..1 string "Textual description of the directive"
  * ^requirements = "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS"
* effectivePeriod 0..1 Period "Time period during which the directive is effective"
  * ^requirements = "eHN HDR Guideline, ISO IPS"
* authorizingEntity[x] 0..1 Patient or Practitioner or RelatedPerson or Organization "Person or organization that authorizes the directive"
  * ^requirements = "ISO IPS"
* relatedConditions[x] 0..1 CodeableConcept "The problem or disorder to which the living will applies. Multiple fields could be provided."
  * ^requirements = "ISO IPS"
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* advanceDirectiveDocument 0..1 EHDSAttachment "Scanned source document with the living will and the patient's signature, such as a PDF."
  * ^requirements = "eHN HDR Guideline, ISO IPS"