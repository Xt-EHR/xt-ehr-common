Logical: EHDSAllergyIntolerance
Parent: EHDSDataSet
Title: "Allergy intolerance model"
Description: """EHDS refined base model for allergy/intolerance"""


* header
  * status ^short = "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc."
    * ^definition = "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc."
    * ^binding.description = "HL7 allergy intolerance status"
    * ^binding.strength = #preferred
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * author[x] 
    * ^short = "The author of the allergy/intolerance information."
    * ^definition = "The author of the allergy/intolerance information."

* agentOrAllergen 1..1 CodeableConcept "Code that identifies the allergy or intolerance" """Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g., "Latex allergy"), or a negated/excluded code for a specific substance or class (e.g., "No latex allergy")
  It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. """
  * ^binding.description = "ATC, EMA SPOR SMS, SNOMED CT"
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

* note 0..1 string "Additional information about the allergy or intolerance"
  * ^requirements = "eHN PS Guideline, ISO IPS"

* criticality 0..1 CodeableConcept "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance."
  * ^binding.description = "HL7 allergy intolerance criticality"
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

* certainty 0..1 CodeableConcept "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition"
  * ^binding.description = "HL7 allergy intolerance verification"
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


* reaction 0..* Base "Adverse reaction events linked to exposure to substance."
//TO_DO: Was beter: "Description of the clinical manifestation of the allergic reaction including date of manifestation and severity. Example: anaphylactic shock, angioedema (the clinical manifestation also gives information about the severity of the observed reaction)."
  * ^requirements = "ISO IPS (explicit), implicitly in eHN PS Guideline, MH@EU"

  * agentOrAllergen 0..1 CodeableConcept "Specific substance or pharmaceutical product considered to be responsible for event" """Identification of the specific substance (or pharmaceutical product) considered to be responsible for the 
  Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified  as the cause of the risk, but it must be consistent with it.  
  It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. """
// Old: "A specific allergen or other agent/substance (drug, food, chemical agent, etc.) which triggered the reaction."

  * manifestation 0..* CodeableConcept "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema. (the clinical manifestation also gives information about the severity of the observed reaction)."
    * ^binding.description = "ICD-10, SNOMED CT"
    * ^binding.strength = #preferred
    * ^requirements = "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL. Cardinality in MyHealth@EU for this element, used here, is one manifestation per severity and onset, while the cardinality in FHIR IPS IG allows multiple manifestations per severity and onset."

  // * date 0..1 dateTime "Date and time of allergy manifestation"
  * severity 0..1 CodeableConcept "Severity of the clinical manifestation of the allergic reaction."
    * ^binding.description = "SNOMED CT, HL7 reaction event severity"
    * ^binding.strength = #preferred
    * ^requirements = "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL."

  * onset 0..1 dateTime "Date and time of the onset of the reaction"
    * ^requirements = "The element is present in eHN PS GL. Element name and description is taken from eHN PS GL."

