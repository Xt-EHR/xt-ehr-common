Logical: EHDSTravelHistory
Parent: EHDSDataSet
Title: "Travel history model"
Description: "Relevant information about the patient's recent travel history"
Characteristics: #can-be-target
* country 0..1 CodeableConcept "Country visited"
  * ^binding.description = "ISO 3166"
  * ^binding.strength = #preferred
* period 0..* Period "Date of entry and departure" "The period during which the patient visited the country"