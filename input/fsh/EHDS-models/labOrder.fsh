Logical: EHDSLaboratoryOrder
//Id: EHDSlaboratoryOrder
Title: "Laboratory Order"
Description: """A - EHDS refined base model for Laboratory Order"""
Characteristics: #can-be-target

* laboratoryOrderHeader 1..1 EHDSLaboratoryOrderHeader "A.1 - Laboratory Order header" """Laboratory Order header"""
* laboratoryOrderBody 1..1 EHDSPatientSummaryBody "A.2 - Patient summary body" """Patient summary body"""
* presentedForms 0..* EHDSAttachment "A.3 - Attachment" """Attachment"""
* laboratoryOrderAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Attachment, Media"""
