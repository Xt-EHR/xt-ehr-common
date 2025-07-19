Logical: EHDSObservation
Parent: EHDSDataSet
Title: "Observation model"
Description: """EHDS refined base model for Observation information"""
Characteristics: #can-be-target

//subject only patient. Laboratory result has more.
* header.status  
  * ^binding.description = "HL7 Observation status"
  * ^binding.strength = #preferred
* observationDate[x] 1..1 dateTime or Period "Clinically relevant time or time period for the observation"
* code 1..1 CodeableConcept "Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
* originalName 0..1 string "Original (conventional) name of the observation"
* method 0..1 CodeableConcept "Observation method" """Observation method (measurement principle) to obtain the result."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* order 0..1 EHDSServiceRequest "Identifies order and order placer this observation belongs to"
* performer 0..1 EHDSHealthProfessional "Performer" 
//reporter in DataSet
* anatomicLocation 0..1 EHDSBodyStructure "Anatomic location and laterality where the observation was performed."
* result 0..1 Base "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
  * value[x] 1..1 string or Quantity or Range or CodeableConcept "Observation result value according to the type of observation"
    * ^binding.description = "UCUM for units, SNOMED CT for coded results"
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
  * code 1..1 CodeableConcept "Code representing the observation using the agreed code systems."
    * ^binding.description = "LOINC, NPU, SNOMED CT"
    * ^binding.strength = #preferred
  * result 0..1 Base "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
    * value[x] 1..1 string or Quantity or Range or CodeableConcept "Observation result value according to the type of observation"
    * uncertainty 0..1 Base "Measurement uncertainty type and interval if needed."
  * dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element Observation.value[x] is missing."
    * ^binding.description = "HL7 Data absent reason"
    * ^binding.strength = #preferred
  * referenceRange 0..* Base "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result." 
    * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
  * interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
    * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
    * ^binding.strength = #preferred

* derivedFrom[x] 0..* EHDSObservation or EHDSLaboratoryObservation or EHDSImagingStudy "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."
* triggeredBy[x] 0..* EHDSLaboratoryObservation or EHDSObservation "References to the observation(s) that triggered the performance of this observation."
* hasMember[x] 0..* EHDSLaboratoryObservation or EHDSObservation "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."