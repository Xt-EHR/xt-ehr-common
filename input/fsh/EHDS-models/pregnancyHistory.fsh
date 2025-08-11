Logical: EHDSPregnancyHistory
Parent: EHDSDataSet
Title: "Pregnancy history model"
Description: "Pregnancy history for one pregnancy"
Characteristics: #can-be-target

* narrative 0..1 string "Narrative, potentially formatted, content of the section" """Narrative description describing the outcome of any previous pregnancies. """
  * ^requirements = "eHN PS Guideline, ISO IPS"
* outcomeDate 0..1 dateTime "Outcome date" """Date referred to the previous pregnancies outcome."""
  * ^requirements = "eHN PS Guideline, ISO IPS"
* outcome 0..1 CodeableConcept "Outcome" """Outcome of the previous pregnancy."""
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.62 eHDSIOutcomeOfPregnancy (SNOMED CT, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.63 eHDSIRareDisease (OrphaCodes, used in MH@EU); ICD-11; SNOMED CT
"""
  * ^binding.strength = #preferred
* numberOfChildren 0..1 integer "Number of children/fetuses in this specific pregnancy"
  * ^requirements = "eHN PS Guideline, ISO IPS"