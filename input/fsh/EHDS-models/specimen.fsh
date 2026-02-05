Logical: EHDSSpecimen
//Id: EHDSspecimen
Title: "Specimen model"
Description: """EHDS refined base model for a specimen to be used for Analysis"""
Characteristics: #can-be-target

// new logical model for Specimen reflecting feedback requirements to clarify and add details
* identifier 1..* Identifier "An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."
* status 0..1 CodeableConcept "Availability of the specimen."
  * ^binding.description = "HL7 specimen-status"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "The kind of material that forms the Specimen."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* specimenSource[x] 0..1 EHDSPatient or EHDSLocation or EHDSDevice "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a device. Additional types of specimen may be allowed in implementations."
* parentSpecimen 0..* EHDSSpecimen "Specimen from which this specimen originated"
* request 0..* EHDSServiceRequest "Why the specimen ws collected"
* combined 0..1 CodeableConcept "This element signifies if the specimen is part of a group or pooled."
  * ^binding.description = "HL7 specimen-combined"
  * ^binding.strength = #preferred
* collection 0..* Base "Collection details"
  * performer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient or EHDSRelatedPerson "Person or organisation who collected the specimen"
  * collected[x] 1..1 Period or dateTime "The period or date and time of specimen collection."
  * quantity 0..1 Quantity "The quantity of specimen collected"
  //* procedure 0..1 EHDSProcedure "The procedure that collects the specimen. If procedure information will be provided, then procedure details must match information in the speciment.collection structure, e.g. performer, time of collection etc.."
  * method 0..1 CodeableConcept "If relevant for the results, the method of obtaining the specimen."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * device 0..1 EHDSDevice "Device used to perform specimen collection"
  * bodySite 0..1 EHDSBodyStructure "Anatomic location (e.g. body location, laterality and other details) where the material is collected, e.g. Elbow, left"
//    * ^binding.description = "SNOMED CT"
//    * ^binding.strength = #preferred
* receivedDate 0..1 dateTime "Date and time when specimen is received by the testing laboratory."
* container 0..* Base "The container holding the specimen."
  * specimenQuantity 0..1 Quantity "Quantity of specimen within container"
  * containerDevice 1..1 EHDSDevice "The device resource for the the container holding the specimen."
* condition 0..* CodeableConcept "State of the specimen. State of the speeimen should be alligned with dataAbsentReason element of the Observatiom model."
  * ^binding.description = "HL7 specimenCondition"
  * ^binding.strength = #preferred
* note 0..1 string "To communicate any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen)."

/* * identifier 1..* Identifier "An identifier of the specimen which is unique within in a defined scope." """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."""
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
  * containerDevice 1..1 EHDSDevice "Container device" """The device resource for the the container holding the specimen.""" */