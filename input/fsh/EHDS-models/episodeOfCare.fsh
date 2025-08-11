Logical: EHDSEpisodeOfCare
Parent: EHDSDataSet
Title: "Episode of care model"
Description: """EHDS refined base model for Episode of care"""
Characteristics: #can-be-target

* header.identifier ^short = "Business identifiers assigned to this episode of care."
* type 0..* CodeableConcept "A classification of the type of episode of care; e.g. specialist referral, disease management."
* reasonText 0..1 string "Textual descriptions of the medical reasons that are expected to be addressed during the episode of care."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSProcedure or EHDSObservation "Coded list of medical reasons that are expected to be addressed during the episode of care."
* diagnosis 0..* Base "List of medical conditions that were addressed during the episode of care"
  * description 1..1 string "Textual description of the medical condition that was addressed during the episode of care"
  * condition[x] 0..1 CodeableConcept or EHDSCondition "The medical condition that was addressed during the episode of care"

