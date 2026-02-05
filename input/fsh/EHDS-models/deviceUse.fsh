Logical: EHDSDeviceUse
Parent: EHDSDataSet
Title: "Device use model"
Description: """EHDS refined base model for device use information"""
// * subject 1..1 EHDSPatient "The patient using the device."
* header.status 
  * ^short = "Current status of the device usage (e.g. active, completed, etc)."
  * ^definition = "Current status of the device usage (e.g. active, completed, etc)."
  * ^binding.description = "HL7 Device Use Statement Status or HL7 Device Usage Status"
  * ^binding.strength = #preferred
* header.author[x] 
  * ^short = "The author of the device usage statement."
  * ^definition = "The author of the device usage statement."

// consider changing to periodOfUse below?
* periodOfUse 0..1 Period "The period of time during which the device was implanted in the patient or the external device was in use."
  * ^requirements = "eHN PS Guideline, ISO IPS."
// * startDate 0..1 dateTime "Date when the device was implanted in the patient or the external device was first in use."
//   * ^requirements = "eHN PS Guideline, ISO IPS."
// * endDate 0..1 dateTime "Date when the device was explanted from the patient or the external device was no longer in use."
//   * ^requirements = "eHN PS Guideline, ISO IPS."
* device[x] 1..1 CodeableConcept or EHDSDevice "The details of the device used."
  * ^requirements = "eHN PS Guideline, ISO IPS."
* bodySite 0..1 EHDSBodyStructure "Anatomical location of the device. May include laterality."
  * ^requirements = "eHN PS Guideline, ISO IPS."
// * recorded 0..1 dateTime "Date and time at which the statement was made/recorded."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or EHDSProcedure "Reason or justification for the use of the device."
  * ^requirements = "eHN PS Guideline, ISO IPS."

// * source[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Who reported the device was being used by the patient."
* note 0..1 string "Note about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement."


