Logical: EHDSInfectiousContact
Parent: EHDSDataSet
Title: "Infectious contact model"
Description: """EHDS refined base model for an infectious contact"""
Characteristics: #can-be-target

* infectiousAgent 0..* CodeableConcept "Information about a suspected infectious agent or agents the person was exposed to."
  * ^binding.description = "ICD-10, SNOMED CT"
  * ^binding.strength = #preferred
* timePeriod[x] 0..1 dateTime or Period "A date and duration or date time interval of contact. Partial dates are allowed."
* proximity[x] 0..1 CodeableConcept or Quantity "Proximity to the source/carrier of the infectious agent during exposure. Proximity could be expressed by text, code (direct, indirect) or value specifying distance from the infectious agent carrier."
* country 0..1 CodeableConcept "Country in which the person was potentially exposed to an infectious agent."
  * ^binding.description = "ISO 3166-1 alpha-2"
  * ^binding.strength = #preferred
* note 0..1 string "A textual note with additional information about infectious contact."