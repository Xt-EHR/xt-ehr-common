/*
Logical: EHDSAttachments
//Id: EHDSattachments
Title: "Attachments"
Description: """D.1 - EHDS refined base model for Document attachments"""
Characteristics: #can-be-target

* presentedForm 0..1 EHDSAttachment "D.1.1 - Presented form" """Entire report as issued  pdf format recommended"""
* media[x] 0..* EHDSAttachment or EHDSMedia "A.1.11 - Media" """Media attachments."""
*/