Logical: EHDSHealthProfessional
Title: "Health professional (model)"
Description: """C.2 - EHDS refined base model for Health professional. The model is designed for identifying the HP as an author of a clinical document. It is not designed for modelling a registry of health professionals."""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.4.1 - Identifier" """Health professional identifier. This can be a national identifier for the health professional and/or an identifier for the health professional in a specific role."""
* name 0..1 HumanName "C.2.2 - Name of the HP" """Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"""
* address 0..1 EHDSAddress "C.2.3 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "C.2.4 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* qualification 0..* CodeableConcept "Qualification of the health professional. This might be a broader list than the active role the HP is in"
  * ^binding.description = "ISCO, SNOMED CT"
  * ^binding.strength = #preferred
* role 0..* CodeableConcept "C.4.2 - Role of the HP" """Health professional role in a given context. Multiple roles could be provided. Typically, health professional is representing one role at any given time."""
  * ^binding.description = "ISCO, SNOMED CT"
  * ^binding.strength = #preferred
* organization 0..1 Reference (EHDSOrganization) "C.4.4 - Organization" """The organization where this role is available"""
* specialty 0..* CodeableConcept "C.4.5 - Specialty" """The specialty of a practitioner that describes the functional role they are practicing at a given organization"""
