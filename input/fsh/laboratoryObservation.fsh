Logical: EHDSLaboratoryObservation
Parent: EHDSObservation
Title: "Laboratory observation model"
Description: """C.11 - EHDS refined base model for Observation performed by laboratory"""
Characteristics: #can-be-target

//* generalObservation 1..1 EHDSObservation "C.11.1 - General observation" """General observation information"""
* testKit 0..1 EHDSDevice "C.11.2 - Test kit" """Laboratory test kit used during measurement."""
* calibrator 0..1 Identifier "C.11.3 - Calibrator" """Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain. """
* accreditationStatus 0..1 CodeableConcept "C.11.4 - Accreditation status" """Accreditation status of the laboratory for the particular observation."""
  * ^binding.description = "Code system to be specified"
  * ^binding.strength = #preferred
* previousResults 0..* EHDSLaboratoryObservation "C.11.5 - Previous results" """Previous results of the same observation"""
* observationCode //1..1 CodeableConcept "C.11.1 - Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "LOINC, NPU"
  * ^binding.strength = #preferred
* reporter 0..1 EHDSHealthProfessional "Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""
* hasMember 0..* Reference (EHDSLaboratoryObservation or EHDSObservation) "Has member" """This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."""
* resultDescription 0..1 string "Result description" """Comments and narrative representation of the observation result and findings."""
* derivedFrom 0..* Reference (EHDSObservation or EHDSLaboratoryObservation or EHDSImagingStudy) "Derived from" """Related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."""
