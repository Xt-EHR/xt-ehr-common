Logical: EHDSLaboratoryReportHeader
//Id: EHDSreportHeader
Title: "Laboratory report header (model)"
Description: """A.1 - EHDS refined base model for Report header data elements"""
Characteristics: #can-be-target

* subject 1..1 EHDSPatient "A.1.1 - Subject" """Patient/subject information"""
* healthInsuranceAndPaymentInformation 0..1 BackboneElement "A.1.4 - Health insurance and payment information" """Health insurance information (Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.)"""
  * healthInsuranceCode 0..1 Identifier "A.1.4.1 - Health insurance code" """Unique health insurance company identification code"""
  * healthInsuranceName 0..1 string "A.1.4.2 - Health insurance name" """Full, official name of the healthcare insurance provider."""
  * healthInsuranceNumber 0..1 Identifier "A.1.4.3 - Health insurance number" """Number or code under which the insured person is registered at the insurance provider."""
* intendedRecipient 0..* Reference(EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganization or EHDSHealthProfessionalRole or EHDSDevice) "A.1.5 - Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
* author 1..* EHDSHealthProfessionalRole "A.1.6 - Author" """Author by whom the document was/were authored. Multiple authors could be provided."""
* attester 0..* EHDSHealthProfessionalRole "A.1.7 - Attester" """Attester who validated the document. Mulitple attesters could be provided."""
* legalAuthenticator 0..1 EHDSHealthProfessionalRole "A.1.8 - Legal authenticator" """The person taking responsibility for the medical content of the document"""
* documentMetadata 1..1 BackboneElement "A.1.9 - Document metadata" """Data relevent to document type and its content for administrative and searching purposes."""
  * documentId 1..1 Identifier "A.1.9.1 - Document ID" """Unique identifier of the document"""
  * documentType 1..1 CodeableConcept "A.1.9.2 - Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentStatus 1..1 CodeableConcept "A.1.9.3 - Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
    * ^binding.description = "hl7:CompositionStatus"
    * ^binding.strength = #preferred
  * period 0..1 Period "A.1.9.4 - Period" """Time of service that is being documented"""
  * reportDateAndTime 1..1 dateTime "A.1.9.5 - Report date and time" """Date and time of the Hospital discharge  report creation."""
  * documentTitle 1..1 string "A.1.9.6 - Document title" """Document title, fix value "Hospital discharge report". """
  * eventType 0..* CodeableConcept "A.1.9.7 - Event type" """Clinical service type or types covered by the document (study types, modality, body part etc.)"""
    * ^binding.description = "SNOMED CT"
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
* presentedForm 0..1 EHDSAttachment "A.1.10 - Presented form" """Entire report as issued  pdf format recommended"""
* media[x] 0..* EHDSAttachment or EHDSMedia "A.1.11 - Media" """Media attachments."""
