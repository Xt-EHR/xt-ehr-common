Logical: EHDSDataSet
Title: "DataSet model"
Description: "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources."
Characteristics: #can-be-target

* header 1..1 Base "Common header for all patient-related data"
  * subject 1..1 EHDSPatient "Subject" """Patient/subject information"""
  * identifier 0..* Identifier "Business identifier for the object"
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
* presentedForm 0..* EHDSAttachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document"


Logical: EHDSDocument
Title: "Document model"
Parent: EHDSDataSet
Description: "EHDS refined base model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes."
Characteristics: #can-be-target

* header ^short = "Document header elements"
  * identifier 1..*
    * ^short = "Document ID"
    * ^definition = """Unique identifier of the document"""
  * documentType 1..1 CodeableConcept "Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentTitle 1..1 string "Document title" """Document title, such as Hospital Discharge Report, Laboratory Result Report, etc."""
  * documentStatus 1..1 CodeableConcept "Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
    * ^binding.description = "hl7:CompositionStatus"
    * ^binding.strength = #preferred
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
  * custodian 1..1 EHDSOrganization "Document custodian" """Organisation that is in charge of maintaining the document/report."""
  * documentFormat 0..1 CodeableConcept "Document format" """An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType."""
    * ^binding.description = "HL7 Document Format Codes"
    * ^binding.strength = #preferred
  * confidentiality 0..1 CodeableConcept "Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
    * ^binding.description = "hl7:Confidentiality"
    * ^binding.strength = #preferred
* knowledgeResources 0..* Base "Related documents and information sources"
  * externalReference 0..* RelatedArtifact "Reference to external knowledge resource" """A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."""
  * relatedTo 0..* Reference "Reference to part of the patient summary"  """Identify the entry or entries of this Patient Summary for which this additional information relates with, for example a link between a rare disease problem and guidelines for that particular rare disease."""