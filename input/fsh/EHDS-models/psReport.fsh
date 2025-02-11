Logical: EHDSPatientSummary
//Id: EHDSpatientSummary
Title: "Patient summary model"
Description: """A - EHDS refined base model for Patient Summary Report"""
Characteristics: #can-be-target

* patientSummaryReportHeader 1..1 EHDSPatientSummaryHeader "A.1 - Patient Summary header" """Report header data elements"""
* patientSummaryReportStructuredBody 1..1 EHDSPatientSummaryBody "A.2 - Patient summary structured body" """Report body data elements"""
* presentedForms 0..* EHDSAttachment "A.3 - Attachment" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* patientSummaryReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""
