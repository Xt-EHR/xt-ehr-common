Logical: EHDSAllergyIntolerance
Title: "Allergy Intolerance"
Description: """C.21 - EHDS refined base model for Allergy Intolerance"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.21.1 - Identifier" """Appointment identifier"""
* allergyDescription 0..1 Narrative "C.21.2 - Allergy description" """Textual description of the allergy or intolerance"""
* typeOfPropensity 0..1 CodeableConcept "C.21.3 - Type of propensity" """This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* allergyManifestation 0..* Base "C.21.4 - Allergy manifestation" """Description of the clinical manifestation of the allergic reaction including date of manifestation and severity. Example: anaphylactic shock, angioedema (the clinical manifestation also gives information about the severity of the observed reaction). Multiple manifestations could be provided."""
  * date 0..1 dateTime "C.21.4.1 - Date" """Date and time of allergy manifestation"""
  * severity 0..1 CodeableConcept "C.21.4.2 - Severity " """Severity of the clinical manifestation of the allergic reaction."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * description 0..1 Narrative "C.21.4.3 - Description" """Description of the event as a whole"""
  * manifestation 1..* CodeableConcept "C.21.4.4 - Manifestation" """Clinical symptoms/signs associated with the Event"""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
* criticality 0..1 CodeableConcept "C.21.5 - Criticality" """Potential risk for future life-threatening adverse reactions when exposed to a substance known to cause an adverse reaction."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* onsetDate 0..1 dateTime "C.21.6 - Onset date" """Date of onset of allergy, e.g., date of the first observation of the reaction. Partial date could be used. or life period (childhood, adolescence)."""
* onsetLifePeriod 0..1 CodeableConcept "C.21.7 - Onset life period" """Date of onset of allergy, e.g., date of the first observation of the reaction expressed usingor life period (childhood, adolescence, etc.)."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* endDate 0..1 dateTime "C.21.8 - End date" """Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)"""
* endDateLifePeriod 0..1 CodeableConcept "C.21.9 - End date life period" """Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition) exprssed using life period (childhood, … )"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* status 0..1 CodeableConcept "C.21.10 - Status" """Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, and so on …"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* certainty 0..1 CodeableConcept "C.21.11 - Certainty" """Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and/or clinical evidence of condition."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* agentOrAllergen 1..1 CodeableConcept "C.21.12 - Agent or Allergen" """A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity."""
  * ^binding.description = "SNOMED CT, ATC, (IDMP / EMA SPOR SMS)"
  * ^binding.strength = #preferred
