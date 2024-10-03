Logical: EHDSRelatedPerson
//Id: EHDSrelatedPerson
Title: "Related person (model)"
Description: """C.13 - EHDS refined base model for Patient/subject guardian and other related person information"""
Characteristics: #can-be-target

* personalIdentifier 0..* Identifier "C.13.1 - Personal identifier" """An identifier of the related person that is unique within a defined scope. Example: National ID (birth number) for the Czech citizen. Multiple identifiers could be provided. """
* name 0..* HumanName "C.13.2 - Name" """Name associated with the person. Name might consists of name parts, e.g. Given name or names, family name/surname, name prefix etc."""
* relationship 0..1 CodeableConcept "C.13.3 - Relationship" """Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc."""
  * ^binding.description = "HL7 RoleCode"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "C.13.4 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "C.13.5 - Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""
