// EHDS<System><Model>Obligations
Profile: EHDSMedicationPrescriptionObligations
Parent: EHDSMedicationPrescription
Title: "Medication prescription model obligations"
Description: "Obligations for the logical model for medication prescription body for prescribing systems (producer) and dispensing systems (consumer)."


* header.identifier // prescription identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """For a single-item prescription these identifiers SHALL match prescriptionItem.identifier."""
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL use this prescription identifier for reference in the dispense record."""

* header.subject // patient for which the medication(s) is/are prescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL process the patient information for identification purposes."""

* header.author[x] // prescriber
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "System SHALL support at least EHDSHealthProfessional data type for the element."
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
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL process the prescription status together with other information to determine dispensability."""

* presentedForm // 	rendered form of the (sufficientLY?) complete prescription
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHOULD be able to provide a rendered, human-readable version of the prescription."""
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* prescriptionItem // prescription item
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

  * identifier // prescription item identifier
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][=].extension[documentation].valueMarkdown = """For a single-item prescription these identifiers SHALL match .identifier."""
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
    * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL use this prescription identifier for reference in the dispense record."""

  * medication // 	medication prescribed
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

  * status // 	status of prescription line
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
    * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL process the prescription status together with other information to determine dispensability."""

  * dosageInstructions 
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

  * quantityPrescribed
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

  * substitution 
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

  * substitution.allowed[x]
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL support at least the boolean data type."""
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
    * ^extension[$obligation][=].extension[documentation].valueMarkdown = """System SHALL support at least the boolean data type."""

// see https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/sdf-1.3A.20Element.20paths.20must.20be.20unique.20unless.20the.20structure.20is
// slicing not possible in derived/specialised logical models
    // * allowedBoolean
    //   * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    //   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    //   * ^extension[$obligation][=].extension[documentation].valueMarkdown = """A prescribing system SHALL, if supporting substitution, be able to indicate whether substitution is allowed or not for a prescription item."""
    //   * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
    //   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
    //   * ^extension[$obligation][=].extension.valueMarkdown = """A dispensing system SHALL, if supporting substitution, SHALL process the substitution indication for a prescription item."""

  * validityPeriod
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

  * note
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:display
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer


