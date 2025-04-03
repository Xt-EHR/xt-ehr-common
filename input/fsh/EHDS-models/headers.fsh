Logical: EHDSCommonHeader
Title: "Resource header model"
Description: "Common header elements for all documents and their independently functioning parts, e.g FHIR resources."
Characteristics: #can-be-target

* subject 1..1 EHDSPatient "Subject" """Patient/subject information"""
* authorship 1..* Base "Authorship" """Resource authoring details"""
  * author[x] 1..1 EHDSHealthProfessional or EHDSOrganization or EHDSDevice "Author" """Author(s) by whom the resource was/were authored. Multiple authors could be provided."""
  * datetime 1..1 dateTime "Date and time of authoring/issuing" """Date and time of the issuing the document/resource by its author."""
* lastUpdate 0..1 dateTime "Date and time of the last update to the resource" """Date and time of the last update to the document/information"""
* status 1..1 CodeableConcept "Status of the resource" """Status of the resource"""
* statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of the resource."
* language 0..1 CodeableConcept "Language" """Language in which the resource is written. Language is expressed by the IETF language tag."""
  * ^binding.description = "BCP 47"
  * ^binding.strength = #preferred
* version 0..1 string "Version" """Business version of the resource."""


Logical: EHDSDocumentHeader
Title: "Document header model"
Parent: EHDSCommonHeader
Description: "EHDS refined base model for document header data elements, including the common header for all resources. Data relevant to document type and its content for administrative and searching purposes."
Characteristics: #can-be-target

* documentId 1..* Identifier "Document ID" """Unique identifier of the document"""
* documentType 1..1 CodeableConcept "Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
  * ^binding.description = "LOINC"
  * ^binding.strength = #preferred
* documentTitle 1..1 string "Document title" """Document title, such as Hospital Discharge Report, Laboratory Result Report, etc."""
* documentStatus 1..1 CodeableConcept "Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
  * ^binding.description = "hl7:CompositionStatus"
  * ^binding.strength = #preferred
* period 0..1 Period "Period" """Time of service that is being documented"""
* reportDateTime 1..1 dateTime "Report date and time" """Date and time of the report creation."""
* attestation 0..* Base "Attestation" """Document attestation details"""
  * attester 1..1 EHDSHealthProfessional "Attester" """Attester who validated the document. Mulitple attesters could be provided."""
  * datetime 1..1 dateTime "DateTime" """Date and time of the approval of the document by Attester."""
* legalAuthentication 0..1 Base "Legal authentication" """Document legal authentication"""
  * legalAuthenticator 1..1 EHDSHealthProfessional "Legal authenticator" """The person taking responsibility for the medical content of the document"""
  * datetime 1..1 dateTime "DateTime" """Date and time when the document was authorized."""
* eventType 0..* CodeableConcept "Event type" """Categorization of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement betwen data sharing parties. This meta-data element serves primarily for searching and filtering purpuses."""
  * ^binding.description = "LOINC, SNOMED CT, dicom-cid-33-Modality"
  * ^binding.strength = #preferred
* authorSpecialty 0..* CodeableConcept "Specialty" """Additional details about where the content was created (e.g. clinical specialty)"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* custodian 1..1 EHDSOrganization "Document custodian" """Organisation that is in charge of maintaining the document/report."""
* documentFormat 0..1 CodeableConcept "Document format" """An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType."""
  * ^binding.description = "HL7 Document Format Codes"
  * ^binding.strength = #preferred
* confidentiality 0..1 CodeableConcept "Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
  * ^binding.description = "hl7:Confidentiality"
  * ^binding.strength = #preferred
* knowledgeResources 0..* Base "Related documents and information sources"
  * externalReference 0..* RelatedArtifact "..."
  * relatedTo 0..* Reference "..."
//* comparableStudies


// Not used
Logical: EHDSReportHeader
Title: "Report header model"
Description: "EHDS refined base model for Report header data elements. Common for hospital discharge, laboratory and medical imaging reports."
Characteristics: #can-be-target

* subject 1..1 EHDSPatient "A.1.1 - Subject" """Patient/subject information"""
* healthInsuranceAndPaymentInformation 0..1 Base "A.1.4 - Health insurance and payment information" """Health insurance information (Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.)"""
  * healthInsuranceCode 0..1 Identifier "A.1.4.1 - Health insurance code" """Unique health insurance company identification code"""
  * healthInsuranceName 0..1 string "A.1.4.2 - Health insurance name" """Full, official name of the healthcare insurance provider."""
  * healthInsuranceNumber 0..1 Identifier "A.1.4.3 - Health insurance number" """Number or code under which the insured person is registered at the insurance provider."""
* intendedRecipient[x] 0..* EHDSHealthProfessional or EHDSOrganization or EHDSPatient or EHDSRelatedPerson "A.1.5 - Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
* authorship 1..* Base "A.1.6 - Authorship" """Document authoring details"""
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
  * documentType 1..1 CodeableConcept "A.1.9.2 - Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentStatus 1..1 CodeableConcept "A.1.9.3 - Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
    * ^binding.description = "hl7:CompositionStatus"
    * ^binding.strength = #preferred
  * period 0..1 Period "A.1.9.4 - Period" """Time of service that is being documented"""
  * reportDateAndTime 1..1 dateTime "A.1.9.5 - Report date and time" """Date and time of the report creation."""
  * documentTitle 1..1 string "A.1.9.6 - Document title" """Document title, such as Hospital Discharge Report, Laboratory Result Report, etc."""
  * eventType 0..* CodeableConcept ".1.9.7 - Event type" """Categorization of an ""event"" covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of event types depends on the use case and agreement betwen data sharing parties. This meta-data element serves primarily for searching and filtering purpuses."""
    * ^binding.description = "LOINC, SNOMED CT, dicom-cid-33-Modality"
    * ^binding.strength = #preferred
  * specialty 0..* CodeableConcept ".1.9.8 - Specialty" """Additional details about where the content was created (e.g. clinical specialty)"""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * reportCustodian 1..1 EHDSOrganization "A.1.9.9 - Report custodian" """Organisation that is in charge of maintaining the report [this element will include organisation ID, name, address etc., as other elements describing organisations]."""
  * documentFormat 0..1 CodeableConcept "1.9.10 - Document format" """An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType."""
    * ^binding.description = "HL7 Document Format Codes"
    * ^binding.strength = #preferred
  * confidentiality 0..1 CodeableConcept ".1.9.11 - Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
    * ^binding.description = "hl7:Confidentiality"
    * ^binding.strength = #preferred
  * language 0..1 CodeableConcept ".1.9.12 - Language" """Language in which the document is written. Language is expressed by the ISO language code."""
    * ^binding.description = "BCP 47"
    * ^binding.strength = #preferred
  * version 0..1 string "A.1.9.13 - Version" """Version of the document"""
  * presentedForm 0..1 Attachment "A.1.10 - Presented form" """Entire report as issued pdf format recommended"""
  * media 0..* Attachment "A.1.11 - Media" """Media attachments."""
