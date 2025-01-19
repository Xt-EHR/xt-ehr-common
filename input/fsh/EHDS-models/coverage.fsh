Logical: EHDSCoverage
//Id: EHDScoverage
Title: "Coverage model"
Description: """C.31 - EHDS refined base model for Coverage"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.31.1 - Identifier" """Business Identifier for the coverage"""
* type 0..1 CodeableConcept "C.31.2 - Type" """The type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organization."""
  * ^binding.description = "hl7:coverage-selfpay, hl7:v3-ActCoverageTypeCode"
  * ^binding.strength = #preferred
* patient 1..1 Reference (EHDSPatient) "C.31.3 - Patient" """Patient who benefits from the insurance coverage when products and/or services are provided."""
* payor 1..* Base "C.31.4 - Payor" """Payor including both insurance and non-insurance agreements, such as patient-pay agreements."""
  * payorEntity 1..1 Reference (EHDSOrganization or EHDSPatient) "C.31.4.1 - Payor entity" """Payor entity"""
  * subscriberId 0..1 Identifier "C.31.4.2 - Subscriber Id" """Number or code under which the insured person is registered at the insurance provider."""
