Logical: EHDSOrganization
Title: "Organization model"
Description: """C.3 - EHDS refined base model for Health provider or any other type of organization"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Business identifier of the organisation" """Health provider organisation identifier"""
* type 0..* CodeableConcept "Type of organisation" """Kind of organisation"""
// TO DO: Do we care about this binding?
//  * ^binding.description = "HL7 organization_type"
//  * ^binding.strength = #preferred
* name 0..1 string "Organisation name" """Organisation name"""
* address 0..* EHDSAddress "Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* contact 0..* EHDSTelecom "Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* partOf 0..1 Reference (EHDSOrganization) "Part of" "The organization of which this organization forms a part"
