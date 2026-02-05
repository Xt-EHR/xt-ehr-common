Logical: EHDSRelatedPerson
Title: "Related person model"
Description: """EHDS refined base model for Patient/subject guardian and other related person information"""


* personalIdentifier 0..* Identifier "An identifier of the related person that is unique within a defined scope (e.g. national ID number). Multiple identifiers could be provided."
* name 0..* EHDSHumanName "Name associated with the person."
* subject 1..1 EHDSPatient "The patient in relation to whom the related person is defined."
* relationship 0..1 CodeableConcept "Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc."
  * ^binding.description = "HL7 RoleCode"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "Mailing and home or office address"
* telecom 0..* EHDSTelecom "Telecommunication contact information (addresses) of the person."
