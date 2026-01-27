Logical: EHDSDataSet
Title: "DataSet model"
Description: "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources."
Characteristics: #can-be-target

* header 1..1 Base "Common header for all patient-related data"
  * subject 1..1 EHDSPatient "Patient/subject information"
  * identifier 0..* Identifier "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries)."
  * authorship 0..* Base "Resource authoring details. Multiple authors can be provided."
    * author[x] 1..1 EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Author and/or responsible for the resource. More specific models should define this more concretely."
    * datetime 1..1 dateTime "Date and time of authoring/issuing"
  * status 1..1 CodeableConcept "Status of the resource or document"
  * language 0..1 CodeableConcept "Language in which the resource is written. Language is expressed by the IETF language tag."
    * ^binding.description = "BCP 47"
    * ^binding.strength = #preferred


