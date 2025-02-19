Logical: EHDSImagingReport
//Id: EHDSimagingReport
Title: "Imaging report model"
Description: """A - EHDS refined base model for Imaging Result Report"""
Characteristics: #can-be-target

* imagingReportHeader 1..1 EHDSImagingReportHeader "A.1 - Imaging Report header" """Report header data elements"""
* imagingReportStructuredBody 1..1 EHDSImagingReportBody "A.2 - Imaging Report structured body" """Report body data elements"""
* presentedForms 0..* EHDSAttachment "A.3 - Presented forms" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* imagingReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""
* dicomStudyMetadata 0..* EHDSImagingStudy "A.5 - Imaging study" """Metadata of the DICOM study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities."""