Profile: EHDSDosageObligations
Parent: EHDSDosage
Title: "Dosage obligations"
Description: "Obligations for the logical model for dosage."

* renderedDosageInstruction
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageDetails.doseAndRate.dose[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "System SHALL support at least Quantity data type for the element. System SHOULD support Range data type for the element."

* dosageDetails.repeat
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageDetails.repeat.bounds[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "System SHALL support at least Quantity data type for the element."

* dosageDetails.repeat.frequency
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageDetails.repeat.frequency.numberOfTimes
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageDetails.repeat.frequency.period
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageDetails.routeOfAdministration
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dosageDetails.note
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

