/*
Logical: EHDSPatientSummaryHeader
//Id: EHDSreportHeader
Title: "Patient summary header model"
Description: """A.1 - EHDS refined base model for Patient Summary header data elements"""
Characteristics: #can-be-target

* subject 1..1 EHDSPatient "A.1.1 - Subject" """Patient/subject information"""
* relatedPerson 0..* EHDSRelatedPerson "A.1.2 - Related person" """Patient/subject guardian and related person information"""
* preferredHealthProfessional[x] 0..* EHDSHealthProfessional or EHDSOrganization "A.1.3 - Preferred Health Professional" """Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."""
* authorship 1..* Base "A.1.6 - Authorship" """Information about author or authors of the document"""
  * author 1..1 EHDSHealthProfessional "A.1.6.1 - Author" """Author by whom the document was/were authored. Multiple authors could be provided."""
  * datetime 1..1 dateTime "A.1.6.2 - DateTime" """Date and time of the last modification of the document by its Author."""
* documentMetadata 1..1 Base "A.1.9 - Document metadata" """Data relevant to document type and its content for administrative and searching purposes."""
  * documentId 1..1 Identifier "A.1.9.1 - Document ID" """Unique identifier of the document"""
  * documentType 1..1 CodeableConcept "A.1.9.2 - Document type" """Identifies the type of document at hand, e.g. Discharge report."""
    * ^binding.description = "LOINC"
    * ^binding.strength = #preferred
  * documentStatus 1..1 CodeableConcept "A.1.9.3 - Document status" """The status of the document/report. E.g., preliminary, final."""
    * ^binding.description = "hl7:CompositionStatus"
    * ^binding.strength = #preferred
  * period 0..1 Period "A.1.9.4 - Period" """Documented period service. Typically used for searching purposes."""
  * reportDateAndTime 1..1 dateTime "A.1.9.5 - Report date and time" """Date and time of the report creation."""
  * documentTitle 1..1 string "A.1.9.6 - Document title" """Document title, such as "Discharge report", "Laboratory Result Report" etc.. """
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
  * dateOfLastUpdate 0..1 dateTime "A.1.9.16 - Date of last update" """Date on which document or document part was updated (date of most recent version)"""
  * natureOfTheDocument 1..1 Base "A.1.9.17 - Nature of the document" """Defines the context in which the document was generated. Distinguishes between four methodological approaches for generating the document:1) Created entirely by a HCP2) Manually created by HCP(s) and collected by machine(s)3) Created by machine(s) and checked by HCP(s)4) Created and collected by machine(s)"""
* KnowledgeResources 0..* Base "A.1.10 - Additional information / Knowledge resources" """To provide links between specified data elements and external knowledge resources"""
  * externalReference 0..* uri "A.1.10.1 - External reference" """A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."""
  * relatedWith 0..* Reference (EHDSCondition or EHDSProcedure or EHDSObservation) "A.1.10.2 - Related with" """Identify the entry or entries of this document or document part for which this additional information relates with, for example a link between a rare disease problem and guidelines for that particular rare disease (this section)."""
*/