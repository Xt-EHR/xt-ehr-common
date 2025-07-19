Logical: EHDSMedicationAdministration
Parent: EHDSDataSet
Title: "Medication administration model"
Description: "EHDS refined base model for a single medication administration"
Characteristics: #can-be-target


* header.status ^short = "Status of the administration (e.g. completed, not-done, on-hold, in-progress, unknown)"
  * ^binding.description = "HL7 MedicationAdimnistrationStatusCodes"
  * ^binding.strength = #preferred
* header.statusReason[x] ^short = "Reason administration was not performed"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* medication 1..1 EHDSMedication "Administered medication"
* occurrence[x] 1..1 dateTime or Period "Specific date/time or interval of time during which the administration took place (or did not take place)"
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation "Condition or observation that supports why the medication was administered"
* note 0..1 string "Textual information about the administration"
* dosage 0..1 EHDSDosage "Details of how medication was taken"

