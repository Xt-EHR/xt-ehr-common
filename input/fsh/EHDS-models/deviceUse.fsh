Logical: EHDSDeviceUse
//Id: EHDSdeviceUse
Title: "Device use model"
Description: """EHDS refined base model for Device Use"""
Characteristics: #can-be-target

* identifier 0..* Identifier "An identifier for this statement."
* subject 1..1 EHDSPatient "The patient using the device."
* status 0..1 CodeableConcept "Current status of the Device Usage."
  * ^binding.description = "HL7 device-statement-status"
  * ^binding.strength = #preferred
* implantDate 0..1 dateTime "Date when procedure was performed."
* endDate 0..1 dateTime "Date when the device was explanted from the patient or the external device was no longer in use; likewise when the device is planned to be explanted."
* device 1..1 EHDSDevice "The details of the device used."
* bodySite 0..1 CodeableConcept "Anatomical location of the device. May include laterality."
* note 0..* string "Note about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement."
* recorded 0..1 dateTime "Date and time at which the statement was made/recorded."
* source[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Who reported the device was being used by the patient."
* reason[x] 0..* EHDSCondition or EHDSObservation or EHDSProcedure "Reason or justification for the use of the device."

