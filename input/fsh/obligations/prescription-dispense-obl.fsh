Profile: EHDSMedicationPrescriptionObligations
Parent: EHDSMedicationPrescription
Title: "Medication prescription model obligations"
Description: "Obligations for the logical model for medication prescription body."

// ok to refer to sub-models, or separate by model?
* header.identifier // prescription identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  // multiple actors per file, or one file per actor?
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* header.subject // patient for which the medication(s) is/are prescribed
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* header.authorship.author // prescriber
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* header.authorship.datetime // issue datetime
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* header.status // 	prescription status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:process
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system
* header.validUntil // 	validity period end date
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-prescribing-system
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:display
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-dispensing-system