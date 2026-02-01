Logical: EHDSSubstanceUse
Parent: EHDSDataSet
Title: "Substance use model"
Description: """Statement about using a substance (such as tobacco, alcohol, drugs, etc)."""
Characteristics: #can-be-target

* header.status ^short = "Status of the patient’s alcohol use."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* observationPeriod 0..1 Period "Time period for which this observation about substance use is applicable"
* frequencyAndQuantity 0..1 Base "The extent of the patient’s alcohol use in units of alcohol per time period."
  * quantity 1..1 Quantity "Quantity (volume per time unit)."
  * periodOfUse 0..1 Period "Time period of substance use."
* substanceType 0..1 CodeableConcept "Type of substance"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* routeOfAdministration 0..* CodeableConcept "Route(s) of administration"
  * ^binding.description = "EDQM"
  * ^binding.strength = #preferred
* note 0..1 string "Textual comment."