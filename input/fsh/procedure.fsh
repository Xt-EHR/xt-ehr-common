Logical: EHDSProcedure
Parent: EHDSDataSet
Title: "Procedure model"
Description: """EHDS refined base model for an action that is or was performed on or for a patient"""
Characteristics: #can-be-target

// * identifier 0..* Identifier "Identifier for the procedure"
// * subject 1..1 EHDSPatient "On whom the procedure was performed."

* code 0..1 CodeableConcept "Code identifying the procedure"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* date[x] 0..1 dateTime or Period "Date and time of the procedure or interval of its performance"
* performer 0..* EHDSHealthProfessional "An actor who performed the procedure"
* bodySite 0..* EHDSBodyStructure "Procedure target body site. Details of where the procedure was performed. Laterality may be included as qualifier of the body site."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or EHDSProcedure "The reason why the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason."
  * ^binding.description = "SNOMED CT, ICD-10, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* outcome 0..1 CodeableConcept "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* complication 0..* CodeableConcept "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* deviceUsed 0..* EHDSDevice "Device used to perform the procedure"
* focalDevice 0..* EHDSDevice "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."
* note 0..1 string "Additional information about the procedure"
