Logical: EHDSAllergyIntolerance
Parent: EHDSDataSet
Title: "Allergy intolerance model"
Description: """EHDS refined base model for allergy/intolerance"""
Characteristics: #can-be-target


* agentOrAllergen 1..1 CodeableConcept "A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity."
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.24 **eHDSIActiveIngredient** (ATC, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.61 eHDSISubstance (EMA SMS, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.19 eHDSIAllergenNoDrug (SCT, used in MH@EU); ICD-11 Allergens
"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

* typeOfPropensity 0..1 CodeableConcept "This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)"
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.18 eHDSIAdverseEventType (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/allergy-intolerance-type (HL7, required in HL7 FHIR)
"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU"

* description 0..1 string "Textual description of the allergy or intolerance"
  * ^requirements = "eHN PS Guideline, ISO IPS"

* criticality 0..1 CodeableConcept "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance."
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.57 eHDSICriticality (HL7, used in MH@EU); http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (HL7, required in HL7 FHIR)
"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

* certainty 0..1 CodeableConcept "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition"
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.58 eHDSIAllergyCertainty (HL7, used in MH@EU) ; http://hl7.org/fhir/ValueSet/allergyintolerance-verification (HL7, required in HL7 FHIR)
"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

* status 0..1 CodeableConcept "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc."
  * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.59 eHDSIAllergyStatus (HL7, used in MH@EU); http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (HL7, required in HL7 FHIR)
"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

* onsetDate 0..1 dateTime "When allergy or intolerance was identified"
// this is not accurate. When allergy was identified? or when it started?
  * ^requirements = "MyHealth@EU, ISO IPS"


// * onsetLifePeriod 0..1 CodeableConcept "Onset life period (childhood, adolescence, etc.)."
// //   * ^binding.description = "SNOMED CT"
// //   * ^binding.strength = #preferred

* endDate 0..1 dateTime "Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)"
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
// * endDateLifePeriod 0..1 CodeableConcept "Life period of resolution of the allergy (e.g. childhood, adolescence)"
// //   * ^binding.description = "SNOMED CT"
// //   * ^binding.strength = #preferred


* reaction 0..* Base "Adverse Reaction Events linked to exposure to substance."
//TO_DO: Was beter: "Description of the clinical manifestation of the allergic reaction including date of manifestation and severity. Example: anaphylactic shock, angioedema (the clinical manifestation also gives information about the severity of the observed reaction)."
  * ^requirements = "ISO IPS (explicit), implicitly in eHN PS Guideline, MH@EU"
  * manifestation 0..* CodeableConcept "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema. (the clinical manifestation also gives information about the severity of the observed reaction)."
    * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.5 eHDSIIllnessandDisorder (ICD-10, alternative in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.11 eHDSIReactionAllergy (SCT, alternative in MH@EU); ICD-11 MMS
"""
    * ^binding.strength = #preferred
    * ^requirements = "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL. Cardinality in MyHealth@EU for this element, used here, is one manifestation per severity and onset, while the cardinality in FHIR IPS IG allows multiple manifestations per severity and onset."

  * date 0..1 dateTime "Date and time of allergy manifestation"
  * severity 0..1 CodeableConcept "Severity of the clinical manifestation of the allergic reaction."
    * ^binding.description = """
1.3.6.1.4.1.12559.11.10.1.3.1.42.13 eHDSISeverity (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/reaction-event-severity (HL7, Required in HL7 FHIR)
"""
    * ^binding.strength = #preferred
    * ^requirements = "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL."

  * onsetDate 0..1 dateTime "Date of the observation of the reaction"
    * ^requirements = "The element is present in eHN PS GL. Element name and description is taken from eHN PS GL."

/*
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
*/