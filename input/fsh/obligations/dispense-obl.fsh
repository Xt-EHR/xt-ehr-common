Logical: EHDSMedicationDispenseObligations
Parent: EHDSMedicationDispense
Title: "Medication dispense model obligations"
Description: "Obligations for the logical model for medication dispense for dispensing/pharmacy systems (producer) and prescribing systems or prescription repositories(consumer)."

// * header.identifier // dispense identifier
//   * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
//   * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* header.subject // patient for which the medication(s) is/are dispensed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
  

* header.author[x] //EHDSHealthProfessional	 // hp dispenser
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "Systems shall support at least EHDSHealthProfessional data type for the element."
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* header.date // dispense datetime
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* header.status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* relatedRequest
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* medication
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* dispensedQuantity
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

* dosageInstructions
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
