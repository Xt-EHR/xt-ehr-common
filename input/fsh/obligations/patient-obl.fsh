Profile: EHDSPatientObligations
Parent: EHDSPatient
Title: "Patient obligations"
Description: "Obligations for the logical model for patient."

* identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* name
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* dateOfBirth
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* administrativeGender
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* name.use
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* name.text
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* name.family
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* name.given
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
