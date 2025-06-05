Logical: EHDSInpatientEncounter
Parent: EHDSEncounter
//Id: EHDSinpatientEncounter
Title: "Inpatient encounter model"
Description: """C.23 - EHDS refined base model for Inpatient encounter"""
Characteristics: #can-be-target

* encounterType 1..1
  * ^definition =  """The type of the encounter whether inpatient or short stay encounter."""
* priority
  * ^definition = """Admission urgency, either emergency or planned"""
* actualPeriod 1..1
* admission 1..1
* discharge 1..1
* location
  * organizationPart 1..1
    * ^definition = """Organization or organization part (hospital department) where the patient was present."""
