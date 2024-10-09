Logical: EHDSImagingReport
//Id: EHDSimagingReport
Title: "Imaging Report (model)"
Description: """A - EHDS refined base model for Imaging Result Report"""
Characteristics: #can-be-target

* imagingReportHeader 1..1 EHDSImagingReportHeader "A.1 - Imaging Report header" """Report header data elements"""
* imagingReportBody 1..1 EHDSImagingReportBody "A.2 - Imaging Report body" """Report body data elements"""
* imagingReportAttachments 0..1 EHDSAttachments "A.3 - Imaging Report attachments" """Report attachments data elements"""