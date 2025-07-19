Logical: EHDSOrganisation
Title: "Organisation model"
Description: """EHDS refined base model for Health provider or any other type of organisation"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Health provider organisation identifier"""
* type 0..* CodeableConcept "Type" """Kind of organisation"""
  * ^binding.description = "HL7 organisation_type"
  * ^binding.strength = #preferred
* name 0..1 string "Name" """Health provider organisation name"""
* address 0..* EHDSAddress "Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* partOf 0..1 Reference (EHDSOrganisation) "Part of" """The organisation of which this organisation forms a part"""
