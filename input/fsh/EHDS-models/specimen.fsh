Logical: EHDSSpecimen
//Id: EHDSspecimen
Title: "Specimen model"
Description: """EHDS refined base model for A sample to be used for Analysis"""
Characteristics: #can-be-target

* identifier 1..* Identifier "An identifier of the specimen which is unique within in a defined scope." """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."""
* typeOfSpecies 0..1 CodeableConcept "Biologic type of species for laboratory result reports bound to non-human subjects."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* material 0..1 CodeableConcept "Material that forms the specimen."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* collectionPeriod 0..1 Period "The period or date and time of specimen collection."
* bodySite 0..1 EHDSBodyStructure "Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left"
// * morphology 0..1 CodeableConcept "Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."
//   * ^binding.description = "SNOMED CT"
//   * ^binding.strength = #preferred
* sourceDevice 0..1 CodeableConcept "Source device in case the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"
  * ^binding.description = "SNOMED CT, EMDN"
  * ^binding.strength = #preferred
* collectionProcedure 0..1 EHDSProcedure "The procedure that collects the specimen."
* collectionProcedureMethod 0..1 CodeableConcept "Collection procedure method" """If relevant for the results, the method of obtaining the specimen."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* receivedDate 0..1 dateTime "Date and time that the material is handed over at the laboratory or specimen collection centre."
* subject[x] 0..1 EHDSPatient or EHDSPatientAnimal or EHDSLocation or EHDSDevice or EHDSSubstance "Subject" """Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance, a biologically-derived product, or a device."""
* container 0..* Base "The container holding the specimen."
  * specimenQuantity 0..1 Quantity "Specimen quantity" """Quantity of specimen within container."""
  * containerDevice 1..1 EHDSDevice "Container device" """The device resource for the the container holding the specimen."""