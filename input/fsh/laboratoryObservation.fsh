Logical: EHDSLaboratoryObservation
Parent: EHDSObservation
Title: "Laboratory observation model"
Description: """EHDS refined base model for Observation performed by laboratory"""
Characteristics: #can-be-target

// * header.subject ^type.profile[+] = Canonical(EHDSPatient)
// * header.subject ^type.profile[+] = Canonical(EHDSLocation)
* testKit 0..1 EHDSDevice "Test kit" """Laboratory test kit used during measurement."""
* calibrator 0..1 Identifier "Calibrator" """Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain. """
* accreditationStatus 0..1 CodeableConcept "Accreditation status" """Accreditation status of the laboratory for the particular observation."""
  * ^binding.description = "Code system to be specified"
  * ^binding.strength = #preferred
* previousResults 0..* EHDSLaboratoryObservation "Previous results" """Previous results of the same observation"""
* code //1..1 CodeableConcept "Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "LOINC, NPU"
  * ^binding.strength = #preferred