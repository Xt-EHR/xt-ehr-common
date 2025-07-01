Logical: EHDSCurrentPregnancy
Title: "Current pregnancy status model"
Description: "Current pregnancy status"
Characteristics: #can-be-target
* narrative 0..1 string "Textual description of current pregnancy status " """Narrative description describing the status of the current pregnancy."""
* currentPregnancyStatus 1..1 CodeableConcept "Current pregnancy status" """Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown."""
* dateOfStatus 0..1 dateTime "Date of status" """Effective date of the current pregnancy status."""
* expectedDateOfDelivery 0..1 date "Expected date of delivery" """Date in which the woman is due to give birth. Year, day and month are required."""
