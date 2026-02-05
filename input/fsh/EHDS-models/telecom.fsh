Logical: EHDSTelecom
//Id: EHDStelecom
Title: "Telecom model"
Description: """EHDS refined base model for communication contact information structure"""

* use 0..1 CodeableConcept "Purpose of the address (eg. home, work)"
* type 0..1 CodeableConcept "Type of communication form (eg. phone, fax, email)."
* value 1..1 string "The actual contact point details (i.e. phone number or email address)."
