Profile: EHDSMedicationObligations
Parent: EHDSMedication
Title: "Medication prescription model obligations"
Description: "Obligations for the logical model for medication prescription body."

* identifyingCode[x] // medication identifier or code
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* classification
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* productName
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* marketingAuthorisationHolder 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* doseForm
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* packSize
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* item // 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* item.doseForm 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* item.ingredient 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
