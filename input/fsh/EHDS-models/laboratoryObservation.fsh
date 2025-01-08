Logical: EHDSLaboratoryObservation
Parent: EHDSObservation
//Id: EHDSlaboratoryObservation
Title: "Laboratory observation model"
Description: """C.11 - EHDS refined base model for Observation performed by laboratory"""
Characteristics: #can-be-target

//* generalObservation 1..1 EHDSObservation "C.11.1 - General observation" """General observation information"""
* testKit 0..1 EHDSDevice "C.11.2 - Test kit" """Laboratory test kit used during measurement."""
* calibrator 0..1 Identifier "C.11.3 - Calibrator" """Information about which end-user calibrator the laboratory has been used for the measurement to indicate the metrological traceability chain. """
* accreditationStatu 0..1 CodeableConcept "C.11.4 - Accreditation status" """Accreditation status of the laboratory for the particular observation."""
  * ^binding.description = "Code system to be specified"
  * ^binding.strength = #preferred
* previousResults 0..* EHDSLaboratoryObservation "C.11.5 - Previous results" """Previous results of the same observation"""
* observationCode //1..1 CodeableConcept "C.11.1 - Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "LOINC, NPU"
  * ^binding.strength = #preferred
