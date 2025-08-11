Logical: EHDSTelecom
//Id: EHDStelecom
Title: "Telecom model"
Description: """EHDS refined base model for Telecommunication contact information structure"""
Characteristics: #can-be-target

* use 0..1 CodeableConcept "Use" """Purpose of the address"""
  * ^binding.description = "HL7 ContactPointUse"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "Type" """Telecommunications form for contact point - what communications system is required to make use of the contact."""
  * ^binding.description = "HL7 ContactPointSystem"
  * ^binding.strength = #preferred
* value 1..1 string "Value" """The actual contact point details, in a form that is meaningful to the designated communication type (i.e. phone number or email address)."""
