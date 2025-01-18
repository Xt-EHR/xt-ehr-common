Logical: EHDSImagingReport
//Id: EHDSimagingReport
Title: "Imaging report model"
Description: """A - EHDS refined base model for Imaging Result Report"""
Characteristics: #can-be-target

* imagingReportHeader 1..1 EHDSImagingReportHeader "A.1 - Imaging Report header" """Report header data elements"""
* imagingReportBody 1..1 EHDSImagingReportBody "A.2 - Imaging Report body" """Report body data elements"""
* presentedForms 0..* EHDSAttachment "A.3 - Presented forms" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* imagingReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""