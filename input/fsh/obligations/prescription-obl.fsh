// EHDS<System><Model>Obligations
Logical: EHDSMedicationPrescriptionObligations
Parent: EHDSMedicationPrescription
Title: "Medication prescription model obligations"
Description: "Obligations for the logical model for medication prescription body for prescribing systems (producer) and dispensing systems (consumer)."


* header.identifier // prescription identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """For a single-item prescription these identifiers shall match prescriptionItem.identifier."""
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall use this prescription identifier for reference in the dispense record."""

* header.subject // patient for which the medication(s) is/are prescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall process the patient information for identification purposes."""

* header.author[x] // prescriber
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "Systems shall support at least EHDSHealthProfessional data type for the element."
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* header.date // issue datetime
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* header.status // 	prescription status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall process the prescription status together with other information to determine dispensability."""

* presentedForm // 	rendered form of the (sufficientLY?) complete prescription
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A system making prescriptions available should be able to provide a rendered, human-readable version of the prescription,"""
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem // prescription item
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.identifier // prescription item identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """For a single-item prescription these identifiers shall match .identifier."""
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall use this prescription identifier for reference in the dispense record."""

* prescriptionItem.medication // 	medication prescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.status // 	status of prescription line
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall process the prescription status together with other information to determine dispensability."""

* prescriptionItem.dosageInstructions 
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.quantityPrescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.substitution 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.substitution.allowed[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A prescribing system shall, when supporting substitution, be able to indicate whether substitution is allowed or not for a prescription item at least using a boolean value."""
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall, when supporting substitution, shall process, at least as a boolean value, the substitution indication for a prescription item."""

// * prescriptionItem.substitution.allowedBoolean
//   * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
//   * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A prescribing system shall, if supporting substitution, be able to indicate whether substitution is allowed or not for a prescription item."""
//   * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
//   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
//   * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A dispensing system shall, if supporting substitution, shall process the substitution indication for a prescription item."""

* prescriptionItem.validityPeriod
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem.note
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer


