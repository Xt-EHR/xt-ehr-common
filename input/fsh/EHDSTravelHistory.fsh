Logical: EHDSTravelHistory
Parent: EHDSDataSet
Title: "Travel history model"
Description: "Relevant information about the patient's recent travel history, for one visit"
Characteristics: #can-be-target
* country 1..1 CodeableConcept "Country visited"
  * ^binding.description = "ISO 3166"
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline"
* period 0..1 Period "Date of entry and departure" "The period during which the patient visited the country"
  * ^requirements = "eHN PS Guideline"
