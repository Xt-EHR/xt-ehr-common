Logical: EHDSRelatedPerson
Title: "Related person model"
Description: """EHDS refined base model for Patient/subject guardian and other related person information"""
Characteristics: #can-be-target


* personalIdentifier 0..* Identifier "Personal identifier" """An identifier of the related person that is unique within a defined scope. Example: National ID (birth number) for the Czech citizen. Multiple identifiers could be provided. """
* name 0..* EHDSHumanName "Name" """Name associated with the person. Name might consists of name parts, e.g. Given name or names, family name/surname, name prefix etc."""
* subject 1..1 EHDSPatient "The patient in relation to whom the related person is defined."
* relationship 0..1 CodeableConcept "Relationship" """Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc."""
  * ^binding.description = "HL7 RoleCode"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""
