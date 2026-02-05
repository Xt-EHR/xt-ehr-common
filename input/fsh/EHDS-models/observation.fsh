Logical: EHDSObservation
Parent: EHDSDataSet
Title: "Observation model"
Description: """EHDS refined base model for Observation information"""

//subject only patient. Laboratory result has more.
* header.status
  * ^binding.description = "HL7 Observation status"
  * ^binding.strength = #preferred
* header.subject
  * ^short = "Patient who is receiving health care. This patient might be different from the direct subject of the observation."
* header.directSubject[x] 0..1 EHDSPatient or EHDSLocation or EHDSDevice or EHDSHealthProfessional or EHDSOrganisation or EHDSProcedure "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device. Additional types of subject may be allowed in implementations."
* observationDate[x] 1..1 dateTime or Period "Clinically relevant time or time period for the observation"
* type 1..1 CodeableConcept "Observation type. Code and name representing the type of the observation using the agreed code systems."
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
//* name 1..1 string "Name of the observation"
* originalName 0..1 string "Original (conventional) name of the observation as used in the local laboratory or clinical system."
* method 0..1 CodeableConcept "Observation method" """Observation method (measurement principle) to obtain the result."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* specimen 0..1 EHDSSpecimen "Specimen used for this observation."
* order 0..1 EHDSServiceRequest "Identifies order and order placer this observation belongs to"
* performer[x] 0..* EHDSOrganisation or EHDSHealthProfessional or EHDSPatient or EHDSRelatedPerson "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions."
//reporter in DataSet
* bodySite 0..1 EHDSBodyStructure "Anatomic location and laterality where the observation was performed."
* result 1..1 Base "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
  * value[x] 0..1 string or Quantity or Range or Ratio or CodeableConcept "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well.
    Text result value should be used only if coded result value is not expected otherwise use valueCodeableConcept.text. For Quantity, Range and Ratio, result units of the measurement should be provided."
    * ^binding.description = "UCUM for units, SNOMED CT for coded results"
    * ^binding.strength = #preferred
  // * value 0..1 Base "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well. \nObservation result value as a text. Text result value should be used only if codeis not expected otherwise use valueCodeableConcept.text."
  //   * text 0..1 string "Observation result value as a text. Should be used only if coded result value is not expected otherwise use valueCodeableConcept.text."
  //   * numeric 0..1 Quantity "Observation result value as a quantity, result units of the measurement should be provided."
  //     * ^binding.description = "UCUM for units"
  //     * ^binding.strength = #preferred
  //   * range 0..1 Range "Observation result value as a range (open or closed). Result units of the measurement should be provided."
  //     * ^binding.description = "UCUM for units"
  //     * ^binding.strength = #preferred
  //   * coded 0..1 CodeableConcept "Observation result value from a valid code system"
  //     * ^binding.description = "SNOMED CT"
  //     * ^binding.strength = #preferred
  //     * ^example.label = "coded result"
  //     * ^example.valueString = "For example this could be a code describing identified bacteria or other microorganism identified, description of urinary concernment, jaundice (hyperbilirubinemia), scoring (GCS), etc."
  //   * ratio 0..1 Ratio "Observation result value as a ratio."
  //     * ^binding.description = "UCUM for units"
  //     * ^binding.strength = #preferred
  * uncertainty 0..1 Base "Measurement uncertainty type and interval if needed." "Measurement uncertainty information about the observation result."
    * value 1..1 decimal "The numerical value of the measurement uncertainty."
    * type 0..1 Coding "Probability Distribution Type for uncertainty"
      * ^binding.description = "HL7 ProbabilityDistributionType"
      * ^binding.strength = #preferred
  * dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element Observation.value[x] is missing."
    * ^binding.description = "HL7 Data absent reason"
    * ^binding.strength = #preferred
* referenceRange 0..* Base "Reference range, multiple reference ranges of different types could by provided. Provides guide for interpretation of the result."
  * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
  * low 0..1 Quantity "Low limit of the reference range."
    * ^binding.description = "UCUM for units"
    * ^binding.strength = #preferred
  * high 0..1 Quantity "High limit of the reference range."
    * ^binding.description = "UCUM for units"
    * ^binding.strength = #preferred
  * normalValue 0..1 CodeableConcept "Normal value, if relevant for the reference range."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * type 0..1 CodeableConcept "Type of reference range."
    * ^binding.description = "HL7 Observation Reference Range Meaning Codes"
    * ^binding.strength = #preferred
  * appliesTo 0..* CodeableConcept "Codes to indicate the target population this reference range applies to." """Codes to indicate the target population this reference range applies to. For example, a reference range may be based on the normal population or a particular sex or race. Multiple appliesTo are interpreted as an \"AND\" of the target populations."""
    * ^comment = "Multiple appliesTo are interpreted as an \"AND\" of the target populations."
    * ^binding.description = "SNOMED CT, HL7 v3-Race"
    * ^binding.strength = #preferred
  * age 0..1 Range "Age range to which this reference range applies if applicable."
    * ^binding.description = "UCUM for units"
    * ^binding.strength = #preferred
  * text 0..1 string "Text based reference range in an observation." """Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation. An example would be a reference value of \"Negative\" or a list or table of \"normals\"."""
* interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
  * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
  * ^binding.strength = #preferred
* note 0..1 string "Comments and narrative representation of the observation result and findings."

* component 0..* Base "Component in case the observation consists of multiple sub-observations (e.g. blood pressure)."
  * code 1..1 CodeableConcept "Code representing the observation using the agreed code systems."
    * ^binding.description = "LOINC, NPU, SNOMED CT"
    * ^binding.strength = #preferred
  * originalName 0..1 string "Original (user-friendly) name of the observation as used in the local laboratory or clinical system."
  * result 1..1 Base "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
    * value[x] 0..1 string or Quantity or Range or Ratio or CodeableConcept "Observation result value according to the type of observation. Model covers only most frequently used data types but other data types can be used as well.
      Text result value should be used only if coded result value is not expected otherwise use valueCodeableConcept.text. For Quantity, Range and Ratio, result units of the measurement should be provided."
      * ^binding.description = "UCUM for units, SNOMED CT for coded results"
      * ^binding.strength = #preferred
    * uncertainty 0..1 Base "Measurement uncertainty type and interval if needed." "Measurement uncertainty information about the observation result."
      * value 1..1 decimal "The numerical value of the measurement uncertainty."
      * type 0..1 Coding "Probability Distribution Type for uncertainty"
        * ^binding.description = "HL7 ProbabilityDistributionType"
        * ^binding.strength = #preferred
    * dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element component.value[x] is missing."
      * ^binding.description = "HL7 Data absent reason"
      * ^binding.strength = #preferred
  * referenceRange 0..* Base "Reference range, multiple reference ranges of different types could by provided. Provides guide for interpretation of the result."
    * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
    * low 0..1 Quantity "Low limit of the reference range."
      * ^binding.description = "UCUM for units"
      * ^binding.strength = #preferred
    * high 0..1 Quantity "High limit of the reference range."
      * ^binding.description = "UCUM for units"
      * ^binding.strength = #preferred
    * normalValue 0..1 CodeableConcept "Normal value, if relevant for the reference range."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * type 0..1 CodeableConcept "Type of reference range."
      * ^binding.description = "HL7 Observation Reference Range Meaning Codes"
      * ^binding.strength = #preferred
    * appliesTo 0..* CodeableConcept "Codes to indicate the target population this reference range applies to." """Codes to indicate the target population this reference range applies to. For example, a reference range may be based on the normal population or a particular sex or race. Multiple appliesTo are interpreted as an \"AND\" of the target populations."""
      * ^comment = "Multiple appliesTo are interpreted as an \"AND\" of the target populations."
      * ^binding.description = "SNOMED CT, HL7 v3-Race"
      * ^binding.strength = #preferred
    * age 0..1 Range "Age range to which this reference range applies if applicable."
      * ^binding.description = "UCUM for units"
      * ^binding.strength = #preferred
    * text 0..1 string "Text based reference range in an observation." """Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation. An example would be a reference value of \"Negative\" or a list or table of \"normals\"."""
  * interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
    * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
    * ^binding.strength = #preferred

* derivedFrom[x] 0..* EHDSObservation or EHDSLaboratoryObservation or EHDSImagingStudy "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."
//* triggeredBy[x] 0..* EHDSLaboratoryObservation or EHDSObservation "References to the observation(s) that triggered the performance of this observation."
* hasMember[x] 0..* EHDSLaboratoryObservation or EHDSObservation "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."