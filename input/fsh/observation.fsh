Logical: EHDSObservation
Parent: EHDSDataSet
//Id: EHDSobservation
Title: "Observation model"
Description: """EHDS refined base model for Observation information"""
Characteristics: #can-be-target

* observationDate[x] 1..1 dateTime or Period "Observation date" """Clinically relevant time or time period for the observation."""
* code 1..1 CodeableConcept "Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
* name 1..1 string "Observation name" """Full name of the observation according to the used test coding standard."""
* originalName 0..1 string "Observation original name" """Original (conventional) name of the observation """
* observationMethod 0..1 CodeableConcept "Observation method" """Observation method (measurement principle) to obtain the result."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* device 0..1 EHDSDevice "Observation device" """Device (e.g. analyser) that generates the measurements"""
* order 0..1 Reference (EHDSServiceRequest) "Order" """Identifies order and order placer this observation belongs to. """
* performer 0..1 EHDSHealthProfessional "Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole Laboratory Report document. """
// * reporter 0..1 EHDSHealthProfessional "Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""
* result[x] 0..1 string or Quantity or Range or CodeableConcept "" """Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* uncertainty 0..1 Base "Uncertainty" """Measurement uncertainty type and interval should be provided if needed."""
  * ^comment = "To be elaborated in future work."
* dataAbsentReason 0..1 CodeableConcept "dataAbsentReason" """Provides a reason why the expected value in the element Observation.value[x] is missing."""
  * ^binding.description = "HL7 Data absent reason"
  * ^binding.strength = #preferred
* referenceRange 0..* Base "Reference range" """Reference range, multiple reference ranges of different types culd by providedProvides guide for interpretation of result. Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."""
  * ^comment = "To be elaborated in future work."
* interpretation 0..* CodeableConcept "Observation interpretation" """Information about reference intervals and result interpretation."""
  * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
  * ^binding.strength = #preferred
* triggeredBy 0..* Reference (EHDSLaboratoryObservation or EHDSObservation) "Triggered by" """Identifies the observation(s) that triggered the performance of this observation."""
// * hasMember 0..* Reference (EHDSLaboratoryObservation or EHDSObservation) "Has member" """This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."""
// * resultDescription 0..1 string "Result description" """Comments and narrative representation of the observation result and findings."""
* anatomicLocation 0..1 CodeableConcept "Anatomic location" """Anatomic location and laterality where the observation should be or was performed. """
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* component 0..* Base "Component" """Some observations have multiple component observations. These component observations are expressed as separate code value pairs that share the same attributes."""
  * code 1..1 CodeableConcept "Code" """Code representing the observation using the agreed code systems."""
    * ^binding.description = "LOINC, NPU, SNOMED CT"
    * ^binding.strength = #preferred
  * result[x] 0..1 string or Quantity or Range or CodeableConcept "" """Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * uncertainty 0..1 Base "Uncertainty" """Measurement uncertainty type and interval should be provided if needed."""
  * ^comment = "To be elaborated in future work."
  * dataAbsentReason 0..1 CodeableConcept "dataAbsentReason" """Provides a reason why the expected value in the element Observation.value[x] is missing."""
    * ^binding.description = "HL7 Data absent reason"
    * ^binding.strength = #preferred
  * referenceRange 0..* Base "Reference range" """Reference range, multiple reference ranges of different types culd by providedProvides guide for interpretation of result. Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."""
    * ^comment = "To be elaborated in future work."
  * interpretation 0..* CodeableConcept "Observation interpretation" """Information about reference intervals and result interpretation."""
    * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
    * ^binding.strength = #preferred
// * status 1..1 CodeableConcept "Status" """The status of the result value."""
//   * ^binding.description = "HL7 Observation status"
//   * ^binding.strength = #preferred
//* derivedFrom 0..* Reference (EHDSObservation or EHDSLaboratoryObservation or EHDSImagingStudy) "Derived from" """Related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."""
