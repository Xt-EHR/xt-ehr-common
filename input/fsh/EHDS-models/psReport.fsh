Logical: EHDSPatientSummary
//Id: EHDSpatientSummary
Title: "Patient Summary"
Description: """A - EHDS refined base model for Patient Summary Report"""
Characteristics: #can-be-target

* patientSummaryReportHeader 1..1 EHDSPatientSummaryHeader "A.1 - Patient Summary header" """Report header data elements"""
* patientSummaryReportBody 1..1 EHDSPatientSummaryBody "A.2 - Patient summary body" """Report body data elements"""
