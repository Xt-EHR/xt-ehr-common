Logical: EHDSMedicationStatement
//Id: EHDSmedicationStatement
Title: "Medication statement model"
Description: """EHDS refined base model for Medication statement"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Identifiers associated with this Medication Statement"""
* medication 1..1 Reference(EHDSMedication) "Medication" """Medication that has been taken, altered, newly prescribed or discontinued."""
* patient 1..1 Reference (EHDSPatient) "Patient" """Who is/was taking the medication."""
* encounter 0..1 EHDSEncounter "Encounter" """Encounter associated with MedicationStatement."""
* periodOfTreatment 0..1 Period "Period of treatment" """The date/time or interval when the medication is/was/will be taken."""
* medicationReason 0..* Reference (EHDSCondition or EHDSObservation) "Medication reason" """The reason why the medication is or was prescribed or used. It provides a link to the Past or current health condition(s) or problem(s) that the patient has had or has and for which this medication was prescribed."""
* reasonForChange 0..1 CodeableConcept "Reason for change" """Reason for change of medication"""
* dosage 0..* EHDSDosage "Dosage" """Details of how medication is/was taken or should be taken."""
* note 0..* string "Note" """Further information about the usage"""
* daysSupplied 0..1 Quantity "Days supplied" """Number of days for which the patient was provided with the drug. Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"""