Logical: EHDSSpecimen
//Id: EHDSspecimen
Title: "Specimen model"
Description: """C.9 - EHDS refined base model for A sample to be used for Analysis"""
Characteristics: #can-be-target

* identifier 1..* Identifier "C.9.1 - Identifier" """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."""
* typeOfSpecies 0..1 CodeableConcept "C.9.2 - Type of species" """Biologic type of species for laboratory result reports bound to non-human subjects."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* material 0..1 CodeableConcept "C.9.3 - Material" """The kind of material that forms the Specimen."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* collectionPeriod 0..1 Period "C.9.4 - Collection period" """The period or date and time of specimen collection."""
* bodySite 0..1 CodeableConcept "C.9.5 - Body Site" """Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* morphology 0..1 CodeableConcept "C.9.6 - Morphology" """Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* sourceDevice 0..1 CodeableConcept "C.9.7 - Source Device" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"""
  * ^binding.description = "SNOMED CT, EMDN"
  * ^binding.strength = #preferred
* collectionProcedure 0..1 Reference(Procedure) "C.9.8 - Collection procedure" """The procedure that collects the specimen."""
* collectionProcedureMethod 0..1 CodeableConcept "C.9.9 - Collection procedure method" """If relevant for the results, the method of obtaining the specimen."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* receivedDate 0..1 dateTime "C.9.10 - Received date" """Date and time that the material is handed over at the laboratory or specimen collection centre."""
* subject 0..1 Reference (EHDSPatient or EHDSPatientAnimal or EHDSLocation or EHDSGroup or EHDSDevice or EHDSSubstance) "C.9.11 - Subject" """Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance, a biologically-derived product, or a device."""
* container 0..* Base "C.9.12 - Container" """The container holding the specimen."""
  * specimenQuantity 0..1 Quantity "C.9.12.1 - Specimen quantity" """Quantity of specimen within container."""
  * containerDevice 1..1 EHDSDevice "C.9.12.2 - Container device" """The device resource for the the container holding the specimen."""