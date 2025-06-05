Logical: EHDSHospitalDischargeReport
//Id: EHDShospitalDischargeReport
Title: "Hospital Discharge Report model"
Description: """A - EHDS refined base model for Hospital Discharge Report"""
Characteristics: #can-be-target

* hospitalDischargeReportHeader 1..1 EHDSHospitalDischargeReportHeader "A.1 - Hospital Discharge Report header" """Report header data elements"""
* hospitalDischargeReportStructuredBody 1..1 EHDSHospitalDischargeReportBody "A.2 - Hospital Discharge Report body" """Report body data elements"""
* presentedForms 0..* EHDSAttachment "A.3 - Attachment" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* hospitalDischargeReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""
