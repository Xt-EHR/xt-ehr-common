Logical: EEHRxFLaboratoryObservation
//Id: EEHRxFlaboratoryObservation
Title: "Laboratory observation"
Description: """C.11 - EEHRxF refined base model for Observation performed by laboratory"""
Characteristics: #can-be-target

* generalObservation 1..1 EEHRxFObservation "C.11.1 - General observation" """General observation information"""
* testKit 0..1 EEHRxFDevice "C.11.2 - Test kit" """Laboratory test kit used during measurement."""
* calibrator 0..1 Identifier "C.11.3 - Calibrator" """Information about which end-user calibrator the laboratory has been used for the measurement to indicate the metrological traceability chain. """
* accreditationStatus 0..1 CodeableConcept "C.11.4 - Accreditation status" """Accreditation status of the laboratory for the particular observation."""
* previousResults 0..* EEHRxFLaboratoryObservation "C.11.5 - Previous results" """Previous results of the same observation"""
