Logical: EEHRxFServiceRequest
//Id: EEHRxFserviceRequest
Title: "Service request"
Description: """C.8 - EEHRxF refined base model for Specification of requested service or services"""
Characteristics: #can-be-target

* serviceCode 1..1 CodeableConcept "C.8.1 - Service code" """A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested."""
  * ^comment = "LOINC, NPU"
* reasonCode 0..* CodeableConcept "C.8.2 - Reason code" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation."""
  * ^comment = "ICD-10 (ICD-11 when available)SNOMED CTOrphacode"
* quantity 0..1 Quantity "C.8.3 - Quantity" """Amount of requested services of the same type"""
* anatomicLocation 0..* CodeableConcept "C.8.4 - Anatomic location" """Anatomic location and laterality where the procedure should be performed. This is the target site."""
  * ^comment = "SNOMED CT"
* reasonReference[x] 0..* Reference (EEHRxFObservation or EEHRxFCondition or EEHRxFMedication or DocumentReference or DiagnosticReport) "C.8.5 - Reason reference" """Indicates another resource that provides a justification for why this service is being requested."""
* priority 0..1 CodeableConcept "C.8.6 - Priority" """Indicates how quickly the ServiceRequest should be addressed with respect to other requests."""
  * ^comment = "HL7 Request priority"
* supportingInformation[x] 0..* Reference (EEHRxFObservation or EEHRxFCondition or EEHRxFMedication) "C.8.7 - Supporting information" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation."""
* specimen 0..* Reference (EEHRxFSpecimen) "C.8.8 - Specimen" """Specimens to be used by the laboratory procedure"""