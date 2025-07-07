Logical: EHDSBodyStructure
//Id: EHDSbodyStructure
Title: "Body structure model"
Description: """EHDS refined base model for Body structure"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier for this instance of the anatomical structure."
* morphology 0..1 CodeableConcept "The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* location 0..1 CodeableConcept "Body site"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* locationQualifier 0..* CodeableConcept "Additional qualifier of the body structure (e.g. upper, lower, left side)."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* laterality 0..1 CodeableConcept "Body structure laterality (e.g. left, right)."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "Textual description of the body structure"
