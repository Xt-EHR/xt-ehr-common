Logical: EEHRxFSpecimen
//Id: EEHRxFspecimen
Title: "Specimen (model)"
Description: """C.9 - EEHRxF refined base model for Specimen information"""
Characteristics: #can-be-target

* identifier 1..* Identifier "C.9.1 - Identifier" """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."""
* typeOfSpecies 0..1 CodeableConcept "C.9.2 - Type of species" """Biologic type of species for laboratory result reports bound to non-human subjects."""
  * ^comment = "SNOMED CT"
* material 0..1 CodeableConcept "C.9.3 - Material" """Specimen material."""
  * ^comment = "SNOMED CT"
* collectionPeriod 1..1 Period "C.9.4 - Collection period" """Collection date time or period."""
* anatomicLocation 0..1 CodeableConcept "C.9.5 - Anatomic location" """Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left"""
  * ^comment = "SNOMED CT"
* morphology 0..1 CodeableConcept "C.9.6 - Morphology" """Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."""
  * ^comment = "SNOMED CT"
* sourceDevice 0..1 CodeableConcept "C.9.7 - Source Device" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"""
  * ^comment = "SNOMED CT, EMDN"
* collectionProcedureMethod 0..1 CodeableConcept "C.9.8 - Collection procedure method" """If relevant for the results, the method of obtaining the specimen."""
  * ^comment = "SNOMED CT"
* receivedDate 0..1 dateTime "C.9.9 - Received date" """Date and time that the material is handed over at the laboratory or specimen collection centre."""

