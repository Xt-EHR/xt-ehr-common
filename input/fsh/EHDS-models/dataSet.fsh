Logical: EHDSDataSet
Title: "DataSet model"
Description: "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources."
Characteristics: #can-be-target

* header 1..1 Base "Common header for all patient-related data"
  * subject 1..1 EHDSPatient "Patient/subject information"
  * identifier 0..* Identifier "Business identifier for the object"
  * authorship 1..* Base "Authorship" """Resource authoring details"""
    * author[x] 1..1 EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Author" """Author(s) by whom the resource was/were authored. Multiple authors could be provided."""
    * datetime 1..1 dateTime "Date and time of authoring/issuing" """Date and time of the issuing the document/resource by its author."""
  * lastUpdate 0..1 dateTime "Date and time of the last update to the resource" """Date and time of the last update to the document/information"""
  * status 1..1 CodeableConcept "Status of the resource or document"
  * statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of the resource."
  * language 0..1 CodeableConcept "Language" """Language in which the resource is written. Language is expressed by the IETF language tag."""
    * ^binding.description = "BCP 47"
    * ^binding.strength = #preferred
  * version 0..1 string "Version" """Business version of the resource."""


