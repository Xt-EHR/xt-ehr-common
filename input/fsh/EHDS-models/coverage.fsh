Logical: EHDSCoverage
//Id: EHDScoverage
Title: "Coverage model"
Description: """EHDS refined base model for Coverage"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Business Identifier for the coverage"
* type 0..1 CodeableConcept "Type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organisation."
  * ^binding.description = "hl7:coverage-selfpay, hl7:v3-ActCoverageTypeCode"
  * ^binding.strength = #preferred
* patient 1..1 EHDSPatient "Patient who benefits from the insurance coverage when products and/or services are provided."
* payor 1..* Base "Payor including both insurance and non-insurance agreements, such as patient-pay agreements."
  * payorEntity[x] 1..1 EHDSOrganisation or EHDSPatient "Payor entity"
  * subscriberId 0..1 Identifier "Number or code under which the insured person is registered at the insurance provider."
