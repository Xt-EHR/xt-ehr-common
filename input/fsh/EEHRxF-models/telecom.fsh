Logical: EEHRxFTelecom
//Id: EEHRxFtelecom
Title: "Telecom"
Description: """C.5 - EEHRxF refined base model for Telecommunication contact information structure"""
Characteristics: #can-be-target

* use 0..1 CodeableConcept "C.5.1 - Use" """Purpose of the address"""
  * ^comment = "HL7 ContactPointUse"
* type 0..1 CodeableConcept "C.5.2 - Type" """Telecommunications form for contact point - what communications system is required to make use of the contact."""
  * ^comment = "HL7 ContactPointSystem"
* value 1..1 string "C.5.3 - Value" """The actual contact point details, in a form that is meaningful to the designated communication type (i.e. phone number or email address)."""
