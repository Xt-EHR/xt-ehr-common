// EHDS<System><Model>Obligations
Logical: EHDSMedicationPrescriptionObligations
Parent: EHDSMedicationPrescription
Title: "Medication prescription model obligations"
Description: "Obligations for the logical model for medication prescription body for prescribing systems."


* header.identifier // prescription identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """For a single-item prescription these identifiers SHALL match prescriptionItem.identifier."""
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  // * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall use this prescription identifier for reference in the dispense record."""

* header.subject // patient for which the medication(s) is/are prescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  // * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall display the patient information for identification purposes."""

* header.author[x] // prescriber
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* header.date // issue datetime
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* header.status // 	prescription status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* presentedForm // 	rendered form of the (sufficientLY?) complete prescription
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A system making prescriptions available shall provide a rendered, human-readable version of the prescription,"""

* prescriptionItem // prescription item
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.identifier // prescription item identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """For a single-item prescription these identifiers SHALL match .identifier."""
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  // * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall use this prescription identifier for reference in the dispense record."""

* prescriptionItem.medication // 	medication prescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.status // 	status of prescription line
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.dosageInstructions 
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

// * prescriptionItem.dosageInstructions.renderedDosageInstruction	
//   * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
//   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.quantityPrescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.substitution 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.validityPeriod
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.note
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  // * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  // * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer


Logical: EHDSMedicationDispenseObligations
Parent: EHDSMedicationDispense
Title: "Medication dispense model obligations"
Description: "Obligations for the logical model for medication dispense for dispensing/pharmacy systems."

// * header.identifier // dispense identifier
//   * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
//   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* header.subject // patient for which the medication(s) is/are dispensed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* header.author[x] //EHDSHealthProfessional	 // hp dispenser
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* header.date // dispense datetime
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 

* header.status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* relatedRequest
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 

* medication
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dispensedQuantity
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageInstructions
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
