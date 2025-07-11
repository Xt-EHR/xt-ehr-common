Logical: EHDSEncounter
//Id: EHDSencounter
Title: "Encounter model"
Description: """EHDS refined base model for Encounter"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Encounter identifier (Business identifiers assigned to this encounter)."""
* priority 0..1 CodeableConcept "Priority" """Indicates the urgency of the encounter."""
  * ^binding.description = "hl7:v3-xEncounterAdmissionUrgency"
  * ^binding.strength = #preferred
* encounterType 1..1 CodeableConcept "Encounter type" """The type of the encounter whether inpatient or short stay encounter."""
  * ^binding.description = "hl7v3:ActEncounterCode"
  * ^binding.strength = #preferred
* encounterNote 0..1 string "Encounter note" """A narrative description of the encounter course."""
* patient 0..1 Reference (EHDSPatient) "Patient" """The patient related to this encounter."""
* episodeOfCare 0..* Reference (EHDSEpisodeOfCare) "Episode of care" """Episode(s) of care that this encounter should be recorded against"""
* basedOn 0..* Reference (EHDSCarePlan or EHDSServiceRequest) "Based on" """The request that initiated this encounter"""
* partOf 0..1 Reference (EHDSEncounter) "Part of" """Another Encounter this encounter is part of"""
* serviceProvider 0..1 Reference (EHDSOrganisation) "Service provider" """The organisation (facility) responsible for this encounter"""
* appointment 0..* Reference (EHDSAppointment) "Appointment" """The appointment that scheduled this encounter"""
* actualPeriod 0..1 Period "Actual period" """The actual start and end time of the encounter"""
* plannedStartDate 0..1 dateTime "Planned start date" """The planned start date/time (or admission date) of the encounter"""
* plannedEndDate 0..1 dateTime "Planned end date" """The planned end date/time (or discharge date) of the encounter"""
* admission 0..1 Base "Admission" """Details about the admission to a healthcare service"""
  * admitter 0..1 Reference (EHDSHealthProfessional) "Admitter" """Admitting Healthcare Professional"""
  * admitSource 0..1 CodeableConcept "Admit Source" """From where the patient was admitted (e.g. physician referral, transfer)."""
    * ^binding.description = "hl7:admit-source"
    * ^binding.strength = #preferred
  * referringProfessional 0..1 Reference (EHDSHealthProfessional) "Referring professional" """Referring Healthcare Professional"""
  * admissionReason 0..* Reference (EHDSCondition or EHDSProcedure or EHDSObservation) "Admission reason" """Reason or reasons for admission, e.g. Problem, procedure or finding."""
  * admissionReasonComment 0..1 string "Admission reason comment" """Explanation of the reason for the encounter."""
  * admissionLegalStatus 0..1 CodeableConcept "Admission legal status" """Legal status/situation at admission. The legal status indicates the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
* discharge 0..1 Base "Discharge" """Discharge details"""
  * destinationType 0..1 CodeableConcept "Destination type" """Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.  """
    * ^binding.description = "hl7.discharge-disposition"
    * ^binding.strength = #preferred
  * destinationLocation 0..1 Reference (EHDSOrganisation or EHDSLocation) "Destination location" """The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact."""
* location 0..* Base "Location" """List of locations where the patient has been."""
  * period 0..1 Period "Period" """Time period during which the patient was present at the location"""
  * organisationPart 1..1 EHDSLocation "Organisation part" """Organisation or organisation part (department) where the patient was present."""
