Logical: EHDSEncounter
Parent: EHDSDataSet
Title: "Encounter model"
Description: """EHDS refined base model for Encounter"""
Characteristics: #can-be-target

* priority 0..1 CodeableConcept "Priority" """Indicates the urgency of the encounter."""
  * ^binding.description = "hl7:v3-xEncounterAdmissionUrgency"
  * ^binding.strength = #preferred
* type 1..1 CodeableConcept "Encounter type" """The type of the encounter whether inpatient or short stay encounter."""
  * ^binding.description = "hl7v3:ActEncounterCode"
  * ^binding.strength = #preferred
* note 0..1 string "A narrative description of the encounter course."
* episodeOfCare 0..* EHDSEpisodeOfCare "Reference to the episode(s) of care that this encounter should be recorded against"
* basedOn[x] 0..* EHDSCarePlan or EHDSServiceRequest "Reference to the request that initiated this encounter"
* partOf 0..1 EHDSEncounter "Reference to another encounter this encounter is part of"
* serviceProvider 0..1 EHDSOrganisation "The organisation (facility) responsible for this encounter"
* actualPeriod 0..1 Period "The actual start and end time of the encounter"
* plannedStartDate 0..1 dateTime "The planned start date/time (or admission date) of the encounter"
* plannedEndDate 0..1 dateTime "The planned end date/time (or discharge date) of the encounter"
* admission 0..1 Base "Details about the admission to a healthcare service"
  * admitter 0..1 EHDSHealthProfessional "Admitting healthcare professional"
  * admitSource 0..1 CodeableConcept "From where the patient was admitted (e.g. physician referral, transfer)."
    * ^binding.description = "hl7:admit-source"
    * ^binding.strength = #preferred
  * referringProfessional 0..1 EHDSHealthProfessional "Referring Healthcare Professional"
  * reason[x] 0..* CodeableConcept or EHDSCondition or EHDSProcedure or EHDSObservation "Reason(s) for admission, e.g. problem, procedure or finding."
  * reasonComment 0..1 string "Explanation of the reason for the encounter."
  * legalStatus 0..1 CodeableConcept "Legal status/situation at admission (indicates the basis on which the patient is staying in a healthcare organisation)." "Legal status can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
* discharge 0..1 Base "Discharge details"
  * destinationType 0..1 CodeableConcept "Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc."""
    * ^binding.description = "hl7.discharge-disposition"
    * ^binding.strength = #preferred
  * destinationLocation[x] 0..1 EHDSOrganisation or EHDSLocation "The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact."
* location 0..* Base "List of locations where the patient has been."
  * period 0..1 Period "Time period during which the patient was present at the location"
  * organisationPart[x] 1..1 EHDSOrganisation or EHDSLocation "Organisation or organisation part (department) where the patient was present."
