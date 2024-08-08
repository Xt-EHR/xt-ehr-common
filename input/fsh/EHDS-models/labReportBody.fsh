Logical: EHDSLaboratoryReportBody
//Id: EHDSreportBody
Title: "Laboratory report body (model)"
Description: """B.1 - EEHRxF refined base model for Laboratory result report body"""
Characteristics: #can-be-target

* orderInformation 0..* BackboneElement "B.1.1 - Order information" """Order Information (Laboratory Result Report could respond to multiple test orders)"""
  * orderId 1..* Identifier "B.1.1.1 - Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""
  * orderDateAndTime 0..1 dateTime "B.1.1.2 - Order date and time" """Date and time of the order placement."""
  * orderPlacer 0..1 EHDSHealthProfessionalRole "B.1.1.3 - Order placer" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case when order placer is not a health professional, e.g. by patients themselves where applicable, appropriate personal identifier should be used. """
  * serviceRequest 0..* EHDSServiceRequest "B.1.1.4 - Service request" """Specification of requested service or services"""
* specimen 0..* EHDSSpecimen "B.1.2 - Specimen" """Specimen information"""
* resultData 1..1 BackboneElement "B.1.3 - Result data" """Laboratory report result data"""
  * narrativeReport 0..1 Narrative "B.1.3.1 - Narrative report" """Entire report (textual summary inside the laboratory result report document) as issued by the laboratory."""
  * commentsInterpretationAndRecommendations 0..* Narrative "B.1.3.2 - Comments, interpretation and recommendations" """Comments, such as a textual interpretation or advice accompanying the result report, for example."""
  * laboratoryTestResults 0..* EHDSLaboratoryObservation "B.1.3.3 - Laboratory test results" """Observation details (report could consist of multiple observations)"""
