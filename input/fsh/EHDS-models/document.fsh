Logical: EHDSDocument
Title: "Document model"
Parent: EHDSDataSet
Description: "EHDS refined base model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes."
Characteristics: #can-be-target

* header ^short = "Document header elements"
  * identifier 1..*
    * ^short = "Unique identifier of the document"
  * documentType 1..1 CodeableConcept "Type of document at hand, e.g. 60591-5 Patient summary document."
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentTitle 1..1 string "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Examples: 'Laboratory Result Report', 'Patient Summary of Jane Green 10.12.2024'"
  * period 0..1 Period "Time of service that is being documented"
  * version 0..1 string "Business version of the document."
  * attestation 0..* Base "Document attestation details"
    * attester[x] 1..1 EHDSHealthProfessional or EHDSDevice  "Attester who validated the document. Multiple attesters could be provided."
    * datetime 1..1 dateTime "Date and time of the approval of the document by Attester."
  * legalAuthentication 0..1 Base "Document legal authentication details"
    * legalAuthenticator[x] 1..1 EHDSHealthProfessional or EHDSOrganisation "The person or organization taking responsibility for the medical content of the document"
    * datetime 1..1 dateTime "Date and time when the document was authorised."
  * eventType 0..* CodeableConcept "Categorisation of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
    * ^binding.description = "LOINC, SNOMED CT, dicom-cid-33-Modality"
    * ^binding.strength = #preferred
  * serviceSpecialty 0..* CodeableConcept "Additional details about where the content was created (e.g. clinical specialty)"
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * custodian 0..1 EHDSOrganisation "Organisation that is in charge of maintaining the document/report."
  * confidentiality 0..1 CodeableConcept "Level of confidentiality of the document. Implicit value is normal."
    * ^binding.description = "hl7:Confidentiality"
    * ^binding.strength = #preferred
* presentedForm 0..* EHDSAttachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document"
//* knowledgeResources 0..* Base "Related documents and information sources"
//  * externalReference 0..* RelatedArtifact "..."
//  * relatedTo 0..* Reference "..."