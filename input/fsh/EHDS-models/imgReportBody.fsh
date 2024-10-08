Logical: EHDSImagingReportBody
//Id: EHDSreportBody
Title: "Imaging Report body"
Description: """B.1 - EHDS refined base model for Imaging report body"""
Characteristics: #can-be-target

* orderInformation 0..* BackboneElement "B.1.1 - Order information" """Order Information (Laboratory Result Report could respond to multiple test orders)"""
  * orderId 1..* Identifier "B.1.1.1 - Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""
  * orderDateAndTime 0..1 dateTime "B.1.1.2 - Order date and time" """Date and time of the order placement."""
  * orderPlacer 0..1 EHDSHealthProfessionalRole "B.1.1.3 - Order placer" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case when order placer is not a health professional, e.g. by patients themselves where applicable, appropriate personal identifier should be used. """
  * orderReasonText 0..* Narrative "B.1.1.4 - Order reason text" """An explanation or justification for why this service is being requested in textual form. """
  * orderReason 0..* Reference(EHDSCondition or EHDSObservation) "B.1.1.5 - Order reason" """An explanation or justification for why this service is being requested in coded form. """
  * clinicalQuestion 0..1 Narrative "B.1.1.6 - Clinical question" """Specification of clinical question (goal of the investigation) to be answered by the imaging investigation."""
  * supportingInformation 0..* BackboneElement "B.1.1.7 - Supporting information" """Additional clinical information about the patient or specimen that may affect service delivery or interpretation. This information includes diagnosis, clinical findings and other observations. This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order.  For example, reporting the metal implants present in patien's body."""
    * observation 0..* EHDSObservation "B.1.1.7.1 - Observation" """Clinical findings and other observations. E.g., hight and weights of the patient."""
    * condition 0..* EHDSCondition "B.1.1.7.2 - Condition" """Condition that may influence the service or result interpretation."""
    * medicationAdministration 0..* EHDSMedicationAdministration "B.1.1.7.3 - Medication Administration" """Medication adninistered before ordering the service."""
    * devices 0..* EHDSDevice "B.1.1.7.4 - Devices" """List of implants or devices that affect the course of the examination or its interpretation.For example, reporting metal implants present in the patient's body."""
    * pregnancyStatus 0..1 CodeableConcept "B.1.1.7.5 - Pregnancy status" """Pregnancy status when the imaging examination was performed. E.g., pregnant, not pregnant, unknown."""
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * gestationalAge 0..1 CodeableConcept "B.1.1.7.6 - Gestational age" """Duration of the pregnancy on the day on which the patient was asked or at the delivery. The duration can be given in weeks (wk) and/or days (d)."""
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * sexForClinicalUse 0..* CodeableConcept "B.1.1.7.7 - Sex for clinical use" """A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population"""
      * ^binding.description = "HL7 sex-parameter-for-clinical-use"
      * ^binding.strength = #preferred
* specimen 0..* EHDSSpecimen "B.1.2 - Specimen" """Specimen information"""
* serviceRequest 0..* EHDSServiceRequest "B.1.3 - Service request" """Specification of requested service or services"""
* exposureInformation 0..1 BackboneElement "B.1.4 - Exposure information" """Information on total exposure to ionising radiation."""
  * effectiveDose 0..* Quantity "B.1.4.1 - Effective dose" """Sum of equivalent doses to all organs, from external and/or internal exposures, each adjusted to account for the sensitivity of the organ to radiation. [mSv]"""
    * ^binding.description = "UCUM (for units)"
    * ^binding.strength = #preferred
  * equivalentDoseInformation 1..1 BackboneElement "B.1.4.2 - Equivalent dose information" """Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv]."""
    * equivalentDose 1..1 Quantity "B.1.4.2.1 - Equivalent dose" """Equivalent dose is a measure of the radiation dose to tissue where an attempt has been made to allow for the different relative biological effects of different types of ionizing radiation. Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv]."""
      * ^binding.description = "UCUM (for units)"
      * ^binding.strength = #preferred
    * tissueType 1..1 CodeableConcept "B.1.4.2.2 - Tissue type" """Type of the tissue for which do dosage was enumerated."""
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
* examinationReport 1..1 BackboneElement "B.1.5 - Examination Report" """Examination Report"""
  * modality 1..* CodeableConcept "B.1.5.1 - Modality" """Imaging modality (or modalities) used during imaging investigation (DICOM CID029)."""
    * ^binding.description = "DICOM Modality"
    * ^binding.strength = #preferred
  * bodyPart 0..* BackboneElement "B.1.5.2 - Body part" """All body parts investigated"""
    * bodyLocation 0..1 CodeableConcept "B.1.5.2.1 - Body location" """Localization on/in the body."""
      * ^binding.description = "SNOMED CT, ICD-O-3"
      * ^binding.strength = #preferred
    * laterality 0..1 CodeableConcept "B.1.5.2.2 - Laterality" """Body side of the body location, if needed to distinguish from a similar location on the other side of the body."""
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
  * imagingProcedures 0..* EHDSProcedure "B.1.5.3 - Imaging procedures" """Procedure performed during imaging study."""
  * medication 0..* EHDSMedicationAdministration "B.1.5.4 - Medication" """Information about medication administered (contrast, sedation, stress agents), etc."""
  * adverseReaction 0..* EHDSAllergyIntolerance "B.1.5.5 - Adverse reaction" """Adverse reactions manifested during imaging investigation."""
  * resultData 0..1 BackboneElement "B.1.5.6 - Result data" """Laboratory report result data"""
    * resultText 1..1 Narrative "B.1.5.6.1 - Result text" """Comments and narrative representation of the observation results and findings."""
    * observationResults 0..* EHDSObservation "B.1.5.6.2 - Observation results" """Observation details (report could consist of multiple observations)"""
  * conclusion 1..1 BackboneElement "B.1.5.7 - Conclusion" """Conclusions in narrative and coded form."""
    * impression 1..1 Narrative "B.1.5.7.1 - Impression" """Narrative description of the clinical conclusion (impression)."""
    * codedConclusion 0..1 BackboneElement "B.1.5.7.2 - Coded conclusion" """Condition or finding from imaging investigation."""
      * condition 0..* EHDSCondition "B.1.5.7.2.1 - Condition" """Assessment of the condition expressed using common staging (typically TNM but also other) or coded observations (Bi-Rads, Li-Rads etc.)"""
* recommendation 0..1 BackboneElement "B.1.6 - Recommendation" """Recommendations for additional imaging tests or other actions"""
  * description 1..1 Narrative "B.1.6.1 - Description" """Narrative description of the recommended activities including additional test, medication etc."""
  * carePlan 0..* BackboneElement "B.1.6.2 - Care plan" """I complex and structured information about recommended goals, activities and objectives in the form of one or more formal care plan. Consider FHIR Care plan resource."""
    * ^binding.description = "Care Plan"
    * ^binding.strength = #preferred
* comparisonStudy 0..* Reference(EHDSImagingReport) "B.1.7 - Comparison Study" """Documentation (reference) of a prior Imaging Report to which the current images were compared."""
