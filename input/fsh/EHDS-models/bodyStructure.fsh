Logical: EHDSBodyStructure
//Id: EHDSbodyStructure
Title: "Body structure model"
Description: """C.36 - EHDS refined base model for Body structure"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.36.1 - Identifier" """Identifier for this instance of the anatomical structure."""
* morphology 0..1 CodeableConcept "C.36.2 - Morphology" """The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* location 0..1 CodeableConcept "C.36.3 - Location" """Body site"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* locationQualifier 0..* CodeableConcept "C.36.4 - Location qualifier" """Additional qualifier of the body structure. E.g. Upper, Lower, Left side etc."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* laterality 0..1 CodeableConcept "C.36.5 - Laterality" """Body structure laterality."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "C.36.6 - Description" """Textual description of the body structure"""