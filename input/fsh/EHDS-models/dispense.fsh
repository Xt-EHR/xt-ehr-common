Logical: EHDSMedicationDispense
Title: "Medication dispense model"
Parent: EHDSDataSet
Description: "Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information."
Characteristics: #can-be-target

* header.author[x] 
  * ^short = "The actor who issued the dispense record. Responsibility for the dispense should be traceable from this information."
  * ^definition = "The actor who issued the dispense record. Responsibility for the dispense should be traceable from this information."
* header.date 1..1
  * ^short = "Date and time of issuing the dispense record"
  * ^definition = "Date and time of issuing the dispense record"
* header.status 
  * ^short = "The status of the dispense, e.g. completed, declined, entered-in-error"
  * ^definition = "The status of the dispense, e.g. completed, declined, entered-in-error"
  * ^binding.description = "HL7 MedicationDispense Status Codes"
  * ^binding.strength = #preferred
* header.source 0..0
* dispenseLocation 0..1 EHDSLocation "Location of dispense"
* receiver[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Identification of the person who received the dispensed medication, especially when it was not the patient. When not present, it is assumed that the patient is the receiver."
* relatedRequest 0..* Identifier "Identifier of the prescription item the dispense is related to"
* medication 1..1 EHDSMedication "Exact dispensed product. If multiple medications are dispensed together, multiple dispense records should be created."
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the package size is known, or number of smaller items/units, according to the medication dispensed. A unit is expected."
  * ^binding.description = "UCUM, EDQM Standard Terms"
  * ^binding.strength = #preferred
* timeOfDispensation 0..1 dateTime "Date and time when medication was handed over. When not present, the time of dispensation is assumed to be the time of issuing dispense record."
* substitutionOccurred 0..1 boolean "Whether substitution was made by the dispenser. Definition of substitution is specific to the jurisdiction."
* dosageInstructions 0..1 EHDSDosaging "Dosaging and administration instructions"
* note 0..1 string "Additional information or comments"


