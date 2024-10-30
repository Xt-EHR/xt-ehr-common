Logical: EHDSObservation
//Id: EHDSobservation
Title: "Observation (model)"
Description: """C.10 - EHDS refined base model for Observation information"""
Characteristics: #can-be-target

* observationDate 1..1 dateTime "C.10.1 - Observation date" """Date and time of the observation"""
* observationCode 1..1 CodeableConcept "C.10.2 - Observation code" """Code representing the observation using the agreed code systems."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* observationName 1..1 string "C.10.3 - Observation name" """Full name of the observation according to the used test coding standard."""
* observationOriginalName 0..1 string "C.10.4 - Observation original name" """Original (conventional) name of the observation """
* observationMethod 0..1 CodeableConcept "C.10.5 - Observation method" """Observation method (measurement principle) to obtain the result."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* observationDevice 0..1 EHDSDevice "C.10.6 - Observation device" """Device (e.g. analyser) that generates the measurements"""
* order 0..1 Reference(EHDSServiceRequest) "C.10.7 - Order" """Identifies order and order placer this observation belongs to. """
* performer[x] 0..1 EHDSHealthProfessional "C.10.8 - Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole Laboratory Report document. """
* reporter[x] 0..1 EHDSHealthProfessional "C.10.9 - Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""
* observationResult 1..1 BackboneElement "C.10.10 - Observation result" """Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."""
  * textualResult 0..1 Narrative "C.10.10.1 - Textual Result" """Narrative text result"""
  * numericResult 0..1 BackboneElement "C.10.10.2 - Numeric Result" """A numeric value or interval (open or closed) of the result, result units of the measurement should be provided Measurement uncertainty interval are provided if needed."""
    * numericValue[x] 0..1 Quantity or Range "C.10.10.2.1 - Numeric value" """A numeric value or interval (open or closed) of the result"""
    * units 0..1 CodeableConcept "C.10.10.2.2 - Units" """Result units of the measurement"""
      * ^binding.description = "UCUM"
      * ^binding.strength = #preferred
    * uncertainty 0..1 BackboneElement "C.10.10.2.3 - Uncertainty" """Measurement uncertainty type and interval should be provided if needed."""
  * codedResult 0..1 CodeableConcept "C.10.10.3 - Coded Result" """A coded result from a selected coding system(s). This could be a code describing bacteria or other microorganism identified, description of urinary concernment, code explaining technical reason why the test could not be done etc."""
    * ^binding.description = "SNOMED CT (for ordinal or nominal scale results and result interpretation)UCUM (for units)"
    * ^binding.strength = #preferred
* dataabsentreason 0..1 CodeableConcept "C.10.11 - dataAbsentReason" """Provides a reason why the expected value in the element Observation.value[x] is missing."""
  * ^binding.description = "HL7 Data absent reason"
  * ^binding.strength = #preferred
* referenceRange 0..* BackboneElement "C.10.12 - Reference range" """Reference range, multilple reference ranges of different types culd by providedProvides guide for interpretation of result. Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."""
* observationInterpretation 0..* CodeableConcept "C.10.13 - Observation interpretation" """Information about reference intervals and result interpretation."""
  * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
  * ^binding.strength = #preferred
* triggeredBy[x] 0..* EHDSLaboratoryObservation or EHDSObservation "C.10.14 - Triggered by" """Identifies the observation(s) that triggered the performance of this observation."""
* hasMember[x] 0..* EHDSLaboratoryObservation or EHDSObservation "C.10.15 - Has member" """This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."""
* resultDescription 0..1 Narrative "C.10.16 - Result description" """Comments and narrative representation of the observation result and findings."""
* anatomicLocation 0..1 CodeableConcept "C.10.17 - Anatomic location" """Anatomic location and laterality where the observation should be or was performed. """
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
