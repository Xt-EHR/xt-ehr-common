Logical: EHDSDeviceUse
//Id: EHDSdeviceUse
Title: "Device use model"
Description: """C.25 - EHDS refined base model for Device Use"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.25.1 - Identifier" """An identifier for this statement."""
* status 0..1 CodeableConcept "C.25.2 - Status" """Current status of the Device Usage."""
  * ^binding.description = "HL7 device-statement-status"
  * ^binding.strength = #preferred
* implantDate 0..1 dateTime "C.25.3 - Implant date" """Date when procedure was performed."""
* endDate 0..1 dateTime "C.25.4 - End date" """Date when the device was explanted from the patient or the external device was no longer in use; likewise when the device is planned to be explanted."""
* device 1..1 Reference(EHDSDevice) "C.25.5 - Device" """The details of the device used."""
* subject 1..1 Reference(EHDSPatient) "C.25.6 - Subject" """The patient using the device."""
* bodySite 0..1 CodeableConcept "C.25.7 - Body site" """Anatomical location of the device. May include laterality."""
* note 0..* Narrative "C.25.8 - Note" """Details about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement."""
* recorded 0..1 dateTime "C.25.9 - Recorded" """Date and time at which the statement was made/recorded."""
* source 0..1 Reference(EHDSPatient or  EHDSHealthProfessional or EHDSRelatedPerson) "C.25.10 - Source" """Who reported the device was being used by the patient."""

