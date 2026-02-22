Profile: EHDSMedicationUseObligations
Parent: EHDSMedicationUse
Title: "MedicationUse obligations"
Description: "Obligations for the logical model for medication use."

* header.subject
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* header.status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

//* treatmentStatus
//  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* medication
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* periodOfUse
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageInstructions
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* note
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* reason[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer


//* identifyingCode[x] // medication identifier or code
//  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
//  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
//  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
//  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
