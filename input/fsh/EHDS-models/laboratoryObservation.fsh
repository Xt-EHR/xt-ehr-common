Logical: EHDSLaboratoryObservation
Parent: EHDSObservation
Title: "Laboratory observation model"
Description: """EHDS refined base model for Observation performed by laboratory"""
Characteristics: #can-be-target

//* generalObservation 1..1 EHDSObservation "General observation" """General observation information"""

// this is giving an error in QA, but is needed to derive from EHDSDataSet
// * header.subject ^short = "The patient, location, device, organisation, procedure or practitioner this observation is about"
// * header.subject ^type.profile[+] = Canonical(EHDSPatient)
// * header.subject ^type.profile[+] = Canonical(EHDSLocation)
// * header.subject ^type.profile[+] = Canonical(EHDSDevice)
// * header.subject ^type.profile[+] = Canonical(EHDSHealthProfessional)
// * header.subject ^type.profile[+] = Canonical(EHDSOrganisation)
// * header.subject ^type.profile[+] = Canonical(EHDSProcedure)
* result ^short = "Result of the laboratory observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
//  * value[x]
// * result.uncertainty 0..1 Base "Measurement uncertainty type and interval if needed." "Measurement uncertainty information about the laboratory observation result."
// * result.uncertainty.value 1..1 decimal "The numerical value of the measurement uncertainty."
// * result.uncertainty.type 0..1 Coding "Probability Distribution Type for uncertainty"
//   * ^binding.description = "hl7:ProbabilityDistributionType"
//   * ^binding.strength = #preferred
// * component
//   * result
//     * uncertainty 0..1 Base "Measurement uncertainty type and interval if needed." "Measurement uncertainty information about the laboratory observation result."
//       * value 1..1 decimal "The numerical value of the measurement uncertainty."
//       * type 0..1 Coding "Probability Distribution Type for uncertainty"
//         * ^binding.description = "hl7:ProbabilityDistributionType"
//         * ^binding.strength = #preferred
* type
  * ^binding.description = "LOINC, NPU"
  * ^binding.strength = #preferred
* component.type
  * ^binding.description = "LOINC, NPU"
  * ^binding.strength = #preferred
* triggeredBy[x] 0..* EHDSLaboratoryObservation or EHDSObservation "References to the observation(s) that triggered the performance of this observation."
* testKit 0..1 EHDSDevice "Laboratory test kit used during measurement."
* calibrator 0..1 Identifier "Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain."
* accreditationStatus 0..1 boolean "Accreditation status of the laboratory for the observation."
  // * ^binding.description = "Code system to be specified"
  // * ^binding.strength = #preferred
* previousResults 0..* EHDSLaboratoryObservation "Previous results of the same observation"
* pointOfCareTest 0..1 boolean "Examination performed near or at the site of a patient." """Indicates if the observation is a point-of-care test (POCT), i.e. an examination performed near or at the site of a patient."""
