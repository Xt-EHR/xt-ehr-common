/*
Logical: EHDSLaboratoryReportBody
//Id: EHDSreportBody
Title: "Laboratory report body model"
Description: """B.1 - EEHRxF refined base model for Laboratory result report body"""
Characteristics: #can-be-target

* orderInformation 0..* Base "B.1.1 - Order information" """Order Information (Laboratory Result Report could respond to multiple test orders)"""
  * orderId 1..* Identifier "B.1.1.1 - Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""
  * orderDateAndTime 0..1 dateTime "B.1.1.2 - Order date and time" """Date and time of the order placement."""
  * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient "B.1.1.3 - Order placer" """The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself."""
  * orderReasonText 0..* string "B.1.1.4 - Order reason text" """An explanation or justification for why this service is being requested in textual form."""
  * orderReason[x] 0..* CodeableConcept or EHDSCondition or  EHDSObservation "B.1.1.5 - Order reason" """An explanation or justification for why this service is being requested in coded form. """
  * clinicalQuestion 0..1 string "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation."
* supportingInformation 0..1 Base "B.1.2 - Supporting information" """Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements."""
  * observation 0..* EHDSObservation "B.1.2.1 - Observation" """Clinical findings and other observations."""
  * condition 0..* EHDSCondition "B.1.2.2 - Condition" """Condition that may influence the service or result interpretation."""
  * medicationAdministration 0..* EHDSMedicationAdministration "B.1.2.3 - Medication Administration" """Medication administered before ordering the service."""
  * sexForClinicalUse 0..* CodeableConcept "B.1.2.4 - Sex for clinical use" """A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population"""
    * ^binding.description = "HL7 sex-parameter-for-clinical-use"
    * ^binding.strength = #preferred
  * vaccination 0..* EHDSImmunisation "B.1.2.5 - Vaccination" """Vaccination history of the patient. """
  * otherSupportingInformation 0..* Resource "B.1.2.6 - Other supporting information" """Any other type of relevant supporting information"""
* specimen 0..* EHDSSpecimen "B.1.3 - Specimen" """Specimen information"""
* serviceRequest 0..* EHDSServiceRequest "B.1.4 - Service request" """Specification of requested service or services"""
* resultData 1..1 Base "B.1.5 - Result data" """Laboratory report result data"""
  * narrativeReport 0..1 Narrative "B.1.5.1 - Narrative report" """Entire report (textual summary inside the laboratory result report document) as issued by the laboratory."""
  * commentsInterpretationAndRecommendations 0..* Narrative "B.1.5.2 - Comments, interpretation and recommendations" """Comments, such as a textual interpretation or advice accompanying the result report, for example."""
  * laboratoryTestResults 0..* EHDSLaboratoryObservation "B.1.5.3 - Laboratory test results" """Observation details (report could consist of multiple observations)"""
*/