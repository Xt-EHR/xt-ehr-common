Logical: EHDSLaboratoryReportBody
//Id: EHDSreportBody
Title: "Laboratory report body (model)"
Description: """B.1 - EEHRxF refined base model for Laboratory result report body"""
Characteristics: #can-be-target

* orderInformation 0..* BackboneElement "B.1.1 - Order information" """Order Information (Laboratory Result Report could respond to multiple test orders)"""
  * orderId 1..* Identifier "B.1.1.1 - Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""
  * orderDateAndTime 0..1 dateTime "B.1.1.2 - Order date and time" """Date and time of the order placement."""
  * orderPlacer 0..1 EHDSHealthProfessionalRole "B.1.1.3 - Order placer" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case when order placer is not a health professional, e.g. by patients themselves where applicable, appropriate personal identifier should be used. """
  * orderReasonText 0..* Narrative "B.1.1.4 - Order reason text" """An explanation or justification for why this service is being requested in textual form."""
  * orderReason 0..* Reference(Condition or  Observation) "B.1.1.5 - Order reason" """An explanation or justification for why this service is being requested in coded form. """
  * supportingInformation 0..* BackboneElement "B.1.1.6 - Supporting information" """Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements."""
    * observation 0..* EHDSObservation "B.1.1.6.1 - Observation" """Clinical findings and other observations."""
    * condition 0..* EHDSCondition "B.1.1.6.2 - Condition" """Condition that may influence the service or result interpretation."""
    * medicationAdministration 0..* EHDSMedicationAdministration "B.1.1.6.3 - Medication Administration" """Medication adninistered before ordering the service."""
  * serviceRequest 0..* EHDSServiceRequest "B.1.1.7 - Service request" """Specification of requested service or services"""
* specimen 0..* EHDSSpecimen "B.1.2 - Specimen" """Specimen information"""
* resultData 1..1 BackboneElement "B.1.3 - Result data" """Laboratory report result data"""
  * narrativeReport 0..1 Narrative "B.1.3.1 - Narrative report" """Entire report (textual summary inside the laboratory result report document) as issued by the laboratory."""
  * commentsInterpretationAndRecommendations 0..* Narrative "B.1.3.2 - Comments, interpretation and recommendations" """Comments, such as a textual interpretation or advice accompanying the result report, for example."""
  * laboratoryTestResults 0..* EHDSLaboratoryObservation "B.1.3.3 - Laboratory test results" """Observation details (report could consist of multiple observations)"""
