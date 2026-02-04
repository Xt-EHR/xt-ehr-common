Logical: EHDSPregnancyHistory
Parent: EHDSDataSet
Title: "Pregnancy history model"
Description: "Pregnancy history for one pregnancy"
Characteristics: #can-be-target

* header.status 
  * ^short = "Status of this observation"
  * ^definition = "Status of this observation"
* header.author[x] 
  * ^short = "Author of this observation"
  * ^definition = "Author of this observation"
* endDate 0..1 dateTime "The end date of the pregnancy."
  * ^requirements = "eHN PS Guideline, ISO IPS"
* outcome 0..1 CodeableConcept "The outcome of the pregnancy."
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * ^binding.description = """SNOMED CT"""
  * ^binding.strength = #preferred
* numberOfFetuses 0..1 integer "Number of children/fetuses in this specific pregnancy"
  * ^requirements = "eHN PS Guideline, ISO IPS"
* note 0..1 string "Free text notes by the health professional"
  * ^requirements = "eHN PS Guideline, ISO IPS"