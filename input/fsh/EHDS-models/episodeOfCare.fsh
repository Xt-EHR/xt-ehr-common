Logical: EHDSEpisodeOfCare
//Id: EHDSepisodeOfCare
Title: "Episode of care model"
Description: """EHDS refined base model for Episode of care"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Episode of care identifier (Business identifiers assigned to this episode of care)."""
* type 0..* CodeableConcept "Type" """A classification of the type of episode of care; e.g. specialist referral, disease management."""
* reasonText 0..1 string "Reason text" """The medical reasons that are expected to be addressed during the episode of care - text."""
* reason 0..* CodeableReference (EHDSCondition or EHDSProcedure or EHDSObservation) "Reason" """The list of medical reasons that are expected to be addressed during the episode of care - coded."""
* diagnosis 0..* Base "Diagnosis" """The list of medical conditions that were addressed during the episode of care"""
  * description 1..1 string "Description" """The medical condition that was addressed during the episode of care - text."""
  * condition 0..1 CodeableReference (EHDSCondition) "Condition" """The medical condition that was addressed during the episode of care"""
* patient 1..1 Reference (EHDSPatient) "Patient" """The patient who is the focus of this episode of care"""
