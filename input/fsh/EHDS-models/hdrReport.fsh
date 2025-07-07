Logical: EHDSDischargeReport
Title: "Discharge Report model"
Description: """EHDS refined base model for Discharge Report"""
Characteristics: #can-be-target

* header 1..1 EHDSDischargeReportHeader "Discharge Report header"
* body 1..1 EHDSDischargeReportBody "Discharge Report body"
* presentedForms 0..* EHDSAttachment "Entire report as issued. Various formats could be provided,  PDF format is recommended."
* attachments[x] 0..* EHDSAttachment or EHDSMedia "Report attachments data elements"
