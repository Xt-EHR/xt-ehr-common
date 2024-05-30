Logical: PatientModel
Parent: Base
Characteristics: #can-be-target
Id: patient-model

* name 1..1 HumanName "The name of the patient"
* socialGender 1..1 CodeableConcept "Social or affirmed gender"
* maritalStatus 1..1 CodeableConcept "Marital status"
