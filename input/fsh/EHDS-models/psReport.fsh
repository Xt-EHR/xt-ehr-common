Logical: EHDSPatientSummary
//Id: EHDSpatientSummary
Title: "Patient Summary"
Description: """A - EHDS refined base model for Patient Summary Report"""
Characteristics: #can-be-target

* patientSummaryReportHeader 1..1 EHDSPatientSummaryReportHeader "A.1 - Patient Summary Report header" """Report header data elements"""
* patientSummaryReportBody 1..1 EHDSPatientSummaryReportBody "A.2 - Patient Summary Report body" """Report body data elements"""
