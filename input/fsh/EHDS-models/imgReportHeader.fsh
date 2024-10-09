Logical: EHDSImagingReportHeader
//Id: EHDSimagingReportHeader
Title: "Imging Report header (model)"
Description: """A.1 - EHDS refined base model for Imaging Report header data elements"""
Characteristics: #can-be-target

* subject 1..1 EHDSPatient "A.1.1 - Subject" """Patient/subject information"""
* healthInsuranceAndPaymentInformation 0..1 BackboneElement "A.1.4 - Health insurance and payment information" """Health insurance information (Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.)"""
  * healthInsuranceCode 0..1 Identifier "A.1.4.1 - Health insurance code" """Unique health insurance company identification code"""
  * healthInsuranceName 0..1 string "A.1.4.2 - Health insurance name" """Full, official name of the healthcare insurance provider."""
  * healthInsuranceNumber 0..1 Identifier "A.1.4.3 - Health insurance number" """Number or code under which the insured person is registered at the insurance provider."""
* intendedRecipient 0..* Reference(EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganization or EHDSHealthProfessionalRole or EHDSDevice) "A.1.5 - Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
* authorship 1..* BackboneElement "A.1.6 - Authorship" """Information about author or authors of the document"""
  * author 1..1 EHDSHealthProfessionalRole "A.1.6.1 - Author" """Author by whom the document was/were authored. Multiple authors could be provided."""
  * datetime 1..1 dateTime "A.1.6.2 - DateTime" """Date and time of the last modification of the document by its Author."""
* attestation 0..* BackboneElement "A.1.7 - Attestation" """Document attestation details"""
  * attester 1..1 EHDSHealthProfessionalRole "A.1.7.1 - Attester" """Attester who validated the document. Mulitple attesters could be provided."""
  * datetime 1..1 dateTime "A.1.7.2 - DateTime" """Date and time of the approval of the document by Attester."""
* legalAuthentication 0..1 BackboneElement "A.1.8 - Legal authentication" """Document legal authentication"""
  * legalAuthenticator 1..1 EHDSHealthProfessionalRole "A.1.8.1 - Legal authenticator" """The person taking responsibility for the medical content of the document"""
  * datetime 1..1 dateTime "A.1.8.2 - DateTime" """Date and time when the document was authorized."""
* documentMetadata 1..1 BackboneElement "A.1.9 - Document metadata" """Data relevent to document type and its content for administrative and searching purposes."""
  * documentId 1..1 Identifier "A.1.9.1 - Document ID" """Unique identifier of the document"""
  * documentType 1..1 CodeableConcept "A.1.9.2 - Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentStatus 1..1 CodeableConcept "A.1.9.3 - Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
    * ^binding.description = "hl7:CompositionStatus"
    * ^binding.strength = #preferred
  * period 0..1 Period "A.1.9.4 - Period" """Documented period service. Typically used for searching purposes."""
  * reportDateAndTime 1..1 dateTime "A.1.9.5 - Report date and time" """Date and time of the report creation."""
  * documentTitle 1..1 string "A.1.9.6 - Document title" """Document title, such as "Hospital discharge report", "Laboratory Result Report" etc.. """
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
    * ^binding.description = "ISO 639"
    * ^binding.strength = #preferred
  * version 0..1 string "A.1.9.13 - Version" """Version of the document"""
  * studyInstanceUid 0..* uri "A.1.9.14 - Study Instance UID" """Unique global identifier(s) that identifies an imaging study upon which the imaging report is based.An identifier that links an imaging report to one or more imaging studies. This element is relevant for the interactive selection of the available studies."""
    * ^binding.description = "OID"
    * ^binding.strength = #preferred
  * accessionNumber 0..1 string "A.1.9.15 - Accession number" """This is an identifier, managed by the RIS at the local level, which usually uniquely identifies an imaging procedure request, and links it to imaging study(ies) and related imaging report(s). As it is prefixed by the registration authority it is a globally unique ID, usable both nationally and cross-border."""
//* presentedForm 0..1 EHDSAttachment "A.1.10 - Presented form" """Entire report as issued  pdf format recommended"""
//* media[x] 0..* EHDSAttachment or EHDSMedia "A.1.11 - Media" """Media attachments."""
