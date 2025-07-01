Logical: EHDSPregnancyHistory
// Id: EHDSPregnancyHistory
Title: "Pregnancy history model"
Description: "Pregnancy history"
Characteristics: #can-be-target
* narrative 0..1 string "Narrative, potentially formatted, content of the section" """Narrative description describing the outcome of any previous pregnancies. """
* outcomeDate 0..1 dateTime "Outcome date" """Date referred to the previous pregnancies outcome."""
* outcome 0..1 CodeableConcept "Outcome" """Outcome of the previous pregnancy."""
* numberOfChildren 0..1 integer "Number of children/fetuses in this specific pregnancy"
