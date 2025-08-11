Logical: EHDSMedicationStatement
Parent: EHDSDataSet
Title: "Medication statement model"
Description: """Statement about a single medication as part of a medication summary."""
Characteristics: #can-be-target


* medicationTreatmentStatus 0..1 CodeableConcept "The current status of the taking of medicine"
  * ^requirements = "MyHealth@EU"
* medication 1..1 EHDSMedication "Describes the medicinal product."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* medicationReason 0..* CodeableConcept "Coded reason for the use of the medication (typically diagnosis, or a procedure)"
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* medicationReasonText 0..1 string "Reason for the use of the medication (typically diagnosis, or a procedure) in free text."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"  
* intendedUseType 0..1 CodeableConcept "The type of intended use of the medication, e.g. prophylactic, therapeutic, diagnostic, anesthesia, etc."
  * ^requirements = "eHN PS Guideline, MyHealth@EU"
* dosageInstructions 1..* EHDSDosaging "Details of how medication is/was taken or should be taken" "Details of how medication is/was taken or should be taken. This includes the number of units per intake and frequency of intake over a specified duration of time. Example: 1 tablet every 24h, for 10 days ."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
//  * ^comment = "We deviate the definition from the eHN guideline to make the definition broad enough to support the complexity we expect"
* periodOfUse 0..1 Period "Period when patient took, is taking or is expected to take the medication" "Period when patient took, is taking or is expected to take the medication. This information may be expressed using start and end date times OR indicating the duration. The first is used to indicate a specified interval (e.g., from March 15th, 2017); the latter for indicating a 'floating' period (e.g., 2 weeks). In case of unbounded period (continuous therapy), the end element will be valued with an exceptional value."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
// * daysSupplied 0..1 Quantity "Days supplied" """Number of days for which the patient was provided with the drug. Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"""


