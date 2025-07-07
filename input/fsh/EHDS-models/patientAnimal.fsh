Logical: EHDSPatientAnimal
//Id: EHDSpatientAnimal
Title: "Patient Animal model"
Description: """EHDS refined base model for Patient:Animal"""
Characteristics: #can-be-target

* animalIdentifier 1..* Identifier "Animal identifier" """An identifier of the animal that is unique within a defined scope.  Multiple identifiers could be provided. """
* species 1..1 CodeableConcept "Species" """Identifies the high level taxonomic categorization of the kind of animal. E.g. Dog, Cow."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* breed 0..1 CodeableConcept "Breed" """Identifies the detailed categorization of the kind of animal. E.g. Poodle, Angus."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* genderStatus 0..1 CodeableConcept "Gender status" """Indicates the current state of the animal's reproductive organs. E.g. Neutered, Intact."""
  * ^binding.description = "hl7:animal-genderstatus"
  * ^binding.strength = #preferred
* name 0..* EHDSHumanName "Name" """Name of the animal."""
* dateOfBirth 0..1 date "Date of birth" """The date of birth for the animal."""
* gender 0..1 CodeableConcept "Gender" """The gender of the animal."""
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "Address" """Address where the animal is located. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* deceased[x] 0..1 boolean or dateTime "Deceased" """Indicates if the individual is deceased or not."""
