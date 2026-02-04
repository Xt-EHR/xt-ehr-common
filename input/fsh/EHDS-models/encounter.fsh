Logical: EHDSEncounter
Parent: EHDSDataSet
Title: "Encounter model"
Description: """EHDS refined base model for Encounter"""
Characteristics: #can-be-target

* header
  * status 
    * ^short = "Status of the encounter (e.g. discharged, discontinued, completed)"
    * ^definition = "Status of the encounter (e.g. discharged, discontinued, completed)"
* priority 0..1 CodeableConcept "Indicates the urgency of the encounter (e.g. urgent, routine)."
* type 1..1 CodeableConcept "The type of the encounter (inpatient, ambulatory, teleconsultation)."
* period 0..1 Period "The actual start and end time of the encounter."
* serviceProvider 0..1 EHDSOrganisation "The organisation (facility) responsible for this encounter"
* referringProfessional 0..1 EHDSHealthProfessional "Referring healthcare professional"
* basedOn[x] 0..* EHDSCarePlan or EHDSServiceRequest "Reference to the request that initiated this encounter"
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSProcedure or EHDSObservation or string "Reason(s) for admission, e.g. problem, procedure or finding."
* admission 0..1 Base "Details about the admission to a healthcare service"
  * admitter 0..1 EHDSHealthProfessional "Admitting healthcare professional"
  * admitSource 0..1 CodeableConcept "From where the patient was admitted (e.g. physician referral, transfer)."
    * ^binding.description = "HL7 Admit Source"
    * ^binding.strength = #preferred
* dischargeDiagnosis 0..* CodeableConcept or EHDSCondition ""
* dischargeDestination 0..1 Base "Location or organisation to which the patient is going after discharge."
  * type 0..1 CodeableConcept "Type of location (e.g. home, hospital, nursing home, etc.)"
  * location[x] 0..1 EHDSOrganisation or EHDSLocation "The location or organisation (including contact details)"
* serviceLocation 0..* Base "List of locations where the patient has been during this encounter."
  * period 0..1 Period "Time period during which the patient was present at the location"
  * organisationPart[x] 1..1 EHDSOrganisation or EHDSLocation "Organisation or part of it (e.g. department) where the patient was during the encounter."
* subEncounter 0..* EHDSEncounter "Reference to encounters that are considered parts of this encounter."
* note 0..1 string "Free text notes by the health professional"