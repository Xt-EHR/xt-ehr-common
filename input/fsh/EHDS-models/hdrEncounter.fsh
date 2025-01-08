Logical: EHDSInpatientEncounter
//Id: EHDSinpatientEncounter
Title: "Inpatient encounter model"
Description: """C.23 - EHDS refined base model for Inpatient encounter"""
Characteristics: #can-be-target

* encounterType 1..1 CodeableConcept "C.23.1 - Encounter type" """The type of the encounter whether inpatient or short stay encounter."""
  * ^binding.description = "hl7v3:ActEncounterCode"
  * ^binding.strength = #preferred
* encounterNote 0..1 Narrative "C.23.2 - Encounter note" """A narrative description of the encounter course."""
* admission 1..1 Base "C.23.3 - Admission" """Admission details"""
  * urgency 0..1 CodeableConcept "C.23.3.1 - Urgency" """Admission type, either emergency or planned"""
    * ^binding.description = "hl7:v3-xEncounterAdmissionUrgency"
    * ^binding.strength = #preferred
  * date 1..1 dateTime "C.23.3.2 - Date" """Admission date and time."""
  * admitter 0..1 Reference(EHDSHealthProfessional) "C.23.3.3 - Admitter" """Admitting Healthcare Professional"""
  * admitSource 0..1 CodeableConcept "C.23.3.4 - Admit Source" """From where the patient was admitted (e.g. physician referral, transfer)."""
    * ^binding.description = "hl7:admit-source"
    * ^binding.strength = #preferred
  * referringProfessional 0..1 Reference(EHDSHealthProfessional) "C.23.3.5 - Referring professional" """Referring Healthcare Professional"""
  * admissionReason 0..* Reference(EHDSCondition or EHDSProcedure or EHDSObservation) "C.23.3.6 - Admission reason" """Reason or reasons for admission, e.g. Problem, procedure or finding."""
  * admissionReasonComment 0..1 Narrative "C.23.3.7 - Admission reason comment" """Explanation of the reason for the encounter."""
  * admissionLegalStatus 0..1 CodeableConcept "C.23.3.8 - Admission legal status" """Legal status/situation at admission. The legal status indicates the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
* discharge 1..1 Base "C.23.4 - Discharge" """Discharge details"""
  * date 1..1 dateTime "C.23.4.1 - Date" """Discharge date and time"""
  * destinationType 0..1 CodeableConcept "C.23.4.2 - Destination type" """Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.  """
    * ^binding.description = "hl7.discharge-disposition"
    * ^binding.strength = #preferred
  * destinationLocation 0..1 Reference(EHDSOrganization or EHDSLocation) "C.23.4.3 - Destination location" """The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact."""
* location 0..* Base "C.23.5 - Location" """All locations/departments where the patient stayed (was boarded) within the hospital."""
  * period 1..1 Period "C.23.5.1 - Period" """Time period during which the patient was present at the location"""
  * organizationPart 1..1 EHDSLocation "C.23.5.2 - Organization part" """Organization or organization part (hospital department) where the patient was present."""
