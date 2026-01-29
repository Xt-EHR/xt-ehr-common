Logical: EHDSCarePlan
Parent: EHDSDataSet
Title: "Care plan model"
Description: "Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains."
Characteristics: #can-be-target

* header.identifier 
  * ^short = "Identifier for the care plan"
* header.subject 
  * ^short = "The patient whose intended care is described in the plan."
* header.authorship.author[x]
  * ^short = "The responsible party (custodian) for the care plan."
* header.status 
  * ^short = "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record."
  * ^binding.description = "HL7 Request status"
  * ^binding.strength = #preferred
* title 0..1 string "Human-friendly name for the care plan"
* description 0..1 string "A description of the scope and nature of the plan."
* period 0..1 Period "Indicates when the plan did (or is intended to) come into effect and end."
* addresses[x] 0..* CodeableConcept or EHDSCondition "Conditions/problems/concerns/diagnoses/etc whose management and/or mitigation are handled by this plan."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* activity[x] 0..* CodeableConcept or Reference "The details of the proposed activity represented in a specific resource."
* goal 0..* CodeableConcept "Describes the intended objective(s) of carrying out the care plan."

/*
* note 0..* string "Note" """General notes about the care plan not covered elsewhere."""
* intent 1..1 CodeableConcept "Intent" """Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into the workflow chain."""
  * ^binding.description = "HL7 Care Plan Intent "
  * ^binding.strength = #preferred
* custodian 0..1 Reference(EHDSPatient or EHDSHealthProfessional or  EHDSHealthProfessional or  EHDSOrganisation or EHDSRelatedPerson) "Custodian" """Custodian is responsible for the care plan. The care plan is attributed to the custodian. The custodian might or might not be a contributor."""
* contributor 0..* Reference(EHDSPatient or EHDSHealthProfessional or EHDSHealthProfessional or  EHDSOrganisation or EHDSRelatedPerson) "Contributor" """Identifies the individual(s), organisation or device who provided the contents of the care plan."""
* activity 0..* Reference(EHDSAppointment or EHDSMedicationPrescription or EHDSTask or EHDSServiceRequest) "Activity" """"""
* goal 0..* EHDSGoal "Goal" """Describes the intended objective(s) of carrying out the care plan."""
*/