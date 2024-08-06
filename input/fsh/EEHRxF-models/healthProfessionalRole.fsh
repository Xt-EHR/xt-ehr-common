Logical: EEHRxFHealthProfessionalRole
//Id: EEHRxFhealthProfessionalRole
Title: "Health professional role (model)"
Description: """C.4 - EEHRxF refined base model for Role and location details associated with a practitioner that are applicable to the healthcare event."""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.4.1 - Identifier" """Health professional role identifier"""
* roleOfTheHp 0..* CodeableConcept "C.4.2 - Role of the HP" """Health professional role. Multiple roles could be provided."""
  * ^comment = "ISCO, SNOMED CT"
* healthProfessional 0..1 Reference (EEHRxFHealthProfessional or EEHRxFDevice) "C.4.3 - Health professional" """Practitioner that provides services for the organization"""
* organization 0..1 Reference (EEHRxFOrganization) "C.4.4 - Organization" """The organization where this role is available"""
* specialty 0..* CodeableConcept "C.4.5 - Specialty" """The specialty of a practitioner that describes the functional role they are practicing at a given organization"""