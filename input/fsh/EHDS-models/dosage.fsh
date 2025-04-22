Logical: EHDSDosage
//Id: EHDSdosage
Title: "Dosage model"
Description: """C.40 - EHDS refined base model for Dosage"""
Characteristics: #can-be-target

* dosageDescription 0..1 string "C.40.1 - Dosage description" """Free text dosage instructions."""
* site 0..1 CodeableConcept "C.40.2 - Site" """Body site administered to."""
* route 0..1 CodeableConcept "C.40.3 - Route" """Path of substance into body."""
* method 0..1 CodeableConcept "C.40.4 - Method" """How drug was administered."""
* dose 0..1 Quantity "C.40.5 - Dose" """Amount of medication per dose."""
* rate[x] 0..1 Ratio or Quantity "C.40.6 - Rate" """Dose quantity per unit of time."""
