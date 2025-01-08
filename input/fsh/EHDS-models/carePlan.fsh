Logical: EHDSCarePlan
//Id: EHDScarePlan
Title: "Care plan model"
Description: """C.19 - EHDS refined base model for Care plan"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.19.1 - Identifier" """Care plan  identifier"""
* status 1..1 CodeableConcept "C.19.2 - Status" """Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record."""
  * ^binding.description = "HL7 Request status"
  * ^binding.strength = #preferred
* intent 1..1 CodeableConcept "C.19.3 - Intent" """Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into the workflow chain."""
  * ^binding.description = "HL7 Care Plan Intent "
  * ^binding.strength = #preferred
* title 0..1 Narrative "C.19.4 - Title" """Human-friendly name for the care plan"""
* description 0..1 Narrative "C.19.5 - Description" """A description of the scope and nature of the plan."""
* patient 1..1 Reference(EHDSPatient) "C.19.6 - Subject" """Identifies the patient or group whose intended care is described by the plan."""
* period 0..1 Period "C.19.7 - Period" """Indicates when the plan did (or is intended to) come into effect and end."""
* custodian 0..1 Reference(EHDSPatient or EHDSHealthProfessional or  EHDSHealthProfessional or  EHDSOrganization or EHDSRelatedPerson) "C.19.8 - Custodian" """Custodian is responsible for the care plan. The care plan is attributed to the custodian. The custodian might or might not be a contributor."""
* contributor 0..* Reference(EHDSPatient or EHDSHealthProfessional or EHDSHealthProfessional or  EHDSOrganization or EHDSRelatedPerson) "C.19.9 - Contributor" """Identifies the individual(s), organization or device who provided the contents of the care plan."""
* addresses 0..* CodeableConcept "C.19.10 - Addresses" """Identifies the conditions/problems/concerns/diagnoses/etc. whose management and/or mitigation are handled by this plan."""
  * ^binding.description = "ICD-10 (ICD-11 when available), SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* goal 0..* EHDSGoal "C.19.11 - Goal" """Describes the intended objective(s) of carrying out the care plan."""
* activity 0..* Reference(EHDSAppointment or EHDSMedicationPrescription or EHDSTask or EHDSServiceRequest) "C.19.12 - Activity" """The details of the proposed activity represented in a specific resource."""
* note 0..* Narrative "C.19.13 - Note" """General notes about the care plan not covered elsewhere."""
