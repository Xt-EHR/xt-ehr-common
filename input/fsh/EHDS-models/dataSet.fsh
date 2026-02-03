Logical: EHDSDataSet
Title: "DataSet model"
Description: "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources."
Characteristics: #can-be-target

* header 1..1 Base "Basic metadata for this information"
  * subject 1..1 EHDSPatient "Patient/subject information"
  * identifier 0..* Identifier "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries)."
  * author[x] 0..* EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Author(s) responsible for the provided information." """Author(s) responsible for the provided information. The exact role of the responsible author varies across use cases and is specific to individual models."""
  * authoringDate 0..1 dateTime "Date and optionally time of authoring/issuing"
  * status 1..1 CodeableConcept "Status of the resource or document"
  * source 0..1 CodeableConcept "Source of information (e.g. patient, patient's proxy). Used in case the patient has authored the information or the author has submitted patient-stated information."
  * language 0..1 CodeableConcept "Language in which the resource is written. Language is expressed by the IETF language tag."
    * ^binding.description = "BCP 47"
    * ^binding.strength = #preferred
