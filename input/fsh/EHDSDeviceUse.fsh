Logical: EHDSDeviceUse
//Id: EHDSdevice
Title: "Device model"
Parent: EHDSDataSet
Description: "EHDS refined base model for Device information"
Characteristics: #can-be-target

* deviceDescription 1..1 CodeableConcept "Describes the type of device. Coded values are preferable, but text would be accepted"
  * ^binding.description = "1.3.6.1.4.1.12559.11.10.1.3.1.42.8 eHDSIMedicalDevice"
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, ISO IPS."

* deviceID 0..1 Identifier "Normalised identifier of the device instance such as UDI according to REGULATION (EU) 2017/745"
  * ^requirements = "eHN PS Guideline, ISO IPS."

* startDate 0..1 dateTime "Date when the device was implantable to the patient or the external device was first in use."
  * ^requirements = "eHN PS Guideline, ISO IPS."

* endDate 0..1 dateTime "Date when the device was explanted from the patient or the external device was no longer in use."
  * ^requirements = "eHN PS Guideline, ISO IPS."
