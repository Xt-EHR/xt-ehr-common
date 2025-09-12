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

* header.authorship.datetime
  * ^short = "Date and time of issuing dispense record"
* dispenseLocation 0..1 EHDSLocation "Location of dispense"
* receiver[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Identification of the person who received the dispensed medication, especially when it was not the patient"
* relatedRequest 0..* Identifier "Identifier of the prescription or prescription item the dispense is related to"
* medication 1..1 EHDSMedication "Exact dispensed product"
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the pack size is known, or number of smaller items/units"
  * ^binding.description = "UCUM, EDQM Standard Terms"
  * ^binding.strength = #preferred
* timeOfDispensation 1..1 dateTime "Date and time of dispensation. When not present, the time of dispensation is assumed to be the time of authoring/issuing dispense record."
* substitution 0..1 Base "Indicated whether substitution was made by the dispenser"
  * substitutionOccurred 1..1 boolean "Indicated whether substitution was made by the dispenser"
  * type 0..1 CodeableConcept "What kind of substitution was made by the dispenser"
  * reason 0..* CodeableConcept "Reason why the substitution was made or why the expected substitution was not made."
* dosageInstructions 0..* EHDSDosaging "Dosaging and administration instructions"
* comment 0..* string "Additional information or comments"
