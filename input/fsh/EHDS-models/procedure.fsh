Logical: EHDSProcedure
Parent: EHDSDataSet
Title: "Procedure model"
Description: """The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage."""
Characteristics: #can-be-target

// * identifier 0..* Identifier "Identifier for the procedure"
// * subject 1..1 EHDSPatient "On whom the procedure was performed."

* header
  * status 
    * ^short = "Status of the procedure (e.g. completed, on hold, stopped)"
    * ^definition = "Status of the procedure (e.g. completed, on hold, stopped)"
    * ^binding.description = "HL7 Event Status"
    * ^binding.strength = #preferred
  * author[x]
    * ^short = "Author responsible for the provided information."
    * ^definition = "Author responsible for the provided information."
* code 1..1 CodeableConcept "Concept code and display name identifying the type of procedure"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* procedureDate[x] 0..1 dateTime or Period "Date and time of the procedure or interval of its performance"
* performer 0..* EHDSHealthProfessional "Actors who performed the procedure (only main responsible actors expected)"
* bodySite 0..* EHDSBodyStructure "Target body site of the procedure. Laterality may be included as a qualifier of the body site."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or EHDSProcedure "The reason the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason."
  * ^binding.description = "SNOMED CT, ICD-10, Orphacode"
  * ^binding.strength = #preferred
* outcome 0..1 CodeableConcept "The immediate result of the procedure (e.g. successful, unsuccessful). This does not include assessment over a longer period of time."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* complication 0..* CodeableConcept "Any complications that occurred during the procedure, or in the immediate post-procedure period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues."
  * ^binding.description = "ICD-10, SNOMED CT"
  * ^binding.strength = #preferred
* deviceUsed 0..* EHDSDevice "Device used to perform the procedure"
* focalDevice 0..* EHDSDevice "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."
* note 0..1 string "Additional information about the procedure"
