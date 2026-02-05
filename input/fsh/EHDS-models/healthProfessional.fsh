Logical: EHDSHealthProfessional
//Id: EHDShealthProfessional
Title: "Health professional model"
Description: """EHDS refined base model for Health professional (HP)"""

* identifier 0..* Identifier "An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."
* name 0..1 EHDSHumanName "Name of the health professional that has been treating or taking responsibility for the patient."
* address 0..* EHDSAddress "Mailing and office or home addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."
* telecom 0..* EHDSTelecom "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."
* professionalRole 0..* Base "Professional role that the health professional is practicing at a given organisation. This is a generalisation of the FHIR PractitionerRole resource, which is used to represent the role of a practitioner in a specific context, such as a specific organisation or location."
  * role 0..* CodeableConcept "Health professional role. Multiple roles could be provided."
    * ^binding.description = "ISCO, SNOMED CT"
    * ^binding.strength = #preferred
  * organisation 0..1 EHDSOrganisation "The organisation where this role is available"
  * specialty 0..* CodeableConcept "The specialty of a practitioner that describes the functional role they are practicing at a given organisation"
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred