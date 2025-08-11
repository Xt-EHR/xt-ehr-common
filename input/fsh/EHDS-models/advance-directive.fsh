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
* narrative 0..1 string "Textual description of the directive"
  * ^requirements = "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS"
* effectivePeriod 0..1 Period "Time period during which the directive is effective"
  * ^requirements = "eHN HDR Guideline, ISO IPS"
* authorisingEntity[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson or EHDSOrganisation "Person or organisation that authorizes the directive"
  * ^requirements = "ISO IPS"
* relatedConditions[x] 0..* CodeableConcept "The problem or disorder to which the living will applies. Multiple fields could be provided."
  * ^requirements = "ISO IPS"
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* advanceDirectiveDocument 0..1 EHDSAttachment "Scanned source document with the living will and the patient's signature, such as a PDF."
  * ^requirements = "eHN HDR Guideline, ISO IPS"