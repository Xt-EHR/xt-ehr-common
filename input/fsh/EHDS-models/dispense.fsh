Logical: EHDSDispenseDecline
Title: "Medication dispense decline model"
Parent: EHDSDataSet
Description: "Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment)."
Characteristics: #can-be-target

* header.statusReason[x] 1..1
  * ^short = "Reason for not dispensing the medication"
* relatedRequest 1..* EHDSMedicationPrescription "The single-item prescription or prescription line item that was declined by the dispenser. [Used for searching]"
// * reason[x] 1..1 CodeableConcept or string "Reason for not performing the dispensation."
* comment 0..1 string "Additional information about why the dispensation was declined."


Logical: EHDSMedicationDispense
Title: "Medication dispense model"
Parent: EHDSDataSet
Description: "Logical model for medication dispensation (based on request or independently)"
Characteristics: #can-be-target

* header.authorship.author 
  * ^short = "The actor who issued the dispense record. Responsibility for the dispense should be traceable from this information."
* header.authorship.datetime
  * ^short = "Date and time of issuing the dispense record"
* header.status ^short = "The status of the dispense, e.g. completed, declined, entered-in-error"
  * ^binding.description = "HL7 MedicationDispense Status Codes"
  * ^binding.strength = #preferred
* dispenseLocation 0..1 EHDSLocation "Location of dispense"
* receiver[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Identification of the person who received the dispensed medication, especially when it was not the patient. When not present, it is assumed that the patient is the receiver."
* relatedRequest 0..* Identifier "Identifier of the prescription item the dispense is related to"
* medication 1..1 EHDSMedication "Exact dispensed product"
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the package size is known, or number of smaller items/units, according to the medication dispensed. A unit is expected."
  * ^binding.description = "UCUM, EDQM Standard Terms"
  * ^binding.strength = #preferred
* timeOfDispensation 0..1 dateTime "Date and time when medication is handed over. When not present, the time of dispensation is assumed to be the time of issuing dispense record."
// * substitution 0..1 Base "Indicated whether substitution was made by the dispenser"
* substitutionOccurred 0..1 boolean "Whether substitution was made by the dispenser. Definition of subsitution is specific to the jurisdiction."
//  * type 0..1 CodeableConcept "What kind of substitution was made by the dispenser"
//  * reason 0..* CodeableConcept "Reason why the substitution was made or why the expected substitution was not made."
* dosageInstructions 0..* EHDSDosaging "Dosaging and administration instructions"
* note 0..1 string "Additional information or comments"
