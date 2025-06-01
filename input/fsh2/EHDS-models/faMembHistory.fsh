Logical: EHDSFamilyMemberHistory
//Id: EHDSfamilyMemberHistory
Title: "Family member history model"
Description: """C.37 - EHDS refined base model for Family member history"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.37.1 - Identifier" """Business identifier for this record."""
* patient 1..1 Reference (EHDSPatient) "C.37.2 - Patient" """The person who this history concerns."""
* patientRelationship 0..1 CodeableConcept "C.37.3 - Patient relationship" """The family relation between the related person and the patient."""
  * ^binding.description = "hl7:v3-RoleCode"
  * ^binding.strength = #preferred
* dateOfBirth 0..1 date "C.37.4 - Date of birth" """Full or partial date of birth"""
* ageOrDateOfDeath[x] 0..1 date or Quantity "C.37.5 - Age or date of death" """Age or date of the death of the family member."""
* condition 0..* CodeableConcept "C.37.6 - Condition" """Medical problems this person suffers or suffered."""
  * ^binding.description = "ICD-10*, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* causeOfDeath 0..1 CodeableConcept "C.37.7 - Cause of death" """Information about disease or condition that was the main cause of death."""
  * ^binding.description = "ICD-10*, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
