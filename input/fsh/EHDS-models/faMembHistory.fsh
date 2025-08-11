Logical: EHDSFamilyMemberHistory
Parent: EHDSDataSet
Title: "Family member history model"
Description: """EHDS refined base model for family member history"""
Characteristics: #can-be-target


* header.subject ^short = "The person whose family member's medical history is described."
* patientRelationship 0..1 CodeableConcept "Patient relationship" """The family relation between the related person and the patient."""
  * ^binding.description = "hl7:v3-RoleCode"
  * ^binding.strength = #preferred
* dateOfBirth 0..1 date "Date of birth of the family member."
* ageOrDateOfDeath[x] 0..1 date or Quantity "Age or date of the death of the family member."
* condition 0..* CodeableConcept "Medical problems this person suffers or suffered."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* causeOfDeath 0..1 CodeableConcept "Information about disease or condition that was the main cause of death."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
