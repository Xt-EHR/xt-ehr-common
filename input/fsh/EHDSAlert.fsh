Logical: EHDSAlert
Parent: EHDSDataSet
Title: "Alert flag model"
Description: "Alert flag"
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Flag identifier (Business identifiers assigned to this flag)."""
* text 0..1 string "Text" """A human-readable narrative that contains a summary of the flag and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it \"clinically safe\" for a human to just read the narrative.
Example 1: intolerance to aspirin due to gastrointestinal bleeding.
Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)
Example 3: the patient has a rare disease that requires special treatment
Example 4: Airway Alert / Difficult Intubation
Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.
Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact."""
* priority 0..* CodeableConcept "Priority" """A code that identifies the priority of the alert."""
  * ^binding.description = "hl7:Flag-priority-code"
  * ^binding.strength = #preferred
* status 0..1 CodeableConcept "Status" """Current status of the flag, Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error."""
  * ^binding.description = "hl7:Flag-status"
  * ^binding.strength = #preferred
* code 1..1 CodeableConcept "Code" """A coded or textual representation of the flag."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* patient 1..1 Reference(Patient) "Subject" """Who/What this flag is a record of"""
* period 0..1 Period "Period" """Time period when flag is active. The period of time from the activation of the flag to inactivation of the flag. If the flag is active, the end of the period should be unspecified."""
* encounter 0..1 Reference(Encounter) "Encounter" """This alert is only relevant during the encounter."""
* author 0..1 Reference(EHDSHealthProfessional or EHDSOrganization or EHDSDevice) "Author" """The person, organization or device that created the flag."""


