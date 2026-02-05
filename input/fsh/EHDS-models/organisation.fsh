Logical: EHDSOrganisation
Title: "Organisation model"
Description: """Model for information about an organisation"""

* identifier 0..* Identifier "Organisation identifier"
* type 0..* CodeableConcept "Kind of organisation"
  * ^binding.description = "HL7 organisation_type"
  * ^binding.strength = #preferred
* name 0..1 string "Organisation name"
* address 0..* EHDSAddress "Mailing or office addresses."
* telecom 0..* EHDSTelecom "Telecommunication contact information (addresses) associated with an organisation, such as phone number, email, or messaging service."
* partOf 0..1 EHDSOrganisation "The organisation of which this organisation forms a part"
