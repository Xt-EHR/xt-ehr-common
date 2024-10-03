/*Idea is to document the consolidated eHN logical models (as is) first, and then refine them into computable EHDS models.
Consolidated models are based on the work of eHN guidelines consistency task force work results*/

/*
Logical: EHDSPatient
Title: "Patient"
Description: "EHDS refined base model for identification of the patient/subject"
Characteristics: #can-be-target

* personalIdentifier 0..* Identifier "Personal identifier"
* name 0..* HumanName "Name of the patient"
*/


Logical: EHDSPatient
//Id: EHDSpatient
Title: "Patient (model)"
Description: """C.1 - EHDS refined base model for Patient/subject information"""
Characteristics: #can-be-target

* personalIdentifier 1..* Identifier "C.1.1 - Personal identifier" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) or National patient identifier for the Czech patient. Multiple identifiers could be provided. """
* name 0..* HumanName "C.1.2 - Name" """Name associated with the patient/subject. Name might consist of name parts, e.g. Given name or names, family name/surname, name prefix etc."""
* dateOfBirth 0..1 dateTime "C.1.3 - Date of birth" """The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided."""
* administrativeGender 0..1 CodeableConcept "C.1.4 - Administrative gender" """This field must contain a recognized valid value for "administrative gender". If different, "physiological gender" should be communicated elsewhere. """
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "C.1.6 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "C.1.7 - Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""
* maritalStatus 0..1 CodeableConcept "C.1.8 - Marital status" """Marital (civil) status of a patient"""
  * ^binding.description = "TBD"
  * ^binding.strength = #preferred
* citizenship 0..1 CodeableConcept "C.1.9 - Citizenship (nationality)" """Citizenship/nationality of the patient."""
  * ^binding.description = "ISO 3166-1-2"
  * ^binding.strength = #preferred