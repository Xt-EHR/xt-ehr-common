Logical: EHDSConditionHdr
//Id: EHDSconditionHdr
Title: "Condition HDR model"
Description: """EHDS refined base model for Condition HDR"""
Characteristics: #can-be-target
Parent: EHDSCondition

* POA 1..1 CodeableConcept "Category" """Category of the problem allows flagging for conditions acquired during hospital stay.-   Present on admission [POA])-   Hospital acquired condition [HAC]'- Not applicable or unknown"""
* treatmentClass 1..1 CodeableConcept "Treatment class" """Class of the problem (treated, other) in relation to the hospital encounter. Treated problems were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the hospital encounter. At least one problem should be marked as Treated. Other problems are recorded only if they are important for continuity of care (after discharge)."""
