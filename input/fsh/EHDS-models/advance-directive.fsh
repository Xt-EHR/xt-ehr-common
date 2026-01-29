Logical: EHDSAdvanceDirective
Parent: EHDSDataSet
Title: "Advance directive model"
Description: """Healthcare directives concerning life or after life wishes of the patient"""
Characteristics: #can-be-target
* category 0..* CodeableConcept "Categories of Directives related to decisions prior and after death"
  * ^requirements = "ISO IPS"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
  * ^comment = """Examples:
Intubation,
Tube Feedings,
Life Support,
Cardiopulmonary resuscitation,
Antibiotics,
Resuscitation,
Artificial respiration,
Administration of medication,
Transfusion,
Transfer of care to hospital,
Dialysis procedure,
Negative declaration,
Organ donation,
Body donation,
Intravenous infusion"""
* note 0..1 string "Textual description of the directive"
  * ^requirements = "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS"
* attachment 0..1 EHDSAttachment "Scanned source document with the living will and the patient's signature, such as a PDF."
  * ^requirements = "eHN HDR Guideline, ISO IPS"