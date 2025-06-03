Logical: EHDSAllergyIntolerance
Title: "Allergy intolerance model"
Description: """EHDS refined base model for allergy/intolerance"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier for the allergy/intolerance record"
* subject 1..1 EHDSPatient "The patient who has the allergy or intolerance"
* status 0..1 CodeableConcept "Current status of the allergy or intolerance (e.g. active, in remission, resolved)"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* allergyDescription 0..1 string "Textual description of the allergy or intolerance"
* typeOfPropensity 0..1 CodeableConcept "Type of propensity describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* allergyManifestation 0..* Base "Description of the clinical manifestation of the allergic reaction including date of manifestation and severity. Example: anaphylactic shock, angioedema (the clinical manifestation also gives information about the severity of the observed reaction)."
  * date 0..1 dateTime "Date and time of allergy manifestation"
  * severity 0..1 CodeableConcept "Severity of the clinical manifestation of the allergic reaction."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * description 0..1 string "Description of the event as a whole"
  * manifestation 0..* CodeableConcept "Clinical symptoms/signs associated with the event"
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
* criticality 0..1 CodeableConcept "Potential risk for future life-threatening adverse reactions when exposed to a substance known to cause an adverse reaction."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* onsetDate 0..1 dateTime "Date of onset of allergy, e.g., date of the first observation of the reaction. Partial date could be used."
* onsetLifePeriod 0..1 CodeableConcept "Onset life period (childhood, adolescence, etc.)."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* endDate 0..1 dateTime "Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)"
* endDateLifePeriod 0..1 CodeableConcept "Life period of resolution of the allergy (e.g. childhood, adolescence)"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* certainty 0..1 CodeableConcept "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and/or clinical evidence of condition."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* agentOrAllergen 1..1 CodeableConcept "A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity."
  * ^binding.description = "SNOMED CT, ATC, EMA SPOR SMS"
  * ^binding.strength = #preferred
