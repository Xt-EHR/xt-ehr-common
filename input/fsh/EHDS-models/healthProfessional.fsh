Logical: EHDSHealthProfessional
//Id: EHDShealthProfessional
Title: "Health professional (model)"
Description: """C.2 - EHDS refined base model for Health professional (HP)"""
Characteristics: #can-be-target

* ^name = "EHDShealthProfessional"
* ^type = "EHDShealthProfessional"
* identifierOfTheHp 0..* Identifier "C.2.1 - Identifier of the HP" """An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."""
* nameOfTheHp 1..1 HumanName "C.2.2 - Name of the HP" """Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"""
* address 0..1 EHDSAddress "C.2.3 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "C.2.4 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
