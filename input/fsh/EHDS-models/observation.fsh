Logical: EHDSObservation
Parent: EHDSDataSet
Title: "Observation model"
Description: """EHDS refined base model for Observation information"""
Characteristics: #can-be-target

//* status 1..1 CodeableConcept "Status" """The status of the result value."""
* header.status  
  * ^binding.description = "HL7 Observation status"
  * ^binding.strength = #preferred
//* subject 1..1 Reference (EHDSPatient or EHDSLocation or EHDSDevice or EHDSOrganization or EHDSHealthProfessional or EHDSProcedure) "Subject" """The patient, or group of patients, location, device, organization, procedure or practitioner this observation is about."""
* observationDate[x] 1..1 dateTime or Period "Observation date" """Clinically relevant time or time period for the observation."""
* code 1..1 CodeableConcept "Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
//* observationName 1..1 string "Observation name" """Full name of the observation according to the used test coding standard."""
* originalName 0..1 string "Observation original name" """Original (conventional) name of the observation """
* method 0..1 CodeableConcept "Observation method" """Observation method (measurement principle) to obtain the result."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* order 0..1 Reference (EHDSServiceRequest) "Order" """Identifies order and order placer this observation belongs to. """
* performer 0..1 EHDSHealthProfessional "Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole Laboratory Report document. """
//* reporter 0..1 EHDSHealthProfessional "Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""
* anatomicLocation 0..1 CodeableConcept "Anatomic location" """Anatomic location and laterality where the observation should be or was performed. """
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* result 0..1 Base "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
  * value[x] 1..1 string or Quantity or Range or CodeableConcept
    * ^binding.description = "UCUM"
    * ^binding.strength = #preferred
  * valueCodeableConcept ^short = "A coded result from a selected coding system(s). This could be a code describing bacteria or other microorganism identified, description of urinary concernment, code explaining technical reason why the test could not be done etc."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * uncertainty 0..1 Base "Measurement uncertainty type and interval if needed."
* dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element Observation.value[x] is missing."
  * ^binding.description = "HL7 Data absent reason"
  * ^binding.strength = #preferred
* referenceRange 0..* Base "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result." 
  * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
* interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
  * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
  * ^binding.strength = #preferred
* resultDescription 0..1 string "Comments and narrative representation of the observation result and findings."


* component 0..* Base "Component in case the observation consists of multiple sub-observations (e.g. blood pressure)."
  * result 0..1 Base "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
    * value[x] 1..1 string or Quantity or Range or CodeableConcept
      * ^binding.description = "UCUM"
      * ^binding.strength = #preferred
    * valueCodeableConcept ^short = "A coded result from a selected coding system(s). This could be a code describing bacteria or other microorganism identified, description of urinary concernment, code explaining technical reason why the test could not be done etc."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * uncertainty 0..1 Base "Measurement uncertainty type and interval if needed."
  * dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element Observation.value[x] is missing."
    * ^binding.description = "HL7 Data absent reason"
    * ^binding.strength = #preferred
  * referenceRange 0..* Base "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result." 
    * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
  * interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
    * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
    * ^binding.strength = #preferred


* derivedFrom 0..* EHDSObservation or EHDSLaboratoryObservation or EHDSImagingStudy "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."
* triggeredBy 0..* EHDSLaboratoryObservation or EHDSObservation "References to the observation(s) that triggered the performance of this observation."
* hasMember 0..* EHDSLaboratoryObservation or EHDSObservation "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."
