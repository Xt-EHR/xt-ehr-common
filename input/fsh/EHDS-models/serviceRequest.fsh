Logical: EHDSServiceRequest
Parent: EHDSDataSet
Title: "Service request model"
Description: """EHDS refined base model for Specification of requested service or services"""
Characteristics: #can-be-target

// this is giving an error in QA, but is needed to derive from EHDSDataSet
//* header.subject ^short = "Individual or Entity the service is ordered for"
//* header.subject ^type.profile[+] = Canonical(EHDSPatient)
//* header.subject ^type.profile[+] = Canonical(EHDSLocation)
//* header.subject ^type.profile[+] = Canonical(EHDSDevice)
// * subject[x] 1..1 EHDSPatient or EHDSLocation or EHDSDevice "Individual or Entity the service is ordered for"
* serviceText 0..1 string "Service text" """Textual description of the requested service"""
* serviceCode 0..1 CodeableConcept "Service code" """A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested."""
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
* reasonCode 0..* CodeableConcept "Reason code" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation."""
  * ^binding.description = "ICD-10 (ICD-11 when available), SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* quantity 0..1 Quantity "Quantity" """Amount of requested services of the same type"""
* anatomicLocation 0..* EHDSBodyStructure "Anatomic location" """Anatomic location and laterality where the procedure should be performed. This is the target site."""
* reasonReference[x] 0..* EHDSObservation or EHDSCondition or EHDSMedication "Reason reference" """Indicates another resource that provides a justification for why this service is being requested."""
* priority 0..1 CodeableConcept "Priority" """Indicates how quickly the ServiceRequest should be addressed with respect to other requests."""
  * ^binding.description = "HL7 Request priority"
  * ^binding.strength = #preferred
* supportingInformation[x] 0..* EHDSObservation or EHDSCondition or EHDSProcedure or EHDSMedicationAdministration "Supporting information" """Health conditions relevant for the results interpretation, e.g. fasting status, sex for clinical use, etc."""
* specimen 0..* EHDSSpecimen "Specimen" """Specimens to be used by the laboratory procedure"""
* encounter 0..1 EHDSEncounter "Encounter" """An encounter that provides additional information about the healthcare context in which this request is made."""
* occurrence[x] 0..1 dateTime or Period "Occurrence" """When service should occur"""
* patientInstructions 0..1 string "Patient instructions" """Patient or consumer-oriented instructions"""
* coverage 0..* EHDSCoverage "Coverage" """Insurance or medical plan or a payment agreement."""

//Removed references to FHIR resources: DiagnosticReport, DocumentReference, Resource. Not sure if they should be replaced with something.
//Changed data type for anatomicLocation to EHDSBodyStructure
