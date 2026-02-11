Profile: EHDSMedicationObligations
Parent: EHDSMedication
Title: "Medication  model obligations"
Description: "Obligations for the logical model for medication."

* identifyingCode[x] // medication identifier or code
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
/*
* classification
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* productName
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* marketingAuthorisationHolder 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* doseForm
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* packSize
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* item // 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* item.doseForm 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
* item.ingredient 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer
*/