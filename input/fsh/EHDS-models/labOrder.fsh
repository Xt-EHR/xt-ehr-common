Logical: EHDSLaboratoryOrder
//Id: EHDSlaboratoryOrder
Title: "Laboratory order"
Description: """A - EHDS refined base model for Laboratory order"""
Characteristics: #can-be-target

* laboratoryOrderHeader 1..1 EHDSLaboratoryOrderHeader "A.1 - Laboratory Order header" """Laboratory Order header"""
* laboratoryOrderStructuredBody 0..1 EHDSLaboratoryOrderBody "A.2 - Laboratory order structured body" """Laboratory order body"""
* presentedForms 0..* EHDSAttachment "A.3 - Attachment" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* laboratoryOrderAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Document attachments"""