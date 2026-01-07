Logical: EHDSAlert
Parent: EHDSDataSet
Title: "Alert model"
// add medical or non-medical alert
Description: """A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes.
Example 1: intolerance to aspirin due to gastrointestinal bleeding.
Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)
Example 3: the patient has a rare disease that requires special treatment
Example 4: Airway Alert / Difficult Intubation
Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.
Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact."""
Characteristics: #can-be-target

* header.authorship.author[x] ^short = "The author of the alert statement, i.e. the setter of the alert."
* header.status ^short = """Current status of the alert, indicates whether this alert is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error."""
  * ^binding.description = "hl7:Flag-status"
  * ^binding.strength = #preferred
* code 0..1 CodeableConcept "A coded representation of the alert."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "Narrative representation of the alert." 
* priority 0..1 CodeableConcept "A code that identifies the priority of the alert."
  * ^binding.description = "hl7:Flag-priority-code"
  * ^binding.strength = #preferred
* period 0..1 Period "Time period when alert is active. The period of time from the activation of the alert to inactivation of the alert. If the alert is active, the end of the period should be unspecified."
* sourceReference 0..* Reference(Resource) "A reference to the resource the alert is about."
