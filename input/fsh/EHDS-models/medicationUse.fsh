Logical: EHDSMedicationUse
Parent: EHDSDataSet
Title: "Medication use model"
Description: """Statement about usage of a medication: this can be a more generic statement like an entry in medication summary, or a documentation of a single administration. When documenting a single administration fact, further restrictions may apply (e.g. no repeats in dosaging information)"""
Characteristics: #can-be-target

* header.status ^short = "Status of actual administration of the medicine (administration status or adherence, according to the use case)"
// TODO: Since status is mandatory, administration status should be here, but more logically fits into the other one. The only reasonable status for statement is 'recorded' so maybe only have one status for statement too?
//* treatmentStatus 0..1 CodeableConcept "The current status of taking the medicine (adherence)."
  * ^requirements = "MyHealth@EU"
  * ^binding.description = "For medication lists: HL7 MedicationStatement Adherence Codes (status of the exchanged statement record is assumed to be 'recorded'). For single administrations: HL7 MedicationAdministration Status Codes."
  * ^binding.strength = #preferred
* medication 1..1 EHDSMedication "Describes the medicinal product. Depending on the use case, it may be a generic description of medication type, or a specific instance."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* reason[x] 0..* CodeableConcept or EHDSCondition "Coded reason for the use of the medication (typically diagnosis or symptom)"
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* reasonText 0..1 string "Reason for the use of the medication (diagnosis, observation, or a procedure) as free text."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"  
* dosageInstructions 1..* EHDSDosaging "Details of how medication is/was taken or should be taken. Example: 1 tablet every 24h, for 10 days. For factual single administration tracking, all repeats are registered as separate instances."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* timeOfUse 0..1[x] dateTime or Period "The time frame for which the medication use statement applies. In case of unbounded period (continuous therapy), the Period end element will be valued with an exceptional value."
  * ^requirements = "eHN PS Guideline, ISO IPS, MyHealth@EU"
* relatedRequest 0..* EHDSMedicationRequest "Link to prescriptions related to this use statement"
* relatedDispense 0..* EHDSMedicationDispense "Link to a dispense record related to this use statement, not applicable to explicit administration records"
* note 0..1 string "Textual information about the intended use or administration of the medication"
// TODO I think the description here does not actually compute. Also unclear how to differentiate between point in time and period.
// * daysSupplied 0..1 Quantity "Days supplied" """Number of days for which the patient was provided with the drug. Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"""
// TODO: When accepted, remove MedicationStatement and MedicationAdministration and EHDSDosage models, and replace statement and administration with MedicationUse. Search for MedicationStatement phrase to make sure it's not confusingly present in descriptions.