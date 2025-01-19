Logical: EHDSServiceRequest
//Id: EHDSserviceRequest
Title: "Service request model"
Description: """C.8 - EHDS refined base model for Specification of requested service or services"""
Characteristics: #can-be-target

* serviceText 0..1 string "C.8.1 - Service text" """Textual description of the requested service"""
* serviceCode 0..1 CodeableConcept "C.8.2 - Service code" """A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested."""
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
* reasonCode 0..* CodeableConcept "C.8.3 - Reason code" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation."""
  * ^binding.description = "ICD-10 (ICD-11 when available), SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* quantity 0..1 Quantity "C.8.4 - Quantity" """Amount of requested services of the same type"""
* anatomicLocation 0..* CodeableConcept "C.8.5 - Anatomic location" """Anatomic location and laterality where the procedure should be performed. This is the target site."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* reasonReference 0..* Reference (EHDSObservation or EHDSCondition or EHDSMedication or DocumentReference or DiagnosticReport) "C.8.6 - Reason reference" """Indicates another resource that provides a justification for why this service is being requested."""
* priority 0..1 CodeableConcept "C.8.7 - Priority" """Indicates how quickly the ServiceRequest should be addressed with respect to other requests."""
  * ^binding.description = "HL7 Request priority"
  * ^binding.strength = #preferred
* supportingInformation 0..* Reference (EHDSObservation or EHDSCondition or EHDSProcedure or EHDSMedicationAdministration or Resource) "C.8.8 - Supporting information" """Health conditions relevant for the results interpretation, e.g. fasting status, sex for clinical use, etc."""
* specimen 0..* Reference (EHDSSpecimen) "C.8.9 - Specimen" """Specimens to be used by the laboratory procedure"""
* subject 1..1 Reference (EHDSPatient or EHDSGroup or EHDSLocation or EHDSDevice) "C.8.10 - Subject" """Individual or Entity the service is ordered for"""
* encounter 0..1 EHDSEncounter "C.8.11 - Encounter" """An encounter that provides additional information about the healthcare context in which this request is made."""
* occurance[x] 0..1 dateTime or Period "C.8.12 - Occurance" """When service should occur"""
* patientInstructions 0..1 string "C.8.13 - Patient instructions" """Patient or consumer-oriented instructions"""
* coverage 0..* Reference (EHDSCoverage) "C.8.14 - Coverage" """Insurance or medical plan or a payment agreement."""