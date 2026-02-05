Logical: EHDSMedicationUse
Parent: EHDSDataSet
Title: "Medication use model"
Description: """Statement about a single medication as part of a medication summary."""
Characteristics: #can-be-target

* header
  * status
    * ^short = "Status of the medication use statement (e.g. recorded)"
    * ^definition = "Status of the medication use statement (e.g. recorded)"
    * ^binding.description = "HL7 MedicationStatement Status Codes"
    * ^binding.strength = #preferred
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * author[x] 
    * ^short = "The author of the allergy/intolerance information."
    * ^definition = "The author of the allergy/intolerance information."
* treatmentStatus 0..1 CodeableConcept "The current status of taking the medicine (e.g. taking, on-hold, stopped)"
  * ^requirements = "MyHealth@EU"
* medication 1..1 EHDSMedication "Describes the medicinal product."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* reason[x] 0..* CodeableConcept or string "Reason for the use of the medication (typically diagnosis, or a procedure)"
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* dosageInstructions 1..1 EHDSDosage "Details of how medication is/was taken or should be taken"
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* periodOfUse 0..1 Period "Period when the patient took, is taking or is expected to take the medication"
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* derivedFrom[x] 0..* EHDSMedicationPrescription or EHDSMedicationDispense or EHDSMedicationAdministration "Prescriptions, dispenses or administrations that are the basis of this medication use statement."
* note 0..1 string "Additional information about the medication use statement"


