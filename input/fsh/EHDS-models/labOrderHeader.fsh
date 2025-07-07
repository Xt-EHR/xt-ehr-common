Logical: EHDSLaboratoryOrderHeader
//Id: EHDSreportHeader
Title: "Laboratory order header model"
Description: """A.1 - EHDS refined base model for Laboratory order header data elements"""
Characteristics: #can-be-target

* subject 1..1 EHDSPatient "A.1.1 - Subject" """Patient/subject information"""
* healthInsuranceAndPaymentInformation 0..* EHDSCoverage "A.1.4 - Health insurance and payment information" """Health insurance information (Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.)"""
* intendedRecipient 0..* Reference (EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganization or EHDSDevice) "A.1.5 - Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
* authorship 1..* Base "A.1.6 - Authorship" """Information about author or authors of the document"""
  * author 1..1 EHDSHealthProfessional "A.1.6.1 - Author" """Author by whom the document was/were authored. Multiple authors could be provided."""
  * datetime 1..1 dateTime "A.1.6.2 - DateTime" """Date and time of the last modification of the document by its Author."""
* attestation 0..* Base "A.1.7 - Attestation" """Document attestation details"""
  * attester 1..1 EHDSHealthProfessional "A.1.7.1 - Attester" """Attester who validated the document. Mulitple attesters could be provided."""
  * datetime 1..1 dateTime "A.1.7.2 - DateTime" """Date and time of the approval of the document by Attester."""
* legalAuthentication 0..1 Base "A.1.8 - Legal authentication" """Document legal authentication"""
  * legalAuthenticator 1..1 EHDSHealthProfessional "A.1.8.1 - Legal authenticator" """The person taking responsibility for the medical content of the document"""
  * datetime 1..1 dateTime "A.1.8.2 - DateTime" """Date and time when the document was authorized."""
* documentMetadata 1..1 Base "A.1.9 - Document metadata" """Data relevant to document type and its content for administrative and searching purposes."""
  * documentId 1..1 Identifier "A.1.9.1 - Document ID" """Unique identifier of the document"""
  * documentType 1..1 CodeableConcept "A.1.9.2 - Document type" """Identifies the type of document at hand, e.g. Discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentStatus 1..1 CodeableConcept "A.1.9.3 - Document status" """The status of the document/report. E.g., preliminary, final."""
    * ^binding.description = "hl7:DiagnosticReportStatus"
    * ^binding.strength = #preferred
  * period 0..1 Period "A.1.9.4 - Period" """Documented period service. Typically used for searching purposes."""
  * reportDateAndTime 1..1 dateTime "A.1.9.5 - Report date and time" """Date and time of the report creation."""
  * documentTitle 1..1 string "A.1.9.6 - Document title" """Document title, such as "Discharge report", "Laboratory Result Report" etc.. """
  * eventType 0..* CodeableConcept "A.1.9.7 - Event type" """Categorization of an "event" covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of event types depends on the use case and agreement betwen data sharing parties. This meta-data element serves primarily for searching and filtering purpuses."""
    * ^binding.description = "LOINC, SNOMED CT, dicom-cid-33-Modality"
    * ^binding.strength = #preferred
  * specialty 0..* CodeableConcept "A.1.9.8 - Specialty" """Additional details about where the content was created (e.g. clinical specialty)"""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * reportCustodian 1..1 EHDSOrganization "A.1.9.9 - Report custodian" """Organisation that is in charge of maintaining the report [this element will include organisation ID, name, address etc., as other elements describing organisations]."""
  * documentFormat 0..1 CodeableConcept "A.1.9.10 - Document format" """An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType."""
    * ^binding.description = "HL7 Document Format Codes"
    * ^binding.strength = #preferred
  * confidentiality 0..1 CodeableConcept "A.1.9.11 - Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
    * ^binding.description = "hl7:Confidentiality"
    * ^binding.strength = #preferred
  * language 0..1 CodeableConcept "A.1.9.12 - Language" """Language in which the document is written. Language is expressed by the ISO language code."""
    * ^binding.description = "BCP 47"
    * ^binding.strength = #preferred
  * version 0..1 string "A.1.9.13 - Version" """Version of the document"""
/*
* knowledgeResources 0..* Base "A.1.10 - Knowledge resources" """To provide links between specified data elements and external knowledge resources"""
  * externalReference 0..* uri "A.1.10.1 - External reference" """A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."""
  * relatedWith 0..* Reference (EHDSCondition or EHDSProcedure or EHDSObservation) "A.1.10.2 - Related with" """Identify the entry or entries of this document or document part for which this additional information relates with, for example a link between a rare disease problem and guidelines for that particular rare disease (this section)."""
*/