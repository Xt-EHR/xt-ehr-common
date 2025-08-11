Logical: EHDSDosage
//Id: EHDSdosage
Title: "Dosage model"
Description: """EHDS refined base model for Dosage"""
Characteristics: #can-be-target

* dosageDescription 0..1 string "Dosage description" """Free text dosage instructions."""
* site 0..1 CodeableConcept "Site" """Body site administered to."""
* route 0..1 CodeableConcept "Route" """Path of substance into body."""
* method 0..1 CodeableConcept "Method" """How drug was administered."""
* dose 0..1 Quantity "Dose" """Amount of medication per dose."""
* rate[x] 0..1 Ratio or Quantity "Rate" """Dose quantity per unit of time."""
