Logical: EHDSPregnancyHistory
Parent: EHDSDataSet
Title: "Pregnancy history model"
Description: "Pregnancy history for one pregnancy"
Characteristics: #can-be-target

* narrative 0..1 string "Narrative, potentially formatted, content of the section" """Narrative description describing the outcome of any previous pregnancies. """
  * ^requirements = "eHN PS Guideline, ISO IPS"
* endDate 0..1 dateTime "End date" """The end date of the pregnancy."""
  * ^requirements = "eHN PS Guideline, ISO IPS"
* outcome 0..1 CodeableConcept "Outcome" """The outcome of the pregnancy."""
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * ^binding.description = """SNOMED CT"""
  * ^binding.strength = #preferred
* numberOfChildren 0..1 integer "Number of children/fetuses in this specific pregnancy"
  * ^requirements = "eHN PS Guideline, ISO IPS"