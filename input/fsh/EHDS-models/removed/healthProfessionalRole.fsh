/*
Logical: EHDSHealthProfessionalRole
Title: "Health professional role model"
Description: """EHDS refined base model for Role and location details associated with a practitioner that are applicable to the healthcare event."""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Health professional role identifier"""
* roleOfTheHp 0..* CodeableConcept "Role of the HP" """Health professional role. Multiple roles could be provided."""
  * ^binding.description = "ISCO, SNOMED CT"
  * ^binding.strength = #preferred
* healthProfessional 0..1 Reference (EHDSHealthProfessional or EHDSDevice) "Health professional" """Practitioner that provides services for the organisation"""
* organisation 0..1 Reference (EHDSOrganisation) "Organisation" """The organisation where this role is available"""
* specialty 0..* CodeableConcept "Specialty" """The specialty of a practitioner that describes the functional role they are practicing at a given organisation"""
*/