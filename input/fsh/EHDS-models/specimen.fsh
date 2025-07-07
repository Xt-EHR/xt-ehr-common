Logical: EHDSSpecimen
//Id: EHDSspecimen
Title: "Specimen model"
Description: """EHDS refined base model for A sample to be used for Analysis"""
Characteristics: #can-be-target

* identifier 1..* Identifier "Identifier" """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."""
* typeOfSpecies 0..1 CodeableConcept "Type of species" """Biologic type of species for laboratory result reports bound to non-human subjects."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* material 0..1 CodeableConcept "Material" """The kind of material that forms the Specimen."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* collectionPeriod 0..1 Period "Collection period" """The period or date and time of specimen collection."""
* bodySite 0..1 CodeableConcept "Body Site" """Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* morphology 0..1 CodeableConcept "Morphology" """Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* sourceDevice 0..1 CodeableConcept "Source Device" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"""
  * ^binding.description = "SNOMED CT, EMDN"
  * ^binding.strength = #preferred
* collectionProcedure 0..1 Reference(Procedure) "Collection procedure" """The procedure that collects the specimen."""
* collectionProcedureMethod 0..1 CodeableConcept "Collection procedure method" """If relevant for the results, the method of obtaining the specimen."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* receivedDate 0..1 dateTime "Received date" """Date and time that the material is handed over at the laboratory or specimen collection centre."""
* subject 0..1 Reference (EHDSPatient or EHDSPatientAnimal or EHDSLocation or EHDSGroup or EHDSDevice or EHDSSubstance) "Subject" """Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance, a biologically-derived product, or a device."""
* container 0..* Base "Container" """The container holding the specimen."""
  * specimenQuantity 0..1 Quantity "Specimen quantity" """Quantity of specimen within container."""
  * containerDevice 1..1 EHDSDevice "Container device" """The device resource for the the container holding the specimen."""