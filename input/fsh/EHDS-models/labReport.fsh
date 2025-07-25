Logical: EHDSLaboratoryReport
//Id: EHDSlaboratoryReport
Title: "Laboratory report model"
Description: """A - EHDS refined base model for Laboratory result report"""
Characteristics: #can-be-target

* laboratoryReportHeader 1..1 EHDSLaboratoryReportHeader "A.1 - Laboratory report header" """Report header data elements"""
* laboratoryReportStructuredBody 0..1 EHDSLaboratoryReportBody "A.2 - Laboratory Report structured body" """Report body data elements"""
* presentedForm 0..* EHDSAttachment "A.3 - Attachment" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* laboratoryReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""