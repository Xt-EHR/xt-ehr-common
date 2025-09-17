Logical: EHDSDocument
Title: "Document model"
Parent: EHDSDataSet
Description: "EHDS refined base model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes."
Characteristics: #can-be-target

* header ^short = "Document header elements"
  * identifier 1..*
    * ^short = "Document ID"
    * ^definition = """Unique identifier of the document"""
  * documentType 1..1 CodeableConcept "Document type" """Identifies the type of document at hand, e.g. Discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentTitle 1..1 string "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Examples: "Laboratory Result Report", "Patient Summary of Jane Green 10.12.2024"
  * period 0..1 Period "Period" """Time of service that is being documented"""
  //* reportDateTime 1..1 dateTime "Report date and time" """Date and time of the report creation."""
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
  * custodian 0..1 EHDSOrganisation "Document custodian" """Organisation that is in charge of maintaining the document/report."""
  * confidentiality 0..1 CodeableConcept "Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
    * ^binding.description = "hl7:Confidentiality"
    * ^binding.strength = #preferred
* presentedForm 0..* EHDSAttachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document"
//* knowledgeResources 0..* Base "Related documents and information sources"
//  * externalReference 0..* RelatedArtifact "..."
//  * relatedTo 0..* Reference "..."