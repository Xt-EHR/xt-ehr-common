Logical: EHDSMedicationStatement
//Id: EHDSmedicationStatement
Title: "Medication statement model"
Description: """C.39 - EHDS refined base model for Medication statement"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.39.1 - Identifier" """Identifiers associated with this Medication Statement"""
* medication 1..1 Reference(EHDSMedication) "C.39.2 - Medication" """Medication that has been taken, altered, newly prescribed or discontinued."""
* patient 1..1 Reference (EHDSPatient) "C.39.3 - Patient" """Who is/was taking the medication."""
* encounter 0..1 EHDSEncounter "C.39.4 - Encounter" """Encounter associated with MedicationStatement."""
* periodOfTreatment 0..1 Period "C.39.5 - Period of treatment" """The date/time or interval when the medication is/was/will be taken."""
* medicationReason 0..* Reference (EHDSCondition or EHDSObservation) "C.39.6 - Medication reason" """The reason why the medication is or was prescribed or used. It provides a link to the Past or current health condition(s) or problem(s) that the patient has had or has and for which this medication was prescribed."""
* reasonForChange 0..1 CodeableConcept "C.39.7 - Reason for change" """Reason for change of medication"""
* dosage 0..* EHDSDosage "C.39.8 - Dosage" """Details of how medication is/was taken or should be taken."""
* note 0..* string "C.39.9 - Note" """Further information about the usage"""
* daysSupplied 0..1 Quantity "C.39.10 - Days supplied" """Number of days for which the patient was provided with the drug. Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"""