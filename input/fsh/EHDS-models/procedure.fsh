Logical: EHDSProcedure
//Id: EHDSprocedure
Title: "Procedure model"
Description: """EHDS refined base model for An action that is or was performed on or for a patient"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier for the procedure"
* subject 1..1 Reference(EHDSPatient) "On whom the procedure was performed."
* description 0..1 string "Procedure specification as a text"
* code 0..1 CodeableConcept "Code identifying the procedure"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* date[x] 0..1 dateTime or Period "Date and time of the procedure or interval of its performance"
* performer 0..* Reference(EHDSHealthProfessional) "An actor who performed the procedure"
* bodySite 0..* EHDSBodyStructure "Anatomic location and laterality where the procedure was performed. This is the target site."
* reasonCode 0..* CodeableConcept "Reason code" """The coded reason why the procedure was performed. This may be a coded diagnosis, or a coded finding."""
  * ^binding.description = "SNOMED CT, ICD-10*, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* reason[x] 0..* Reference(EHDSCondition or EHDSObservation or EHDSProcedure) "The reason why the procedure was performed."
* outcome 0..1 CodeableConcept "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* complication 0..* CodeableConcept "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues."
  * ^binding.description = "ICD-10*, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* deviceUsed 0..* EHDSDevice "Device used to perform the procedure"
* focalDevice 0..* Reference(EHDSDevice) "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."
* note 0..1 string "Additional information about the procedure"
