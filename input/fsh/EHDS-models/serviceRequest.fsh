Logical: EHDSServiceRequest
Parent: EHDSDataSet
Title: "Service request model"
Description: """The model covers details about a requested service or services. One order may include several requests."""

* description 0..1 string "Textual description of the requested service"
* code 0..1 CodeableConcept "A code and name that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested."
  * ^binding.description = "LOINC, NPU, SNOMED CT"
  * ^binding.strength = #preferred
* quantity 0..1 Quantity "Amount of requested services of the same type"
* bodySite 0..* EHDSBodyStructure "Anatomic location and laterality where the procedure should be performed. This is the target site."
* reason[x] 0..* EHDSObservation or EHDSCondition or EHDSMedication or string "Reason why this service is being requested."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* priority 0..1 CodeableConcept "Indicates how quickly the request should be addressed with respect to other requests."
  * ^binding.description = "HL7 Request Priority"
  * ^binding.strength = #preferred
* supportingInformation[x] 0..* EHDSObservation or EHDSCondition or EHDSProcedure or EHDSMedicationAdministration "Health conditions relevant for the results interpretation, e.g. fasting status, sex for clinical use, etc."
* specimen 0..* EHDSSpecimen "Specimens to be used by the laboratory procedure"
* encounter 0..1 EHDSEncounter "The encounter that provides additional information about the healthcare context in which this request is made."
* occurrence[x] 0..1 dateTime or Period "Expected time of the service"
* patientInstructions 0..1 string "Patient or consumer-oriented instructions"

