Logical: EHDSLaboratoryReport
//Id: EHDSlaboratoryReport
Title: "Laboratory Report (model)"
Description: """A - EHDS refined base model for Laboratory Result Report"""
Characteristics: #can-be-target

* laboratoryReportHeader 1..1 EHDSLaboratoryReportHeader "A.1 - Laboratory Report header" """Report header data elements"""
* laboratoryReportBody 1..1 EHDSLaboratoryReportBody "A.2 - Laboratory Report body" """Report body data elements"""
* laboratoryReportAttachments 0..1 EHDSAttachments "A.3 - Laboratory Report attachments" """Report attachments data elements"""