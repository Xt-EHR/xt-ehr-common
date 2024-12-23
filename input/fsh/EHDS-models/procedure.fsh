Logical: EHDSProcedure
//Id: EHDSprocedure
Title: "Procedure (model)"
Description: """C.16 - EHDS refined base model for An action that is or was performed on or for a patient"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.16.1 - Identifier" """Procedure identifier"""
* description 0..1 Narrative "C.16.2 - Description" """Procedure specification in narrative form"""
* code 0..1 CodeableConcept "C.16.3 - Code" """Code identifying the procedure"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* date[x] 0..1 dateTime or Period "C.16.4 - Date" """Date and time of the procedure or interval of its performance"""
* performer 0..* Reference(EHDSHealthProfessional) "C.16.5 - Performer" """An actor who or what performed the procedure"""
* anatomicLocation 0..* CodeableConcept "C.16.6 - Anatomic location" """Anatomic location and laterality where the procedure was performed. This is the target site."""
  * ^binding.description = "SNOMED CT, ICD-O-3"
  * ^binding.strength = #preferred
* reason 0..* Reference(EHDSCondition or EHDSObservation or EHDSProcedure) "C.16.7 - Reason" """The reason why the procedure was performed."""
* outcome 0..1 CodeableConcept "C.16.8 - Outcome" """The outcome of the procedure - did it resolve the reasons for the procedure being performed?"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* complication 0..* CodeableConcept "C.16.9 - Complication" """Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues."""
  * ^binding.description = "ICD-10*, SNOMED CT, Orphacode if rare disease is diagnosed"
  * ^binding.strength = #preferred
* deviceUsed 0..* EHDSDevice "C.16.10 - Device used" """Device used to perform the procedure"""
* focalDevice 0..* Reference(EHDSDevice) "C.16.11 - Focal device" """Device or devices that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."""
* location 0..* EHDSLocation "C.16.12 - Location" """Location where the procedure had been performed"""
* note 0..1 Narrative "C.16.13 - Note" """Additional information about the procedure"""
* subject 1..1 Reference (EHDSPatient or EHDSLocation or EHDSDevice or EHDSOrganization or EHDSHealthProfessional or EHDSGroup) "C.16.14 - Patient" """On whom or on what the procedure was performed. This is usually an individual human, but can also be performed on animals, groups of humans or animals, organizations or practitioners (for licensing), locations or devices (for safety inspections or regulatory authorizations). If the actual focus of the procedure is different from the subject, the focus element specifies the actual focus of the procedure."""