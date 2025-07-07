Logical: EHDSEncounter
//Id: EHDSencounter
Title: "Encounter model"
Description: """C.30 - EHDS refined base model for Encounter"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.30.1 - Identifier" """Encounter identifier (Business identifiers assigned to this encounter)."""
* priority 0..1 CodeableConcept "C.30.3 - Priority" """Indicates the urgency of the encounter."""
  * ^binding.description = "hl7:v3-xEncounterAdmissionUrgency"
  * ^binding.strength = #preferred
* encounterType 1..1 CodeableConcept "C.30.2 - Encounter type" """The type of the encounter whether inpatient or short stay encounter."""
  * ^binding.description = "hl7v3:ActEncounterCode"
  * ^binding.strength = #preferred
* encounterNote 0..1 string "C.30.4 - Encounter note" """A narrative description of the encounter course."""
* patient 0..1 Reference (EHDSPatient) "C.30.5 - Patient" """The patient related to this encounter."""
* episodeOfCare 0..* Reference (EHDSEpisodeOfCare) "C.30.6 - Episode of care" """Episode(s) of care that this encounter should be recorded against"""
* basedOn 0..* Reference (EHDSCarePlan or EHDSServiceRequest) "C.30.7 - Based on" """The request that initiated this encounter"""
* partOf 0..1 Reference (EHDSEncounter) "C.30.8 - Part of" """Another Encounter this encounter is part of"""
* serviceProvider 0..1 Reference (EHDSOrganisation) "C.30.9 - Service provider" """The organisation (facility) responsible for this encounter"""
* appointment 0..* Reference (EHDSAppointment) "C.30.10 - Appointment" """The appointment that scheduled this encounter"""
* actualPeriod 0..1 Period "C.30.11 - Actual period" """The actual start and end time of the encounter"""
* plannedStartDate 0..1 dateTime "C.30.12 - Planned start date" """The planned start date/time (or admission date) of the encounter"""
* plannedEndDate 0..1 dateTime "C.30.13 - Planned end date" """The planned end date/time (or discharge date) of the encounter"""
* admission 0..1 Base "C.30.14 - Admission" """Details about the admission to a healthcare service"""
  * admitter 0..1 Reference (EHDSHealthProfessional) "C.30.14.1 - Admitter" """Admitting Healthcare Professional"""
  * admitSource 0..1 CodeableConcept "C.30.14.2 - Admit Source" """From where the patient was admitted (e.g. physician referral, transfer)."""
    * ^binding.description = "hl7:admit-source"
    * ^binding.strength = #preferred
  * referringProfessional 0..1 Reference (EHDSHealthProfessional) "C.30.14.3 - Referring professional" """Referring Healthcare Professional"""
  * admissionReason 0..* Reference (EHDSCondition or EHDSProcedure or EHDSObservation) "C.30.14.4 - Admission reason" """Reason or reasons for admission, e.g. Problem, procedure or finding."""
  * admissionReasonComment 0..1 string "C.30.14.5 - Admission reason comment" """Explanation of the reason for the encounter."""
  * admissionLegalStatus 0..1 CodeableConcept "C.30.14.6 - Admission legal status" """Legal status/situation at admission. The legal status indicates the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
* discharge 0..1 Base "C.30.15 - Discharge" """Discharge details"""
  * destinationType 0..1 CodeableConcept "C.30.15.1 - Destination type" """Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.  """
    * ^binding.description = "hl7.discharge-disposition"
    * ^binding.strength = #preferred
  * destinationLocation 0..1 Reference (EHDSOrganisation or EHDSLocation) "C.30.15.2 - Destination location" """The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact."""
* location 0..* Base "C.30.16 - Location" """List of locations where the patient has been."""
  * period 0..1 Period "C.30.16.1 - Period" """Time period during which the patient was present at the location"""
  * organisationPart 1..1 EHDSLocation "C.30.16.2 - organisation part" """organisation or organisation part (department) where the patient was present."""
