Logical: EHDSProcedure
Parent: EHDSDataSet
Title: "Procedure model"
Description: """C.16 - EHDS refined base model for An action that is or was performed on or for a patient"""
Characteristics: #can-be-target

//* identifier 0..* Identifier "Identifier for the procedure"
//* subject 1..1 EHDSPatient "On whom the procedure was performed."
//* description 0..1 string "Procedure specification as a text"
* procedure 0..1 CodeableConcept "Code identifying the procedure"
  * ^binding.description = "1.3.6.1.4.1.12559.11.10.1.3.1.42.10 eHDSIProcedure (SCT, used in MH@EU). NCSP+ "
  * ^binding.strength = #example

* date 0..1 dateTime "Date when the procedure was performed"
//* performer 0..* EHDSHealthProfessional "An actor who performed the procedure"
* bodySite 0..* CodeableConcept "Procedure target body site. Details of where the procedure was performed." "Procedure target body site. Details of where the procedure was performed. In some cases, it might be needed to consider the laterality as qualifier of the body site."
  * ^binding.description = "1.3.6.1.4.1.12559.11.10.1.3.1.42.65 eHDSIBodySite (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/condition-ver-status (required in HL7 FHIR)"
  * ^binding.strength = #example

* status 1..1 code "Status of the procedure" "This element shall be present when used to describe a procedure event. It shall have the value 'completed' for procedures that have been completed and 'active' for procedures that are still in progress. Procedures that were stopped prior to completion shall use the value 'aborted', and procedures that were cancelled before being started shall use the value 'cancelled'."
  * ^binding.description = "2.16.840.1.113883.3.1937.777.11.11.3 ActStatusActiveAbortedCancelledCompleted"
  * ^binding.strength = #example

* priorityCode 1..1 CodeableConcept "It indicates the priority of the procedure."
  * ^binding.description = "2.16.840.1.113883.1.11.16866 ActPriority"
  * ^binding.strength = #example

 

// * reason[x] 0..* EHDSCondition or EHDSObservation or EHDSProcedure "The reason why the procedure was performed."
// * outcome 0..1 CodeableConcept "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
//   * ^binding.description = "SNOMED CT"
//   * ^binding.strength = #preferred
// * complication 0..* CodeableConcept "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues."
//   * ^binding.description = "ICD-10*, SNOMED CT, Orphacode if rare disease is diagnosed"
//   * ^binding.strength = #preferred
// * deviceUsed 0..* EHDSDevice "Device used to perform the procedure"
// * focalDevice 0..* EHDSDevice "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."
// * location 0..* EHDSLocation "Location where the procedure was performed"
// * note 0..1 string "Additional information about the procedure"
