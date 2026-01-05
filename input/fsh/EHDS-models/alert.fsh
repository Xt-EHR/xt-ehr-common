Logical: EHDSAlert
Parent: EHDSDataSet
Title: "Alert model"
Description: "Alert flag"
Characteristics: #can-be-target

* header.authorship.author[x] ^short = "The author of the alert statement, i.e. the setter of the alert."
* header.status ^short = """Current status of the flag, Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error."""
  * ^binding.description = "hl7:Flag-status"
  * ^binding.strength = #preferred
* text 0..1 string "Narrative representation of the alert" """A human-readable narrative that contains a summary of the flag and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it \"clinically safe\" for a human to just read the narrative.
Example 1: intolerance to aspirin due to gastrointestinal bleeding.
Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)
Example 3: the patient has a rare disease that requires special treatment
Example 4: Airway Alert / Difficult Intubation
Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.
Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact."""
* priority 0..* CodeableConcept "A code that identifies the priority of the alert."
  * ^binding.description = "hl7:Flag-priority-code"
  * ^binding.strength = #preferred
* code 1..1 CodeableConcept "A coded or textual representation of the flag."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* period 0..1 Period "Time period when flag is active. The period of time from the activation of the flag to inactivation of the flag. If the flag is active, the end of the period should be unspecified."
* supportingInfo 0..* Reference "Additional information about the alert, e.g. the reason the alert was set."
