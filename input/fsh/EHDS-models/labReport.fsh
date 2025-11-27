/* Logical: EHDSLaboratoryReport
//Id: EHDSlaboratoryReport
Title: "Laboratory report model"
Description: """A - EHDS refined base model for Laboratory result report"""
Characteristics: #can-be-target

* laboratoryReportHeader 1..1 EHDSLaboratoryReportHeader "A.1 - Laboratory report header" """Report header data elements"""
* laboratoryReportStructuredBody 0..1 EHDSLaboratoryReportBody "A.2 - Laboratory Report structured body" """Report body data elements"""
* presentedForm 0..* EHDSAttachment "A.3 - Attachment" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* laboratoryReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""
 */

/* New lab report model - I do not like this approach, but have to harmonize with others :-) */
Logical: EHDSLaboratoryReport
Title: "Laboratory report model"
Parent: EHDSDocument
Description: """EHDS refined base model for Laboratory result report"""
Characteristics: #can-be-target

* header 1..1
* header ^short = "Laboratory Report header"
  * authorship ^short = "Authorship of the laboratory report"
    * author[x] ^definition = """Author(s) by whom the laboratory result report was authored. Multiple authors could be provided."""
    * author[x] ^comment = """Author of the laboratory report could be either a health professional who authored the report, laboratory itself or laboratory information system. Author information is the only mandatory element of the laboratory report header. As such, each laboratory shall be able to provide at least the author information."""
  * attestation
    * attester[x] ^definition = """Attester who validated laboratory result report. Multiple attesters could be provided."""
    * attester[x] ^comment = """Attestation (validation) of the laboratory report content is the usual step before legal authentication. Attestation could be provided by e.g. the laboratory specialist or the laboratory information system based on internal rules of the laboratory."""
  * legalAuthentication
    * legalAuthenticator[x] ^definition = """The person or organization taking responsibility for the medical content of the document"""
    * legalAuthenticator[x] ^comment = """Legal authentication of the laboratory report is the usual step after attestation. Legal authentication could be provided by e.g. the head of the laboratory or the laboratory organization itself."""
* healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information"
* intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
* header.eventType ^binding.description = "SNOMED CT"
* header.eventType ^binding.strength = #preferred
* body 0..1 Base "Laboratory Report structured body"
  * orderInformation 0..* Base "Order Information (Laboratory Result Report could respond to multiple test orders)"
    * orderId 1..* Identifier "An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."
    * orderDateAndTime 0..1 dateTime "Date and time of the order placement."
    * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself."
    * orderReasonText 0..* string "An explanation or justification for why this service is being requested in textual form."
    * orderReason[x] 0..* CodeableConcept or EHDSCondition or  EHDSObservation "An explanation or justification for why this service is being requested in coded form."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * clinicalQuestion 0..1 string "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation."
  * supportingInformation 0..1 Base "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements."
    * observation 0..* EHDSObservation "Clinical findings and other observations."
    * condition 0..* EHDSCondition "Condition that may influence the service or result interpretation."
    * medicationAdministration 0..* EHDSMedicationAdministration "Medication administered before ordering the service."
    * sexForClinicalUse 0..1 CodeableConcept "A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population"
      * ^binding.description = "HL7 sex-parameter-for-clinical-use"
      * ^binding.strength = #preferred
    * vaccination 0..* EHDSImmunisation "Vaccination history of the patient."
    * otherSupportingInformation 0..* Resource "Any other type of relevant supporting information"
  * specimen 0..* EHDSSpecimen "Specimen information"
  * serviceRequest 0..* EHDSServiceRequest "Specification of requested service or services"
  * resultData 1..1 Base "Laboratory report result data"
  //* narrativeReport 0..1 Narrative "Entire report (textual summary inside the laboratory result report document) as issued by the laboratory."
    * commentsInterpretationAndRecommendations 0..* Narrative "Narrative Comments, such as a textual interpretation or advice accompanying the result report, for example."
    * laboratoryTestResults 0..* EHDSLaboratoryObservation "Observation details (report could consist of multiple observations)"
* attachments[x] 0..* EHDSAttachment or EHDSMedia "Report attachments data elements"

