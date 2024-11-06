Logical: EHDSMedicationAdministration
//Id: EHDSmedicationAdministration
Title: "Medication administration"
Description: """C.18 - EHDS refined base model for Medication administration"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.18.1 - Identifier" """Medication administration  identifier"""
* status 1..1 CodeableConcept "C.18.2 - Status" """Will generally be set to show that the administration has been completed, but might include other sttus codes (e.g. completed, not-done, on-hold, in-progress, unknown)"""
  * ^binding.description = "HL7 MedicationAdimnistrationStatusCodes"
  * ^binding.strength = #preferred
* statusReason 0..* CodeableConcept "C.18.3 - Status reason" """Reason administration not performed"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* medication 1..1 Reference(EHDSMedication) "C.18.4 - Medication" """Administered medication"""
* occurance[x] 1..1 dateTime or Period "C.18.5 - Occurance" """Specific date/time or interval of time during which the administration took place (or did not take place)"""
* reason 0..* Reference(EHDSCondition or EHDSObservation) "C.18.6 - Reason" """Condition or observation that supports why the medication was administered"""
* note 0..1 Narrative "C.18.7 - Note" """Information about the administration"""
* dosage 0..1 Base "C.18.8 - Dosage" """Details of how medication was taken"""
  * dosageDescription 0..1 Narrative "C.18.8.1 - Dosage description" """Free text dosage instructions"""
  * site 0..1 CodeableConcept "C.18.8.2 - Site" """Body site administered to"""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * route 0..1 CodeableConcept "C.18.8.3 - Route" """Path of substance into body"""
    * ^binding.description = "SNOMED CT, EDQM"
    * ^binding.strength = #preferred
  * method 0..1 CodeableConcept "C.18.8.4 - Method" """How drug was administered"""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * dose 0..1 Quantity "C.18.8.5 - Dose" """Amount of medication per dose"""
  * rate[x] 0..1 Ratio or Quantity "C.18.8.6 - Rate" """Dose quantity per unit of time"""
