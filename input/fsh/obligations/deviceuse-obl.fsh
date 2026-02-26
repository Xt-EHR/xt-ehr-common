Profile: EHDSDeviceUseObligations
Parent: EHDSDeviceUse
Title: "Device use obligations"
Description: "Obligations for the logical model for device use."

* header.subject
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* header.status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* periodOfUse
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* device[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* bodySite
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* note
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
