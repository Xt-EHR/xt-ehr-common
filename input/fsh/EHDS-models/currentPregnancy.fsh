Logical: EHDSCurrentPregnancy
Parent: EHDSDataSet
Title: "Current pregnancy status model"
Description: "Current pregnancy status"
Characteristics: #can-be-target

* header.status ^short = "Status of this observation"
* header.authorship.author ^short = "Author of this observation"
* currentPregnancyStatus 1..1 CodeableConcept "Pregnancy status of the patient, e.g. pregnant, not pregnant, possible pregnancy"
  * ^binding.description = "SNOMED CT"
//  * ^binding.description = """1.3.6.1.4.1.12559.11.10.1.3.1.42.60	eHDSICurrentPregnancyStatus (SNOMED CT, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.63 eHDSIRareDisease (OrphaCodes, used in MH@EU); ICD-11; SNOMED CT"""
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, ISO IPS"
* dateOfStatus 0..1 dateTime "Effective date of the current pregnancy status."
  * ^requirements = "eHN PS Guideline, ISO IPS"
* expectedDateOfDelivery 0..1 date "Date in which the woman is due to give birth. Year, day and month are required."
  * ^requirements = "eHN PS Guideline, ISO IPS"
* gestationalAge 0..1 Quantity "Duration of the pregnancy at this day" "Gestational age - duration of the pregnancy on the day on which the patient was asked or at the delivery. The duration can be given in weeks and/or days."
  // * ^requirements = "Xt-EHR"?
* note 0..1 string "Free text notes by the health professional regarding the current pregnancy."
  * ^requirements = "eHN PS Guideline, ISO IPS"